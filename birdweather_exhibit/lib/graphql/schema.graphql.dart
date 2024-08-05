class Input$InputDuration {
  factory Input$InputDuration({
    int? count,
    String? unit,
    String? from,
    String? to,
  }) =>
      Input$InputDuration._({
        if (count != null) r'count': count,
        if (unit != null) r'unit': unit,
        if (from != null) r'from': from,
        if (to != null) r'to': to,
      });

  Input$InputDuration._(this._$data);

  factory Input$InputDuration.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('count')) {
      final l$count = data['count'];
      result$data['count'] = (l$count as int?);
    }
    if (data.containsKey('unit')) {
      final l$unit = data['unit'];
      result$data['unit'] = (l$unit as String?);
    }
    if (data.containsKey('from')) {
      final l$from = data['from'];
      result$data['from'] = (l$from as String?);
    }
    if (data.containsKey('to')) {
      final l$to = data['to'];
      result$data['to'] = (l$to as String?);
    }
    return Input$InputDuration._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get count => (_$data['count'] as int?);

  String? get unit => (_$data['unit'] as String?);

  String? get from => (_$data['from'] as String?);

  String? get to => (_$data['to'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('count')) {
      final l$count = count;
      result$data['count'] = l$count;
    }
    if (_$data.containsKey('unit')) {
      final l$unit = unit;
      result$data['unit'] = l$unit;
    }
    if (_$data.containsKey('from')) {
      final l$from = from;
      result$data['from'] = l$from;
    }
    if (_$data.containsKey('to')) {
      final l$to = to;
      result$data['to'] = l$to;
    }
    return result$data;
  }

  CopyWith$Input$InputDuration<Input$InputDuration> get copyWith =>
      CopyWith$Input$InputDuration(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$InputDuration) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (_$data.containsKey('count') != other._$data.containsKey('count')) {
      return false;
    }
    if (l$count != lOther$count) {
      return false;
    }
    final l$unit = unit;
    final lOther$unit = other.unit;
    if (_$data.containsKey('unit') != other._$data.containsKey('unit')) {
      return false;
    }
    if (l$unit != lOther$unit) {
      return false;
    }
    final l$from = from;
    final lOther$from = other.from;
    if (_$data.containsKey('from') != other._$data.containsKey('from')) {
      return false;
    }
    if (l$from != lOther$from) {
      return false;
    }
    final l$to = to;
    final lOther$to = other.to;
    if (_$data.containsKey('to') != other._$data.containsKey('to')) {
      return false;
    }
    if (l$to != lOther$to) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$count = count;
    final l$unit = unit;
    final l$from = from;
    final l$to = to;
    return Object.hashAll([
      _$data.containsKey('count') ? l$count : const {},
      _$data.containsKey('unit') ? l$unit : const {},
      _$data.containsKey('from') ? l$from : const {},
      _$data.containsKey('to') ? l$to : const {},
    ]);
  }
}

abstract class CopyWith$Input$InputDuration<TRes> {
  factory CopyWith$Input$InputDuration(
    Input$InputDuration instance,
    TRes Function(Input$InputDuration) then,
  ) = _CopyWithImpl$Input$InputDuration;

  factory CopyWith$Input$InputDuration.stub(TRes res) =
      _CopyWithStubImpl$Input$InputDuration;

  TRes call({
    int? count,
    String? unit,
    String? from,
    String? to,
  });
}

class _CopyWithImpl$Input$InputDuration<TRes>
    implements CopyWith$Input$InputDuration<TRes> {
  _CopyWithImpl$Input$InputDuration(
    this._instance,
    this._then,
  );

  final Input$InputDuration _instance;

  final TRes Function(Input$InputDuration) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? unit = _undefined,
    Object? from = _undefined,
    Object? to = _undefined,
  }) =>
      _then(Input$InputDuration._({
        ..._instance._$data,
        if (count != _undefined) 'count': (count as int?),
        if (unit != _undefined) 'unit': (unit as String?),
        if (from != _undefined) 'from': (from as String?),
        if (to != _undefined) 'to': (to as String?),
      }));
}

class _CopyWithStubImpl$Input$InputDuration<TRes>
    implements CopyWith$Input$InputDuration<TRes> {
  _CopyWithStubImpl$Input$InputDuration(this._res);

  TRes _res;

  call({
    int? count,
    String? unit,
    String? from,
    String? to,
  }) =>
      _res;
}

class Input$InputLocation {
  factory Input$InputLocation({
    required double lat,
    required double lon,
  }) =>
      Input$InputLocation._({
        r'lat': lat,
        r'lon': lon,
      });

  Input$InputLocation._(this._$data);

