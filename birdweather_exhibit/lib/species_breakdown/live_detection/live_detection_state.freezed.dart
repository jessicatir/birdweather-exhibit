// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'live_detection_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LiveDetectionState {
  Query$MobileDetections$detections$nodes? get detection =>
      throw _privateConstructorUsedError;
  dynamic get isLive => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Query$MobileDetections$detections$nodes? detection, dynamic isLive)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Query$MobileDetections$detections$nodes? detection, dynamic isLive)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Query$MobileDetections$detections$nodes? detection, dynamic isLive)?
        loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LiveDetectionLoadedState value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LiveDetectionLoadedState value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LiveDetectionLoadedState value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LiveDetectionStateCopyWith<LiveDetectionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LiveDetectionStateCopyWith<$Res> {
  factory $LiveDetectionStateCopyWith(
          LiveDetectionState value, $Res Function(LiveDetectionState) then) =
      _$LiveDetectionStateCopyWithImpl<$Res, LiveDetectionState>;
  @useResult
  $Res call(
      {Query$MobileDetections$detections$nodes? detection, dynamic isLive});
}

/// @nodoc
class _$LiveDetectionStateCopyWithImpl<$Res, $Val extends LiveDetectionState>
    implements $LiveDetectionStateCopyWith<$Res> {
  _$LiveDetectionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? detection = freezed,
    Object? isLive = freezed,
  }) {
    return _then(_value.copyWith(
      detection: freezed == detection
          ? _value.detection
          : detection // ignore: cast_nullable_to_non_nullable
              as Query$MobileDetections$detections$nodes?,
      isLive: freezed == isLive
          ? _value.isLive
          : isLive // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LiveDetectionLoadedStateImplCopyWith<$Res>
    implements $LiveDetectionStateCopyWith<$Res> {
  factory _$$LiveDetectionLoadedStateImplCopyWith(
          _$LiveDetectionLoadedStateImpl value,
          $Res Function(_$LiveDetectionLoadedStateImpl) then) =
      __$$LiveDetectionLoadedStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Query$MobileDetections$detections$nodes? detection, dynamic isLive});
}

/// @nodoc
class __$$LiveDetectionLoadedStateImplCopyWithImpl<$Res>
    extends _$LiveDetectionStateCopyWithImpl<$Res,
        _$LiveDetectionLoadedStateImpl>
    implements _$$LiveDetectionLoadedStateImplCopyWith<$Res> {
  __$$LiveDetectionLoadedStateImplCopyWithImpl(
      _$LiveDetectionLoadedStateImpl _value,
      $Res Function(_$LiveDetectionLoadedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? detection = freezed,
    Object? isLive = freezed,
  }) {
    return _then(_$LiveDetectionLoadedStateImpl(
      detection: freezed == detection
          ? _value.detection
          : detection // ignore: cast_nullable_to_non_nullable
              as Query$MobileDetections$detections$nodes?,
      isLive: freezed == isLive ? _value.isLive! : isLive,
    ));
  }
}

/// @nodoc

class _$LiveDetectionLoadedStateImpl extends LiveDetectionLoadedState {
  const _$LiveDetectionLoadedStateImpl({this.detection, this.isLive = false})
      : super._();

  @override
  final Query$MobileDetections$detections$nodes? detection;
  @override
  @JsonKey()
  final dynamic isLive;

  @override
  String toString() {
    return 'LiveDetectionState.loaded(detection: $detection, isLive: $isLive)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LiveDetectionLoadedStateImpl &&
            (identical(other.detection, detection) ||
                other.detection == detection) &&
            const DeepCollectionEquality().equals(other.isLive, isLive));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, detection, const DeepCollectionEquality().hash(isLive));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LiveDetectionLoadedStateImplCopyWith<_$LiveDetectionLoadedStateImpl>
      get copyWith => __$$LiveDetectionLoadedStateImplCopyWithImpl<
          _$LiveDetectionLoadedStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Query$MobileDetections$detections$nodes? detection, dynamic isLive)
        loaded,
  }) {
    return loaded(detection, isLive);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Query$MobileDetections$detections$nodes? detection, dynamic isLive)?
        loaded,
  }) {
    return loaded?.call(detection, isLive);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Query$MobileDetections$detections$nodes? detection, dynamic isLive)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(detection, isLive);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LiveDetectionLoadedState value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LiveDetectionLoadedState value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LiveDetectionLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LiveDetectionLoadedState extends LiveDetectionState {
  const factory LiveDetectionLoadedState(
      {final Query$MobileDetections$detections$nodes? detection,
      final dynamic isLive}) = _$LiveDetectionLoadedStateImpl;
  const LiveDetectionLoadedState._() : super._();

  @override
  Query$MobileDetections$detections$nodes? get detection;
  @override
  dynamic get isLive;
  @override
  @JsonKey(ignore: true)
  _$$LiveDetectionLoadedStateImplCopyWith<_$LiveDetectionLoadedStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
