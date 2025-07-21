// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'local_species.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LocalSpecies {
  String get id => throw _privateConstructorUsedError;
  String get commonName => throw _privateConstructorUsedError;
  String get scientificName => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<String> get sources => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocalSpeciesCopyWith<LocalSpecies> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalSpeciesCopyWith<$Res> {
  factory $LocalSpeciesCopyWith(
          LocalSpecies value, $Res Function(LocalSpecies) then) =
      _$LocalSpeciesCopyWithImpl<$Res, LocalSpecies>;
  @useResult
  $Res call(
      {String id,
      String commonName,
      String scientificName,
      String description,
      List<String> sources});
}

/// @nodoc
class _$LocalSpeciesCopyWithImpl<$Res, $Val extends LocalSpecies>
    implements $LocalSpeciesCopyWith<$Res> {
  _$LocalSpeciesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? commonName = null,
    Object? scientificName = null,
    Object? description = null,
    Object? sources = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      commonName: null == commonName
          ? _value.commonName
          : commonName // ignore: cast_nullable_to_non_nullable
              as String,
      scientificName: null == scientificName
          ? _value.scientificName
          : scientificName // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      sources: null == sources
          ? _value.sources
          : sources // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocalSpeciesImplCopyWith<$Res>
    implements $LocalSpeciesCopyWith<$Res> {
  factory _$$LocalSpeciesImplCopyWith(
          _$LocalSpeciesImpl value, $Res Function(_$LocalSpeciesImpl) then) =
      __$$LocalSpeciesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String commonName,
      String scientificName,
      String description,
      List<String> sources});
}

/// @nodoc
class __$$LocalSpeciesImplCopyWithImpl<$Res>
    extends _$LocalSpeciesCopyWithImpl<$Res, _$LocalSpeciesImpl>
    implements _$$LocalSpeciesImplCopyWith<$Res> {
  __$$LocalSpeciesImplCopyWithImpl(
      _$LocalSpeciesImpl _value, $Res Function(_$LocalSpeciesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? commonName = null,
    Object? scientificName = null,
    Object? description = null,
    Object? sources = null,
  }) {
    return _then(_$LocalSpeciesImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      commonName: null == commonName
          ? _value.commonName
          : commonName // ignore: cast_nullable_to_non_nullable
              as String,
      scientificName: null == scientificName
          ? _value.scientificName
          : scientificName // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      sources: null == sources
          ? _value._sources
          : sources // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$LocalSpeciesImpl implements _LocalSpecies {
  const _$LocalSpeciesImpl(
      {required this.id,
      required this.commonName,
      required this.scientificName,
      required this.description,
      required final List<String> sources})
      : _sources = sources;

  @override
  final String id;
  @override
  final String commonName;
  @override
  final String scientificName;
  @override
  final String description;
  final List<String> _sources;
  @override
  List<String> get sources {
    if (_sources is EqualUnmodifiableListView) return _sources;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sources);
  }

  @override
  String toString() {
    return 'LocalSpecies(id: $id, commonName: $commonName, scientificName: $scientificName, description: $description, sources: $sources)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalSpeciesImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.commonName, commonName) ||
                other.commonName == commonName) &&
            (identical(other.scientificName, scientificName) ||
                other.scientificName == scientificName) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._sources, _sources));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, commonName, scientificName,
      description, const DeepCollectionEquality().hash(_sources));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalSpeciesImplCopyWith<_$LocalSpeciesImpl> get copyWith =>
      __$$LocalSpeciesImplCopyWithImpl<_$LocalSpeciesImpl>(this, _$identity);
}

abstract class _LocalSpecies implements LocalSpecies {
  const factory _LocalSpecies(
      {required final String id,
      required final String commonName,
      required final String scientificName,
      required final String description,
      required final List<String> sources}) = _$LocalSpeciesImpl;

