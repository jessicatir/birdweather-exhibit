// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'top_species_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TopSpeciesState {
  Query$TopBirdWeatherSpecies? get topSpecies =>
      throw _privateConstructorUsedError;
  dynamic get isUpdating => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TopSpeciesStateCopyWith<TopSpeciesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopSpeciesStateCopyWith<$Res> {
  factory $TopSpeciesStateCopyWith(
          TopSpeciesState value, $Res Function(TopSpeciesState) then) =
      _$TopSpeciesStateCopyWithImpl<$Res, TopSpeciesState>;
  @useResult
  $Res call({Query$TopBirdWeatherSpecies? topSpecies, dynamic isUpdating});
}

/// @nodoc
class _$TopSpeciesStateCopyWithImpl<$Res, $Val extends TopSpeciesState>
    implements $TopSpeciesStateCopyWith<$Res> {
  _$TopSpeciesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topSpecies = freezed,
    Object? isUpdating = freezed,
  }) {
    return _then(_value.copyWith(
      topSpecies: freezed == topSpecies
          ? _value.topSpecies
          : topSpecies // ignore: cast_nullable_to_non_nullable
              as Query$TopBirdWeatherSpecies?,
      isUpdating: freezed == isUpdating
          ? _value.isUpdating
          : isUpdating // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TopSpeciesLoadedStateImplCopyWith<$Res>
    implements $TopSpeciesStateCopyWith<$Res> {
  factory _$$TopSpeciesLoadedStateImplCopyWith(
          _$TopSpeciesLoadedStateImpl value,
          $Res Function(_$TopSpeciesLoadedStateImpl) then) =
      __$$TopSpeciesLoadedStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Query$TopBirdWeatherSpecies? topSpecies, dynamic isUpdating});
}

/// @nodoc
class __$$TopSpeciesLoadedStateImplCopyWithImpl<$Res>
    extends _$TopSpeciesStateCopyWithImpl<$Res, _$TopSpeciesLoadedStateImpl>
    implements _$$TopSpeciesLoadedStateImplCopyWith<$Res> {
  __$$TopSpeciesLoadedStateImplCopyWithImpl(_$TopSpeciesLoadedStateImpl _value,
      $Res Function(_$TopSpeciesLoadedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topSpecies = freezed,
    Object? isUpdating = freezed,
  }) {
    return _then(_$TopSpeciesLoadedStateImpl(
      topSpecies: freezed == topSpecies
          ? _value.topSpecies
          : topSpecies // ignore: cast_nullable_to_non_nullable
              as Query$TopBirdWeatherSpecies?,
      isUpdating: freezed == isUpdating ? _value.isUpdating! : isUpdating,
    ));
  }
}

/// @nodoc

class _$TopSpeciesLoadedStateImpl extends TopSpeciesLoadedState {
  const _$TopSpeciesLoadedStateImpl({this.topSpecies, this.isUpdating = false})
      : super._();

  @override
  final Query$TopBirdWeatherSpecies? topSpecies;
  @override
  @JsonKey()
  final dynamic isUpdating;

  @override
  String toString() {
    return 'TopSpeciesState(topSpecies: $topSpecies, isUpdating: $isUpdating)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopSpeciesLoadedStateImpl &&
            (identical(other.topSpecies, topSpecies) ||
                other.topSpecies == topSpecies) &&
            const DeepCollectionEquality()
                .equals(other.isUpdating, isUpdating));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, topSpecies, const DeepCollectionEquality().hash(isUpdating));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TopSpeciesLoadedStateImplCopyWith<_$TopSpeciesLoadedStateImpl>
      get copyWith => __$$TopSpeciesLoadedStateImplCopyWithImpl<
          _$TopSpeciesLoadedStateImpl>(this, _$identity);
}

abstract class TopSpeciesLoadedState extends TopSpeciesState {
  const factory TopSpeciesLoadedState(
      {final Query$TopBirdWeatherSpecies? topSpecies,
      final dynamic isUpdating}) = _$TopSpeciesLoadedStateImpl;
  const TopSpeciesLoadedState._() : super._();

  @override
  Query$TopBirdWeatherSpecies? get topSpecies;
  @override
  dynamic get isUpdating;
  @override
  @JsonKey(ignore: true)
  _$$TopSpeciesLoadedStateImplCopyWith<_$TopSpeciesLoadedStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
