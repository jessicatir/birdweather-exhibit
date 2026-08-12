import "dart:async";

import "package:birdweather_exhibit/config/station_config.dart";
import "package:birdweather_exhibit/providers/station_activity_provider.dart";
import "package:birdweather_exhibit/species_information/main_species_information_screen.dart";
import "package:birdweather_exhibit/widgets/no_detections_placeholder.dart";
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
///
/// If the **default** station itself reports nothing (at or below
/// [maxDetectionsForPlaceholder] detections in the last 24 hours — in practice
/// that means the station has stopped reporting) the exhibit stops rotating
/// altogether and shows [NoDetectionsPlaceholder] instead, since the live view
/// would otherwise be all empty cards. The stations stay mounted behind the
/// placeholder, so the exhibit returns to the live view, already populated, as
/// soon as detections resume.
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
    }
    // Re-check every station's data periodically so stations drop in and out of
    // the rotation as their activity changes over the day. This runs even with a
    // single station, because the default station's count also decides whether
    // the placeholder is shown.
    _refreshTimer = Timer.periodic(const Duration(minutes: 10), (_) {
      for (final station in widget.stations) {
        ref.invalidate(stationDetectionCountProvider(station.stationId));
      }
    });
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

  /// Whether the default station is reporting nothing, i.e. we have a count for
  /// it and that count is at or below [maxDetectionsForPlaceholder].
  ///
  /// A null value (still loading, or an error with no earlier count to fall back
  /// on) deliberately does *not* count: a failed activity check must not blank
  /// out an exhibit that is otherwise showing data.
  bool _defaultStationIsSilent() {
    final count = ref
        .read(stationDetectionCountProvider(
            widget.stations[_defaultIndex].stationId))
        .valueOrNull;
    return count != null && count <= maxDetectionsForPlaceholder;
  }

  void _advance() {
    if (!mounted) return;
    // Nothing to rotate to while the placeholder is up.
    if (_defaultStationIsSilent()) return;
    final active = _activeIndices();
    final pos = active.indexOf(_displayedIndex);
    // If only the default is eligible this stays on the default (single-element
    // list), i.e. swapping is effectively off.
    final nextPos = pos == -1 ? 0 : (pos + 1) % active.length;
    setState(() => _displayedIndex = active[nextPos]);
  }

  @override
  Widget build(BuildContext context) {
    // Watch every station's activity so this rebuilds when a station's
    // data-sufficiency changes — the non-default stations to move them in and
    // out of the rotation, the default one to raise or clear the placeholder.
    for (final station in widget.stations) {
      ref.watch(stationDetectionCountProvider(station.stationId));
    }

    // Defensively fall back to the default if the displayed station is no longer
    // eligible (e.g. it just went quiet).
    final active = _activeIndices();
    final shownIndex =
        active.contains(_displayedIndex) ? _displayedIndex : _defaultIndex;

    // The placeholder is the last child, so every station stays mounted (and
    // keeps polling) behind it while the default station is silent.
    final placeholderIndex = widget.stations.length;

    return IndexedStack(
      index: _defaultStationIsSilent() ? placeholderIndex : shownIndex,
      sizing: StackFit.expand,
      children: [
        for (final station in widget.stations)
          ProviderScope(
            overrides: [
              stationConfigProvider.overrideWithValue(station),
            ],
            child: const MainSpeciesInformationScreen(),
          ),
        const NoDetectionsPlaceholder(),
      ],
    );
  }
}