  @override
  String get id;
  @override
  String get commonName;
  @override
  String get scientificName;
  @override
  String get description;
  @override
  List<String> get sources;
  @override
  @JsonKey(ignore: true)
  _$$LocalSpeciesImplCopyWith<_$LocalSpeciesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LocalSpeciesMetadata {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get region => throw _privateConstructorUsedError;
  LocalSpeciesLocation get centerLocation => throw _privateConstructorUsedError;
  int get totalSpecies => throw _privateConstructorUsedError;
  List<String> get fields => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocalSpeciesMetadataCopyWith<LocalSpeciesMetadata> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalSpeciesMetadataCopyWith<$Res> {
  factory $LocalSpeciesMetadataCopyWith(LocalSpeciesMetadata value,
          $Res Function(LocalSpeciesMetadata) then) =
      _$LocalSpeciesMetadataCopyWithImpl<$Res, LocalSpeciesMetadata>;
  @useResult
  $Res call(
      {String title,
      String description,
      String region,
      LocalSpeciesLocation centerLocation,
      int totalSpecies,
      List<String> fields});

  $LocalSpeciesLocationCopyWith<$Res> get centerLocation;
}

/// @nodoc
class _$LocalSpeciesMetadataCopyWithImpl<$Res,
        $Val extends LocalSpeciesMetadata>
    implements $LocalSpeciesMetadataCopyWith<$Res> {
  _$LocalSpeciesMetadataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? region = null,
    Object? centerLocation = null,
    Object? totalSpecies = null,
    Object? fields = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String,
      centerLocation: null == centerLocation
          ? _value.centerLocation
          : centerLocation // ignore: cast_nullable_to_non_nullable
              as LocalSpeciesLocation,
      totalSpecies: null == totalSpecies
          ? _value.totalSpecies
          : totalSpecies // ignore: cast_nullable_to_non_nullable
              as int,
      fields: null == fields
          ? _value.fields
          : fields // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocalSpeciesLocationCopyWith<$Res> get centerLocation {
    return $LocalSpeciesLocationCopyWith<$Res>(_value.centerLocation, (value) {
      return _then(_value.copyWith(centerLocation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LocalSpeciesMetadataImplCopyWith<$Res>
    implements $LocalSpeciesMetadataCopyWith<$Res> {
  factory _$$LocalSpeciesMetadataImplCopyWith(_$LocalSpeciesMetadataImpl value,
          $Res Function(_$LocalSpeciesMetadataImpl) then) =
      __$$LocalSpeciesMetadataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String description,
      String region,
      LocalSpeciesLocation centerLocation,
      int totalSpecies,
      List<String> fields});

  @override
  $LocalSpeciesLocationCopyWith<$Res> get centerLocation;
}

/// @nodoc
class __$$LocalSpeciesMetadataImplCopyWithImpl<$Res>
    extends _$LocalSpeciesMetadataCopyWithImpl<$Res, _$LocalSpeciesMetadataImpl>
    implements _$$LocalSpeciesMetadataImplCopyWith<$Res> {
  __$$LocalSpeciesMetadataImplCopyWithImpl(_$LocalSpeciesMetadataImpl _value,
      $Res Function(_$LocalSpeciesMetadataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? region = null,
    Object? centerLocation = null,
    Object? totalSpecies = null,
    Object? fields = null,
  }) {
    return _then(_$LocalSpeciesMetadataImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String,
      centerLocation: null == centerLocation
          ? _value.centerLocation
          : centerLocation // ignore: cast_nullable_to_non_nullable
              as LocalSpeciesLocation,
      totalSpecies: null == totalSpecies
          ? _value.totalSpecies
          : totalSpecies // ignore: cast_nullable_to_non_nullable
              as int,
      fields: null == fields
          ? _value._fields
          : fields // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$LocalSpeciesMetadataImpl implements _LocalSpeciesMetadata {
  const _$LocalSpeciesMetadataImpl(
      {required this.title,
      required this.description,
      required this.region,
      required this.centerLocation,
      required this.totalSpecies,
      required final List<String> fields})
      : _fields = fields;

  @override
  final String title;
  @override
  final String description;
  @override
  final String region;
  @override
  final LocalSpeciesLocation centerLocation;
  @override
  final int totalSpecies;
  final List<String> _fields;
  @override
  List<String> get fields {
    if (_fields is EqualUnmodifiableListView) return _fields;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_fields);
  }

  @override
  String toString() {
    return 'LocalSpeciesMetadata(title: $title, description: $description, region: $region, centerLocation: $centerLocation, totalSpecies: $totalSpecies, fields: $fields)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalSpeciesMetadataImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.centerLocation, centerLocation) ||
                other.centerLocation == centerLocation) &&
            (identical(other.totalSpecies, totalSpecies) ||
                other.totalSpecies == totalSpecies) &&
            const DeepCollectionEquality().equals(other._fields, _fields));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      description,
      region,
      centerLocation,
      totalSpecies,
      const DeepCollectionEquality().hash(_fields));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalSpeciesMetadataImplCopyWith<_$LocalSpeciesMetadataImpl>
      get copyWith =>
          __$$LocalSpeciesMetadataImplCopyWithImpl<_$LocalSpeciesMetadataImpl>(
              this, _$identity);
}

abstract class _LocalSpeciesMetadata implements LocalSpeciesMetadata {
  const factory _LocalSpeciesMetadata(
      {required final String title,
      required final String description,
      required final String region,
      required final LocalSpeciesLocation centerLocation,
      required final int totalSpecies,
      required final List<String> fields}) = _$LocalSpeciesMetadataImpl;

  @override
  String get title;
  @override
  String get description;
  @override
  String get region;
  @override
  LocalSpeciesLocation get centerLocation;
  @override
  int get totalSpecies;
  @override
  List<String> get fields;
  @override
  @JsonKey(ignore: true)
  _$$LocalSpeciesMetadataImplCopyWith<_$LocalSpeciesMetadataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LocalSpeciesLocation {
  String get city => throw _privateConstructorUsedError;
  LocalSpeciesCoordinates get coordinates => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocalSpeciesLocationCopyWith<LocalSpeciesLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalSpeciesLocationCopyWith<$Res> {
  factory $LocalSpeciesLocationCopyWith(LocalSpeciesLocation value,
          $Res Function(LocalSpeciesLocation) then) =
      _$LocalSpeciesLocationCopyWithImpl<$Res, LocalSpeciesLocation>;
  @useResult
  $Res call({String city, LocalSpeciesCoordinates coordinates});

  $LocalSpeciesCoordinatesCopyWith<$Res> get coordinates;
}

/// @nodoc
class _$LocalSpeciesLocationCopyWithImpl<$Res,
        $Val extends LocalSpeciesLocation>
    implements $LocalSpeciesLocationCopyWith<$Res> {
  _$LocalSpeciesLocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? city = null,
    Object? coordinates = null,
  }) {
    return _then(_value.copyWith(
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      coordinates: null == coordinates
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as LocalSpeciesCoordinates,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocalSpeciesCoordinatesCopyWith<$Res> get coordinates {
    return $LocalSpeciesCoordinatesCopyWith<$Res>(_value.coordinates, (value) {
      return _then(_value.copyWith(coordinates: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LocalSpeciesLocationImplCopyWith<$Res>
    implements $LocalSpeciesLocationCopyWith<$Res> {
  factory _$$LocalSpeciesLocationImplCopyWith(_$LocalSpeciesLocationImpl value,
          $Res Function(_$LocalSpeciesLocationImpl) then) =
      __$$LocalSpeciesLocationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String city, LocalSpeciesCoordinates coordinates});

  @override
  $LocalSpeciesCoordinatesCopyWith<$Res> get coordinates;
}

/// @nodoc
class __$$LocalSpeciesLocationImplCopyWithImpl<$Res>
    extends _$LocalSpeciesLocationCopyWithImpl<$Res, _$LocalSpeciesLocationImpl>
    implements _$$LocalSpeciesLocationImplCopyWith<$Res> {
  __$$LocalSpeciesLocationImplCopyWithImpl(_$LocalSpeciesLocationImpl _value,
      $Res Function(_$LocalSpeciesLocationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? city = null,
    Object? coordinates = null,
  }) {
    return _then(_$LocalSpeciesLocationImpl(
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      coordinates: null == coordinates
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as LocalSpeciesCoordinates,
    ));
  }
}

/// @nodoc

class _$LocalSpeciesLocationImpl implements _LocalSpeciesLocation {
  const _$LocalSpeciesLocationImpl(
      {required this.city, required this.coordinates});

  @override
  final String city;
  @override
  final LocalSpeciesCoordinates coordinates;

  @override
  String toString() {
    return 'LocalSpeciesLocation(city: $city, coordinates: $coordinates)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalSpeciesLocationImpl &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.coordinates, coordinates) ||
                other.coordinates == coordinates));
  }

  @override
  int get hashCode => Object.hash(runtimeType, city, coordinates);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalSpeciesLocationImplCopyWith<_$LocalSpeciesLocationImpl>
      get copyWith =>
          __$$LocalSpeciesLocationImplCopyWithImpl<_$LocalSpeciesLocationImpl>(
              this, _$identity);
}

abstract class _LocalSpeciesLocation implements LocalSpeciesLocation {
  const factory _LocalSpeciesLocation(
          {required final String city,
          required final LocalSpeciesCoordinates coordinates}) =
      _$LocalSpeciesLocationImpl;

  @override
  String get city;
  @override
  LocalSpeciesCoordinates get coordinates;
  @override
  @JsonKey(ignore: true)
  _$$LocalSpeciesLocationImplCopyWith<_$LocalSpeciesLocationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LocalSpeciesCoordinates {
  double get lat => throw _privateConstructorUsedError;
  double get lon => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocalSpeciesCoordinatesCopyWith<LocalSpeciesCoordinates> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalSpeciesCoordinatesCopyWith<$Res> {
  factory $LocalSpeciesCoordinatesCopyWith(LocalSpeciesCoordinates value,
          $Res Function(LocalSpeciesCoordinates) then) =
      _$LocalSpeciesCoordinatesCopyWithImpl<$Res, LocalSpeciesCoordinates>;
  @useResult
  $Res call({double lat, double lon});
}

/// @nodoc
class _$LocalSpeciesCoordinatesCopyWithImpl<$Res,
        $Val extends LocalSpeciesCoordinates>
    implements $LocalSpeciesCoordinatesCopyWith<$Res> {
  _$LocalSpeciesCoordinatesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lon = null,
  }) {
    return _then(_value.copyWith(
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lon: null == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocalSpeciesCoordinatesImplCopyWith<$Res>
    implements $LocalSpeciesCoordinatesCopyWith<$Res> {
  factory _$$LocalSpeciesCoordinatesImplCopyWith(
          _$LocalSpeciesCoordinatesImpl value,
          $Res Function(_$LocalSpeciesCoordinatesImpl) then) =
      __$$LocalSpeciesCoordinatesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double lat, double lon});
}

/// @nodoc
class __$$LocalSpeciesCoordinatesImplCopyWithImpl<$Res>
    extends _$LocalSpeciesCoordinatesCopyWithImpl<$Res,
        _$LocalSpeciesCoordinatesImpl>
    implements _$$LocalSpeciesCoordinatesImplCopyWith<$Res> {
  __$$LocalSpeciesCoordinatesImplCopyWithImpl(
      _$LocalSpeciesCoordinatesImpl _value,
      $Res Function(_$LocalSpeciesCoordinatesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lon = null,
  }) {
    return _then(_$LocalSpeciesCoordinatesImpl(
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lon: null == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$LocalSpeciesCoordinatesImpl implements _LocalSpeciesCoordinates {
  const _$LocalSpeciesCoordinatesImpl({required this.lat, required this.lon});

  @override
  final double lat;
  @override
  final double lon;

  @override
  String toString() {
    return 'LocalSpeciesCoordinates(lat: $lat, lon: $lon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalSpeciesCoordinatesImpl &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lon, lon) || other.lon == lon));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lat, lon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalSpeciesCoordinatesImplCopyWith<_$LocalSpeciesCoordinatesImpl>
      get copyWith => __$$LocalSpeciesCoordinatesImplCopyWithImpl<
          _$LocalSpeciesCoordinatesImpl>(this, _$identity);
}

abstract class _LocalSpeciesCoordinates implements LocalSpeciesCoordinates {
  const factory _LocalSpeciesCoordinates(
      {required final double lat,
      required final double lon}) = _$LocalSpeciesCoordinatesImpl;

  @override
  double get lat;
  @override
  double get lon;
  @override
  @JsonKey(ignore: true)
  _$$LocalSpeciesCoordinatesImplCopyWith<_$LocalSpeciesCoordinatesImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LocalSpeciesData {
  LocalSpeciesMetadata get metadata => throw _privateConstructorUsedError;
  List<LocalSpecies> get species => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocalSpeciesDataCopyWith<LocalSpeciesData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalSpeciesDataCopyWith<$Res> {
  factory $LocalSpeciesDataCopyWith(
          LocalSpeciesData value, $Res Function(LocalSpeciesData) then) =
      _$LocalSpeciesDataCopyWithImpl<$Res, LocalSpeciesData>;
  @useResult
  $Res call({LocalSpeciesMetadata metadata, List<LocalSpecies> species});

  $LocalSpeciesMetadataCopyWith<$Res> get metadata;
}

/// @nodoc
class _$LocalSpeciesDataCopyWithImpl<$Res, $Val extends LocalSpeciesData>
    implements $LocalSpeciesDataCopyWith<$Res> {
  _$LocalSpeciesDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? metadata = null,
    Object? species = null,
  }) {
    return _then(_value.copyWith(
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as LocalSpeciesMetadata,
      species: null == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as List<LocalSpecies>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocalSpeciesMetadataCopyWith<$Res> get metadata {
    return $LocalSpeciesMetadataCopyWith<$Res>(_value.metadata, (value) {
      return _then(_value.copyWith(metadata: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LocalSpeciesDataImplCopyWith<$Res>
    implements $LocalSpeciesDataCopyWith<$Res> {
  factory _$$LocalSpeciesDataImplCopyWith(_$LocalSpeciesDataImpl value,
          $Res Function(_$LocalSpeciesDataImpl) then) =
      __$$LocalSpeciesDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LocalSpeciesMetadata metadata, List<LocalSpecies> species});

  @override
  $LocalSpeciesMetadataCopyWith<$Res> get metadata;
}

/// @nodoc
class __$$LocalSpeciesDataImplCopyWithImpl<$Res>
    extends _$LocalSpeciesDataCopyWithImpl<$Res, _$LocalSpeciesDataImpl>
    implements _$$LocalSpeciesDataImplCopyWith<$Res> {
  __$$LocalSpeciesDataImplCopyWithImpl(_$LocalSpeciesDataImpl _value,
      $Res Function(_$LocalSpeciesDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? metadata = null,
    Object? species = null,
  }) {
    return _then(_$LocalSpeciesDataImpl(
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as LocalSpeciesMetadata,
      species: null == species
          ? _value._species
          : species // ignore: cast_nullable_to_non_nullable
              as List<LocalSpecies>,
    ));
  }
}

/// @nodoc

class _$LocalSpeciesDataImpl implements _LocalSpeciesData {
  const _$LocalSpeciesDataImpl(
      {required this.metadata, required final List<LocalSpecies> species})
      : _species = species;

  @override
  final LocalSpeciesMetadata metadata;
  final List<LocalSpecies> _species;
  @override
  List<LocalSpecies> get species {
    if (_species is EqualUnmodifiableListView) return _species;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_species);
  }

  @override
  String toString() {
    return 'LocalSpeciesData(metadata: $metadata, species: $species)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalSpeciesDataImpl &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata) &&
            const DeepCollectionEquality().equals(other._species, _species));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, metadata, const DeepCollectionEquality().hash(_species));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalSpeciesDataImplCopyWith<_$LocalSpeciesDataImpl> get copyWith =>
      __$$LocalSpeciesDataImplCopyWithImpl<_$LocalSpeciesDataImpl>(
          this, _$identity);
}

abstract class _LocalSpeciesData implements LocalSpeciesData {
  const factory _LocalSpeciesData(
      {required final LocalSpeciesMetadata metadata,
      required final List<LocalSpecies> species}) = _$LocalSpeciesDataImpl;

  @override
  LocalSpeciesMetadata get metadata;
  @override
  List<LocalSpecies> get species;
  @override
  @JsonKey(ignore: true)
  _$$LocalSpeciesDataImplCopyWith<_$LocalSpeciesDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
