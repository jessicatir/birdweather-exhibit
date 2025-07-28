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
  List<DetectionWithStatus> get recentDetections =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<DetectionWithStatus> recentDetections)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<DetectionWithStatus> recentDetections)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<DetectionWithStatus> recentDetections)? loaded,
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
  $Res call({List<DetectionWithStatus> recentDetections});
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
    Object? recentDetections = null,
  }) {
    return _then(_value.copyWith(
      recentDetections: null == recentDetections
          ? _value.recentDetections
          : recentDetections // ignore: cast_nullable_to_non_nullable
              as List<DetectionWithStatus>,
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
  $Res call({List<DetectionWithStatus> recentDetections});
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
    Object? recentDetections = null,
  }) {
    return _then(_$LiveDetectionLoadedStateImpl(
      recentDetections: null == recentDetections
          ? _value._recentDetections
          : recentDetections // ignore: cast_nullable_to_non_nullable
              as List<DetectionWithStatus>,
    ));
  }
}

/// @nodoc

class _$LiveDetectionLoadedStateImpl extends LiveDetectionLoadedState {
  const _$LiveDetectionLoadedStateImpl(
      {final List<DetectionWithStatus> recentDetections = const []})
      : _recentDetections = recentDetections,
        super._();

  final List<DetectionWithStatus> _recentDetections;
  @override
  @JsonKey()
  List<DetectionWithStatus> get recentDetections {
    if (_recentDetections is EqualUnmodifiableListView)
      return _recentDetections;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recentDetections);
  }

  @override
  String toString() {
    return 'LiveDetectionState.loaded(recentDetections: $recentDetections)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LiveDetectionLoadedStateImpl &&
            const DeepCollectionEquality()
                .equals(other._recentDetections, _recentDetections));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_recentDetections));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LiveDetectionLoadedStateImplCopyWith<_$LiveDetectionLoadedStateImpl>
      get copyWith => __$$LiveDetectionLoadedStateImplCopyWithImpl<
          _$LiveDetectionLoadedStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<DetectionWithStatus> recentDetections)
        loaded,
  }) {
    return loaded(recentDetections);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<DetectionWithStatus> recentDetections)? loaded,
  }) {
    return loaded?.call(recentDetections);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<DetectionWithStatus> recentDetections)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(recentDetections);
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
          {final List<DetectionWithStatus> recentDetections}) =
      _$LiveDetectionLoadedStateImpl;
  const LiveDetectionLoadedState._() : super._();

  @override
  List<DetectionWithStatus> get recentDetections;
  @override
  @JsonKey(ignore: true)
  _$$LiveDetectionLoadedStateImplCopyWith<_$LiveDetectionLoadedStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
