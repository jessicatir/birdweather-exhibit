import "dart:async";

import "package:birdweather_exhibit/config/station_config.dart";
import "package:birdweather_exhibit/providers/station_activity_provider.dart";
import "package:birdweather_exhibit/species_information/main_species_information_screen.dart";
import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

/// Rotates the exhibit through [stations], cutting to the next one every
/// [interval].
///
/// Every station is mounted at once inside its own [ProviderScope] (which
/// overrides `stationConfigProvider`), so each station's data providers stay
/// alive and keep polling in the background. Because an [IndexedStack] keeps all
/// children mounted, swapping is an instant cut to an already-populated view —
/// no reload and no empty-card repopulate delay.
///
/// The first station (index 0) is the **default** and is always shown. Every
/// other station only joins the rotation while it has enough recent data (see
/// [minDetectionsForRotation]); if a station goes quiet it drops out and the
/// display stays on the default, rejoining automatically when its data recovers.
class StationRotator extends ConsumerStatefulWidget {
  const StationRotator({
    required this.stations,
    required this.interval,
    super.key,
  });

  final List<StationConfig> stations;
  final Duration interval;

  @override
  ConsumerState<StationRotator> createState() => _StationRotatorState();
}

class _StationRotatorState extends ConsumerState<StationRotator> {
  /// The default station is always shown and never gated out.
  static const int _defaultIndex = 0;

  int _displayedIndex = _defaultIndex;
  Timer? _rotationTimer;
  Timer? _refreshTimer;

  @override
  void initState() {
    super.initState();
    if (widget.stations.length > 1) {
      _rotationTimer = Timer.periodic(widget.interval, (_) => _advance());
      // Re-check each station's data periodically so stations drop in and out
      // of the rotation as their activity changes over the day.
      _refreshTimer = Timer.periodic(const Duration(minutes: 10), (_) {
        for (final station in widget.stations) {
          ref.invalidate(stationDetectionCountProvider(station.stationId));
        }
      });
    }
  }

  @override
  void dispose() {
    _rotationTimer?.cancel();
    _refreshTimer?.cancel();
    super.dispose();
  }

  /// Indices eligible to display: always the default, plus any non-default
  /// station whose 24h detection count meets the threshold. A station whose
  /// count is still loading (null) is treated as not-yet-eligible, so the
  /// display stays on the default until we know the station has data.
  List<int> _activeIndices() {
    final indices = <int>[_defaultIndex];
    for (var i = 0; i < widget.stations.length; i++) {
      if (i == _defaultIndex) continue;
      final count = ref
          .read(stationDetectionCountProvider(widget.stations[i].stationId))
          .valueOrNull;
      if (count != null && count >= minDetectionsForRotation) {
        indices.add(i);
      }
    }
    return indices;
  }

  void _advance() {
    if (!mounted) return;
    final active = _activeIndices();
    final pos = active.indexOf(_displayedIndex);
    // If only the default is eligible this stays on the default (single-element
    // list), i.e. swapping is effectively off.
    final nextPos = pos == -1 ? 0 : (pos + 1) % active.length;
    setState(() => _displayedIndex = active[nextPos]);
  }

  @override
  Widget build(BuildContext context) {
    // Watch each non-default station's activity so this rebuilds when a
    // station's data-sufficiency changes.
    for (var i = 0; i < widget.stations.length; i++) {
      if (i == _defaultIndex) continue;
      ref.watch(stationDetectionCountProvider(widget.stations[i].stationId));
    }

    // Defensively fall back to the default if the displayed station is no longer
    // eligible (e.g. it just went quiet).
    final active = _activeIndices();
    final shownIndex =
        active.contains(_displayedIndex) ? _displayedIndex : _defaultIndex;

    return IndexedStack(
      index: shownIndex,
      sizing: StackFit.expand,
      children: [
        for (final station in widget.stations)
          ProviderScope(
            overrides: [
              stationConfigProvider.overrideWithValue(station),
            ],
            child: const MainSpeciesInformationScreen(),
          ),
      ],
    );
  }
}
