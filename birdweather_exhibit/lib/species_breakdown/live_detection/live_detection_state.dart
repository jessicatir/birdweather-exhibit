import "package:birdweather_exhibit/graphql/mobileDetections.graphql.dart";
import "package:freezed_annotation/freezed_annotation.dart";

part "live_detection_state.freezed.dart";

@freezed
sealed class LiveDetectionState with _$LiveDetectionState {
  const factory LiveDetectionState.loaded({
    Query$MobileDetections$detections$nodes? detection,
    @Default(false) isLive,
  }) = LiveDetectionLoadedState;

  const LiveDetectionState._();
}