  factory Input$InputLocation.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$lat = data['lat'];
    result$data['lat'] = (l$lat as num).toDouble();
    final l$lon = data['lon'];
    result$data['lon'] = (l$lon as num).toDouble();
    return Input$InputLocation._(result$data);
  }

  Map<String, dynamic> _$data;

  double get lat => (_$data['lat'] as double);

  double get lon => (_$data['lon'] as double);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$lat = lat;
    result$data['lat'] = l$lat;
    final l$lon = lon;
    result$data['lon'] = l$lon;
    return result$data;
  }

  CopyWith$Input$InputLocation<Input$InputLocation> get copyWith =>
      CopyWith$Input$InputLocation(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$InputLocation) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$lat = lat;
    final lOther$lat = other.lat;
    if (l$lat != lOther$lat) {
      return false;
    }
    final l$lon = lon;
    final lOther$lon = other.lon;
    if (l$lon != lOther$lon) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$lat = lat;
    final l$lon = lon;
    return Object.hashAll([
      l$lat,
      l$lon,
    ]);
  }
}

abstract class CopyWith$Input$InputLocation<TRes> {
  factory CopyWith$Input$InputLocation(
    Input$InputLocation instance,
    TRes Function(Input$InputLocation) then,
  ) = _CopyWithImpl$Input$InputLocation;

  factory CopyWith$Input$InputLocation.stub(TRes res) =
      _CopyWithStubImpl$Input$InputLocation;

  TRes call({
    double? lat,
    double? lon,
  });
}

class _CopyWithImpl$Input$InputLocation<TRes>
    implements CopyWith$Input$InputLocation<TRes> {
  _CopyWithImpl$Input$InputLocation(
    this._instance,
    this._then,
  );

  final Input$InputLocation _instance;

  final TRes Function(Input$InputLocation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? lat = _undefined,
    Object? lon = _undefined,
  }) =>
      _then(Input$InputLocation._({
        ..._instance._$data,
        if (lat != _undefined && lat != null) 'lat': (lat as double),
        if (lon != _undefined && lon != null) 'lon': (lon as double),
      }));
}

class _CopyWithStubImpl$Input$InputLocation<TRes>
    implements CopyWith$Input$InputLocation<TRes> {
  _CopyWithStubImpl$Input$InputLocation(this._res);

  TRes _res;

  call({
    double? lat,
    double? lon,
  }) =>
      _res;
}

enum Enum$__TypeKind {
  SCALAR,
  OBJECT,
  INTERFACE,
  UNION,
  ENUM,
  INPUT_OBJECT,
  LIST,
  NON_NULL,
  $unknown;

  factory Enum$__TypeKind.fromJson(String value) =>
      fromJson$Enum$__TypeKind(value);

  String toJson() => toJson$Enum$__TypeKind(this);
}

String toJson$Enum$__TypeKind(Enum$__TypeKind e) {
  switch (e) {
    case Enum$__TypeKind.SCALAR:
      return r'SCALAR';
    case Enum$__TypeKind.OBJECT:
      return r'OBJECT';
    case Enum$__TypeKind.INTERFACE:
      return r'INTERFACE';
    case Enum$__TypeKind.UNION:
      return r'UNION';
    case Enum$__TypeKind.ENUM:
      return r'ENUM';
    case Enum$__TypeKind.INPUT_OBJECT:
      return r'INPUT_OBJECT';
    case Enum$__TypeKind.LIST:
      return r'LIST';
    case Enum$__TypeKind.NON_NULL:
      return r'NON_NULL';
    case Enum$__TypeKind.$unknown:
      return r'$unknown';
  }
}

Enum$__TypeKind fromJson$Enum$__TypeKind(String value) {
  switch (value) {
    case r'SCALAR':
      return Enum$__TypeKind.SCALAR;
    case r'OBJECT':
      return Enum$__TypeKind.OBJECT;
    case r'INTERFACE':
      return Enum$__TypeKind.INTERFACE;
    case r'UNION':
      return Enum$__TypeKind.UNION;
    case r'ENUM':
      return Enum$__TypeKind.ENUM;
    case r'INPUT_OBJECT':
      return Enum$__TypeKind.INPUT_OBJECT;
    case r'LIST':
      return Enum$__TypeKind.LIST;
    case r'NON_NULL':
      return Enum$__TypeKind.NON_NULL;
    default:
      return Enum$__TypeKind.$unknown;
  }
}

enum Enum$__DirectiveLocation {
  QUERY,
  MUTATION,
  SUBSCRIPTION,
  FIELD,
  FRAGMENT_DEFINITION,
  FRAGMENT_SPREAD,
  INLINE_FRAGMENT,
  VARIABLE_DEFINITION,
  SCHEMA,
  SCALAR,
  OBJECT,
  FIELD_DEFINITION,
  ARGUMENT_DEFINITION,
  INTERFACE,
  UNION,
  ENUM,
  ENUM_VALUE,
  INPUT_OBJECT,
  INPUT_FIELD_DEFINITION,
  $unknown;

