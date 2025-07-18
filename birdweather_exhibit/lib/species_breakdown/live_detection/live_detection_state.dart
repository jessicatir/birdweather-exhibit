import "package:birdweather_exhibit/graphql/mobileDetections.graphql.dart";
import "package:freezed_annotation/freezed_annotation.dart";

part "live_detection_state.freezed.dart";

@freezed
sealed class LiveDetectionState with _$LiveDetectionState {
  const factory LiveDetectionState.loaded({
    @Default([]) List<DetectionWithStatus> recentDetections,
  }) = LiveDetectionLoadedState;

  const LiveDetectionState._();
}

// Simple class for detection with live status
class DetectionWithStatus {
  final Query$MobileDetections$detections$nodes detection;
  final bool isLive;

  const DetectionWithStatus({
    required this.detection,
    this.isLive = false,
  });

  DetectionWithStatus copyWith({
    Query$MobileDetections$detections$nodes? detection,
    bool? isLive,
  }) {
    return DetectionWithStatus(
      detection: detection ?? this.detection,
      isLive: isLive ?? this.isLive,
    );
  }
}