  factory Enum$__DirectiveLocation.fromJson(String value) =>
      fromJson$Enum$__DirectiveLocation(value);

  String toJson() => toJson$Enum$__DirectiveLocation(this);
}

String toJson$Enum$__DirectiveLocation(Enum$__DirectiveLocation e) {
  switch (e) {
    case Enum$__DirectiveLocation.QUERY:
      return r'QUERY';
    case Enum$__DirectiveLocation.MUTATION:
      return r'MUTATION';
    case Enum$__DirectiveLocation.SUBSCRIPTION:
      return r'SUBSCRIPTION';
    case Enum$__DirectiveLocation.FIELD:
      return r'FIELD';
    case Enum$__DirectiveLocation.FRAGMENT_DEFINITION:
      return r'FRAGMENT_DEFINITION';
    case Enum$__DirectiveLocation.FRAGMENT_SPREAD:
      return r'FRAGMENT_SPREAD';
    case Enum$__DirectiveLocation.INLINE_FRAGMENT:
      return r'INLINE_FRAGMENT';
    case Enum$__DirectiveLocation.VARIABLE_DEFINITION:
      return r'VARIABLE_DEFINITION';
    case Enum$__DirectiveLocation.SCHEMA:
      return r'SCHEMA';
    case Enum$__DirectiveLocation.SCALAR:
      return r'SCALAR';
    case Enum$__DirectiveLocation.OBJECT:
      return r'OBJECT';
    case Enum$__DirectiveLocation.FIELD_DEFINITION:
      return r'FIELD_DEFINITION';
    case Enum$__DirectiveLocation.ARGUMENT_DEFINITION:
      return r'ARGUMENT_DEFINITION';
    case Enum$__DirectiveLocation.INTERFACE:
      return r'INTERFACE';
    case Enum$__DirectiveLocation.UNION:
      return r'UNION';
    case Enum$__DirectiveLocation.ENUM:
      return r'ENUM';
    case Enum$__DirectiveLocation.ENUM_VALUE:
      return r'ENUM_VALUE';
    case Enum$__DirectiveLocation.INPUT_OBJECT:
      return r'INPUT_OBJECT';
    case Enum$__DirectiveLocation.INPUT_FIELD_DEFINITION:
      return r'INPUT_FIELD_DEFINITION';
    case Enum$__DirectiveLocation.$unknown:
      return r'$unknown';
  }
}

Enum$__DirectiveLocation fromJson$Enum$__DirectiveLocation(String value) {
  switch (value) {
    case r'QUERY':
      return Enum$__DirectiveLocation.QUERY;
    case r'MUTATION':
      return Enum$__DirectiveLocation.MUTATION;
    case r'SUBSCRIPTION':
      return Enum$__DirectiveLocation.SUBSCRIPTION;
    case r'FIELD':
      return Enum$__DirectiveLocation.FIELD;
    case r'FRAGMENT_DEFINITION':
      return Enum$__DirectiveLocation.FRAGMENT_DEFINITION;
    case r'FRAGMENT_SPREAD':
      return Enum$__DirectiveLocation.FRAGMENT_SPREAD;
    case r'INLINE_FRAGMENT':
      return Enum$__DirectiveLocation.INLINE_FRAGMENT;
    case r'VARIABLE_DEFINITION':
      return Enum$__DirectiveLocation.VARIABLE_DEFINITION;
    case r'SCHEMA':
      return Enum$__DirectiveLocation.SCHEMA;
    case r'SCALAR':
      return Enum$__DirectiveLocation.SCALAR;
    case r'OBJECT':
      return Enum$__DirectiveLocation.OBJECT;
    case r'FIELD_DEFINITION':
      return Enum$__DirectiveLocation.FIELD_DEFINITION;
    case r'ARGUMENT_DEFINITION':
      return Enum$__DirectiveLocation.ARGUMENT_DEFINITION;
    case r'INTERFACE':
      return Enum$__DirectiveLocation.INTERFACE;
    case r'UNION':
      return Enum$__DirectiveLocation.UNION;
    case r'ENUM':
      return Enum$__DirectiveLocation.ENUM;
    case r'ENUM_VALUE':
      return Enum$__DirectiveLocation.ENUM_VALUE;
    case r'INPUT_OBJECT':
      return Enum$__DirectiveLocation.INPUT_OBJECT;
    case r'INPUT_FIELD_DEFINITION':
      return Enum$__DirectiveLocation.INPUT_FIELD_DEFINITION;
    default:
      return Enum$__DirectiveLocation.$unknown;
  }
}

const possibleTypesMap = <String, Set<String>>{
  'Record': {
    'Detection',
    'Sighting',
    'Soundscape',
    'Species',
    'Station',
  }
};
