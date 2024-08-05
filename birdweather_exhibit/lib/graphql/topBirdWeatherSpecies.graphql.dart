import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'schema.graphql.dart';

class Variables$Query$TopBirdWeatherSpecies {
  factory Variables$Query$TopBirdWeatherSpecies({
    Input$InputLocation? ne,
    Input$InputLocation? sw,
    Input$InputDuration? period,
    List<String>? stationTypes,
    List<String>? stationIds,
    int? offset,
    int? limit,
  }) =>
      Variables$Query$TopBirdWeatherSpecies._({
        if (ne != null) r'ne': ne,
        if (sw != null) r'sw': sw,
        if (period != null) r'period': period,
        if (stationTypes != null) r'stationTypes': stationTypes,
        if (stationIds != null) r'stationIds': stationIds,
        if (offset != null) r'offset': offset,
        if (limit != null) r'limit': limit,
      });

  Variables$Query$TopBirdWeatherSpecies._(this._$data);

  factory Variables$Query$TopBirdWeatherSpecies.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('ne')) {
      final l$ne = data['ne'];
      result$data['ne'] = l$ne == null
          ? null
          : Input$InputLocation.fromJson((l$ne as Map<String, dynamic>));
    }
    if (data.containsKey('sw')) {
      final l$sw = data['sw'];
      result$data['sw'] = l$sw == null
          ? null
          : Input$InputLocation.fromJson((l$sw as Map<String, dynamic>));
    }
    if (data.containsKey('period')) {
      final l$period = data['period'];
      result$data['period'] = l$period == null
          ? null
          : Input$InputDuration.fromJson((l$period as Map<String, dynamic>));
    }
    if (data.containsKey('stationTypes')) {
      final l$stationTypes = data['stationTypes'];
      result$data['stationTypes'] = (l$stationTypes as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    if (data.containsKey('stationIds')) {
      final l$stationIds = data['stationIds'];
      result$data['stationIds'] =
          (l$stationIds as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    if (data.containsKey('offset')) {
      final l$offset = data['offset'];
      result$data['offset'] = (l$offset as int?);
    }
    if (data.containsKey('limit')) {
      final l$limit = data['limit'];
      result$data['limit'] = (l$limit as int?);
    }
    return Variables$Query$TopBirdWeatherSpecies._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$InputLocation? get ne => (_$data['ne'] as Input$InputLocation?);

  Input$InputLocation? get sw => (_$data['sw'] as Input$InputLocation?);

  Input$InputDuration? get period => (_$data['period'] as Input$InputDuration?);

  List<String>? get stationTypes => (_$data['stationTypes'] as List<String>?);

  List<String>? get stationIds => (_$data['stationIds'] as List<String>?);

  int? get offset => (_$data['offset'] as int?);

  int? get limit => (_$data['limit'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('ne')) {
      final l$ne = ne;
      result$data['ne'] = l$ne?.toJson();
    }
    if (_$data.containsKey('sw')) {
      final l$sw = sw;
      result$data['sw'] = l$sw?.toJson();
    }
    if (_$data.containsKey('period')) {
      final l$period = period;
      result$data['period'] = l$period?.toJson();
    }
    if (_$data.containsKey('stationTypes')) {
      final l$stationTypes = stationTypes;
      result$data['stationTypes'] = l$stationTypes?.map((e) => e).toList();
    }
    if (_$data.containsKey('stationIds')) {
      final l$stationIds = stationIds;
      result$data['stationIds'] = l$stationIds?.map((e) => e).toList();
    }
    if (_$data.containsKey('offset')) {
      final l$offset = offset;
      result$data['offset'] = l$offset;
    }
    if (_$data.containsKey('limit')) {
      final l$limit = limit;
      result$data['limit'] = l$limit;
    }
    return result$data;
  }

  CopyWith$Variables$Query$TopBirdWeatherSpecies<
          Variables$Query$TopBirdWeatherSpecies>
      get copyWith => CopyWith$Variables$Query$TopBirdWeatherSpecies(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$TopBirdWeatherSpecies) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$ne = ne;
    final lOther$ne = other.ne;
    if (_$data.containsKey('ne') != other._$data.containsKey('ne')) {
      return false;
    }
    if (l$ne != lOther$ne) {
      return false;
    }
    final l$sw = sw;
    final lOther$sw = other.sw;
    if (_$data.containsKey('sw') != other._$data.containsKey('sw')) {
      return false;
    }
    if (l$sw != lOther$sw) {
      return false;
    }
    final l$period = period;
    final lOther$period = other.period;
    if (_$data.containsKey('period') != other._$data.containsKey('period')) {
      return false;
    }
    if (l$period != lOther$period) {
      return false;
    }
    final l$stationTypes = stationTypes;
    final lOther$stationTypes = other.stationTypes;
    if (_$data.containsKey('stationTypes') !=
        other._$data.containsKey('stationTypes')) {
      return false;
    }
    if (l$stationTypes != null && lOther$stationTypes != null) {
      if (l$stationTypes.length != lOther$stationTypes.length) {
        return false;
      }
      for (int i = 0; i < l$stationTypes.length; i++) {
        final l$stationTypes$entry = l$stationTypes[i];
        final lOther$stationTypes$entry = lOther$stationTypes[i];
        if (l$stationTypes$entry != lOther$stationTypes$entry) {
          return false;
        }
      }
    } else if (l$stationTypes != lOther$stationTypes) {
      return false;
    }
    final l$stationIds = stationIds;
    final lOther$stationIds = other.stationIds;
    if (_$data.containsKey('stationIds') !=
        other._$data.containsKey('stationIds')) {
      return false;
    }
    if (l$stationIds != null && lOther$stationIds != null) {
      if (l$stationIds.length != lOther$stationIds.length) {
        return false;
      }
      for (int i = 0; i < l$stationIds.length; i++) {
        final l$stationIds$entry = l$stationIds[i];
        final lOther$stationIds$entry = lOther$stationIds[i];
        if (l$stationIds$entry != lOther$stationIds$entry) {
          return false;
        }
      }
    } else if (l$stationIds != lOther$stationIds) {
      return false;
    }
    final l$offset = offset;
    final lOther$offset = other.offset;
    if (_$data.containsKey('offset') != other._$data.containsKey('offset')) {
      return false;
    }
    if (l$offset != lOther$offset) {
      return false;
    }
    final l$limit = limit;
    final lOther$limit = other.limit;
    if (_$data.containsKey('limit') != other._$data.containsKey('limit')) {
      return false;
    }
    if (l$limit != lOther$limit) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$ne = ne;
    final l$sw = sw;
    final l$period = period;
    final l$stationTypes = stationTypes;
    final l$stationIds = stationIds;
    final l$offset = offset;
    final l$limit = limit;
    return Object.hashAll([
      _$data.containsKey('ne') ? l$ne : const {},
      _$data.containsKey('sw') ? l$sw : const {},
      _$data.containsKey('period') ? l$period : const {},
      _$data.containsKey('stationTypes')
          ? l$stationTypes == null
              ? null
              : Object.hashAll(l$stationTypes.map((v) => v))
          : const {},
      _$data.containsKey('stationIds')
          ? l$stationIds == null
              ? null
              : Object.hashAll(l$stationIds.map((v) => v))
          : const {},
      _$data.containsKey('offset') ? l$offset : const {},
      _$data.containsKey('limit') ? l$limit : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$TopBirdWeatherSpecies<TRes> {
  factory CopyWith$Variables$Query$TopBirdWeatherSpecies(
    Variables$Query$TopBirdWeatherSpecies instance,
    TRes Function(Variables$Query$TopBirdWeatherSpecies) then,
  ) = _CopyWithImpl$Variables$Query$TopBirdWeatherSpecies;

  factory CopyWith$Variables$Query$TopBirdWeatherSpecies.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$TopBirdWeatherSpecies;

  TRes call({
    Input$InputLocation? ne,
    Input$InputLocation? sw,
    Input$InputDuration? period,
    List<String>? stationTypes,
    List<String>? stationIds,
    int? offset,
    int? limit,
  });
}

class _CopyWithImpl$Variables$Query$TopBirdWeatherSpecies<TRes>
    implements CopyWith$Variables$Query$TopBirdWeatherSpecies<TRes> {
  _CopyWithImpl$Variables$Query$TopBirdWeatherSpecies(
    this._instance,
    this._then,
  );

  final Variables$Query$TopBirdWeatherSpecies _instance;

  final TRes Function(Variables$Query$TopBirdWeatherSpecies) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ne = _undefined,
    Object? sw = _undefined,
    Object? period = _undefined,
    Object? stationTypes = _undefined,
    Object? stationIds = _undefined,
    Object? offset = _undefined,
    Object? limit = _undefined,
  }) =>
      _then(Variables$Query$TopBirdWeatherSpecies._({
        ..._instance._$data,
        if (ne != _undefined) 'ne': (ne as Input$InputLocation?),
        if (sw != _undefined) 'sw': (sw as Input$InputLocation?),
        if (period != _undefined) 'period': (period as Input$InputDuration?),
        if (stationTypes != _undefined)
          'stationTypes': (stationTypes as List<String>?),
        if (stationIds != _undefined)
          'stationIds': (stationIds as List<String>?),
        if (offset != _undefined) 'offset': (offset as int?),
        if (limit != _undefined) 'limit': (limit as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$TopBirdWeatherSpecies<TRes>
    implements CopyWith$Variables$Query$TopBirdWeatherSpecies<TRes> {
  _CopyWithStubImpl$Variables$Query$TopBirdWeatherSpecies(this._res);

  TRes _res;

  call({
    Input$InputLocation? ne,
    Input$InputLocation? sw,
    Input$InputDuration? period,
    List<String>? stationTypes,
    List<String>? stationIds,
    int? offset,
    int? limit,
  }) =>
      _res;
}

class Query$TopBirdWeatherSpecies {
  Query$TopBirdWeatherSpecies({
    required this.species,
    this.$__typename = 'Query',
  });

  factory Query$TopBirdWeatherSpecies.fromJson(Map<String, dynamic> json) {
    final l$species = json['species'];
    final l$$__typename = json['__typename'];
    return Query$TopBirdWeatherSpecies(
      species: (l$species as List<dynamic>)
          .map((e) => Query$TopBirdWeatherSpecies$species.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$TopBirdWeatherSpecies$species> species;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$species = species;
    _resultData['species'] = l$species.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$species = species;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$species.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$TopBirdWeatherSpecies) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$species = species;
    final lOther$species = other.species;
    if (l$species.length != lOther$species.length) {
      return false;
    }
    for (int i = 0; i < l$species.length; i++) {
      final l$species$entry = l$species[i];
      final lOther$species$entry = lOther$species[i];
      if (l$species$entry != lOther$species$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$TopBirdWeatherSpecies
    on Query$TopBirdWeatherSpecies {
  CopyWith$Query$TopBirdWeatherSpecies<Query$TopBirdWeatherSpecies>
      get copyWith => CopyWith$Query$TopBirdWeatherSpecies(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$TopBirdWeatherSpecies<TRes> {
  factory CopyWith$Query$TopBirdWeatherSpecies(
    Query$TopBirdWeatherSpecies instance,
    TRes Function(Query$TopBirdWeatherSpecies) then,
  ) = _CopyWithImpl$Query$TopBirdWeatherSpecies;

  factory CopyWith$Query$TopBirdWeatherSpecies.stub(TRes res) =
      _CopyWithStubImpl$Query$TopBirdWeatherSpecies;

  TRes call({
    List<Query$TopBirdWeatherSpecies$species>? species,
    String? $__typename,
  });
  TRes species(
      Iterable<Query$TopBirdWeatherSpecies$species> Function(
              Iterable<
                  CopyWith$Query$TopBirdWeatherSpecies$species<
                      Query$TopBirdWeatherSpecies$species>>)
          _fn);
}

class _CopyWithImpl$Query$TopBirdWeatherSpecies<TRes>
    implements CopyWith$Query$TopBirdWeatherSpecies<TRes> {
  _CopyWithImpl$Query$TopBirdWeatherSpecies(
    this._instance,
    this._then,
  );

  final Query$TopBirdWeatherSpecies _instance;

  final TRes Function(Query$TopBirdWeatherSpecies) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? species = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$TopBirdWeatherSpecies(
        species: species == _undefined || species == null
            ? _instance.species
            : (species as List<Query$TopBirdWeatherSpecies$species>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes species(
          Iterable<Query$TopBirdWeatherSpecies$species> Function(
                  Iterable<
                      CopyWith$Query$TopBirdWeatherSpecies$species<
                          Query$TopBirdWeatherSpecies$species>>)
              _fn) =>
      call(
          species: _fn(_instance.species
              .map((e) => CopyWith$Query$TopBirdWeatherSpecies$species(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$TopBirdWeatherSpecies<TRes>
    implements CopyWith$Query$TopBirdWeatherSpecies<TRes> {
  _CopyWithStubImpl$Query$TopBirdWeatherSpecies(this._res);

  TRes _res;

  call({
    List<Query$TopBirdWeatherSpecies$species>? species,
    String? $__typename,
  }) =>
      _res;

  species(_fn) => _res;
}

const documentNodeQueryTopBirdWeatherSpecies = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'TopBirdWeatherSpecies'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'ne')),
        type: NamedTypeNode(
          name: NameNode(value: 'InputLocation'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'sw')),
        type: NamedTypeNode(
          name: NameNode(value: 'InputLocation'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'period')),
        type: NamedTypeNode(
          name: NameNode(value: 'InputDuration'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'stationTypes')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: true,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'stationIds')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'ID'),
            isNonNull: true,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'offset')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'limit')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'topSpecies'),
        alias: NameNode(value: 'species'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'limit'),
            value: VariableNode(name: NameNode(value: 'limit')),
          ),
          ArgumentNode(
            name: NameNode(value: 'offset'),
            value: VariableNode(name: NameNode(value: 'offset')),
          ),
          ArgumentNode(
            name: NameNode(value: 'period'),
            value: VariableNode(name: NameNode(value: 'period')),
          ),
          ArgumentNode(
            name: NameNode(value: 'ne'),
            value: VariableNode(name: NameNode(value: 'ne')),
          ),
          ArgumentNode(
            name: NameNode(value: 'sw'),
            value: VariableNode(name: NameNode(value: 'sw')),
          ),
          ArgumentNode(
            name: NameNode(value: 'stationTypes'),
            value: VariableNode(name: NameNode(value: 'stationTypes')),
          ),
          ArgumentNode(
            name: NameNode(value: 'stationIds'),
            value: VariableNode(name: NameNode(value: 'stationIds')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'speciesId'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'species'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'scientificName'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'commonName'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'thumbnailUrl'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'imageUrl'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'birdweatherUrl'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'ebirdUrl'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'wikipediaUrl'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'wikipediaSummary'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'color'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'imageCredit'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'imageLicense'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'imageLicenseUrl'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'count'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'breakdown'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'unlikely'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'uncertain'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'veryLikely'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'almostCertain'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'averageProbability'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Query$TopBirdWeatherSpecies _parserFn$Query$TopBirdWeatherSpecies(
        Map<String, dynamic> data) =>
    Query$TopBirdWeatherSpecies.fromJson(data);
typedef OnQueryComplete$Query$TopBirdWeatherSpecies = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$TopBirdWeatherSpecies?,
);

class Options$Query$TopBirdWeatherSpecies
    extends graphql.QueryOptions<Query$TopBirdWeatherSpecies> {
  Options$Query$TopBirdWeatherSpecies({
    String? operationName,
    Variables$Query$TopBirdWeatherSpecies? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$TopBirdWeatherSpecies? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$TopBirdWeatherSpecies? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null
                        ? null
                        : _parserFn$Query$TopBirdWeatherSpecies(data),
                  ),
          onError: onError,
          document: documentNodeQueryTopBirdWeatherSpecies,
          parserFn: _parserFn$Query$TopBirdWeatherSpecies,
        );

  final OnQueryComplete$Query$TopBirdWeatherSpecies? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$TopBirdWeatherSpecies
    extends graphql.WatchQueryOptions<Query$TopBirdWeatherSpecies> {
  WatchOptions$Query$TopBirdWeatherSpecies({
    String? operationName,
    Variables$Query$TopBirdWeatherSpecies? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$TopBirdWeatherSpecies? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryTopBirdWeatherSpecies,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$TopBirdWeatherSpecies,
        );
}

class FetchMoreOptions$Query$TopBirdWeatherSpecies
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$TopBirdWeatherSpecies({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$TopBirdWeatherSpecies? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryTopBirdWeatherSpecies,
        );
}

extension ClientExtension$Query$TopBirdWeatherSpecies on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$TopBirdWeatherSpecies>>
      query$TopBirdWeatherSpecies(
              [Options$Query$TopBirdWeatherSpecies? options]) async =>
          await this.query(options ?? Options$Query$TopBirdWeatherSpecies());
  graphql.ObservableQuery<
      Query$TopBirdWeatherSpecies> watchQuery$TopBirdWeatherSpecies(
          [WatchOptions$Query$TopBirdWeatherSpecies? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$TopBirdWeatherSpecies());
  void writeQuery$TopBirdWeatherSpecies({
    required Query$TopBirdWeatherSpecies data,
    Variables$Query$TopBirdWeatherSpecies? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryTopBirdWeatherSpecies),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$TopBirdWeatherSpecies? readQuery$TopBirdWeatherSpecies({
    Variables$Query$TopBirdWeatherSpecies? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryTopBirdWeatherSpecies),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$TopBirdWeatherSpecies.fromJson(result);
  }
}

class Query$TopBirdWeatherSpecies$species {
  Query$TopBirdWeatherSpecies$species({
    required this.speciesId,
    this.species,
    required this.count,
    this.breakdown,
    this.averageProbability,
    this.$__typename = 'SpeciesCount',
  });

  factory Query$TopBirdWeatherSpecies$species.fromJson(
      Map<String, dynamic> json) {
    final l$speciesId = json['speciesId'];
    final l$species = json['species'];
    final l$count = json['count'];
    final l$breakdown = json['breakdown'];
    final l$averageProbability = json['averageProbability'];
    final l$$__typename = json['__typename'];
    return Query$TopBirdWeatherSpecies$species(
      speciesId: (l$speciesId as String),
      species: l$species == null
          ? null
          : Query$TopBirdWeatherSpecies$species$species.fromJson(
              (l$species as Map<String, dynamic>)),
      count: (l$count as int),
      breakdown: l$breakdown == null
          ? null
          : Query$TopBirdWeatherSpecies$species$breakdown.fromJson(
              (l$breakdown as Map<String, dynamic>)),
      averageProbability: (l$averageProbability as num?)?.toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final String speciesId;

  final Query$TopBirdWeatherSpecies$species$species? species;

  final int count;

  final Query$TopBirdWeatherSpecies$species$breakdown? breakdown;

  final double? averageProbability;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$speciesId = speciesId;
    _resultData['speciesId'] = l$speciesId;
    final l$species = species;
    _resultData['species'] = l$species?.toJson();
    final l$count = count;
    _resultData['count'] = l$count;
    final l$breakdown = breakdown;
    _resultData['breakdown'] = l$breakdown?.toJson();
    final l$averageProbability = averageProbability;
    _resultData['averageProbability'] = l$averageProbability;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$speciesId = speciesId;
    final l$species = species;
    final l$count = count;
    final l$breakdown = breakdown;
    final l$averageProbability = averageProbability;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$speciesId,
      l$species,
      l$count,
      l$breakdown,
      l$averageProbability,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$TopBirdWeatherSpecies$species) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$speciesId = speciesId;
    final lOther$speciesId = other.speciesId;
    if (l$speciesId != lOther$speciesId) {
      return false;
    }
    final l$species = species;
    final lOther$species = other.species;
    if (l$species != lOther$species) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
      return false;
    }
    final l$breakdown = breakdown;
    final lOther$breakdown = other.breakdown;
    if (l$breakdown != lOther$breakdown) {
      return false;
    }
    final l$averageProbability = averageProbability;
    final lOther$averageProbability = other.averageProbability;
    if (l$averageProbability != lOther$averageProbability) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$TopBirdWeatherSpecies$species
    on Query$TopBirdWeatherSpecies$species {
  CopyWith$Query$TopBirdWeatherSpecies$species<
          Query$TopBirdWeatherSpecies$species>
      get copyWith => CopyWith$Query$TopBirdWeatherSpecies$species(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$TopBirdWeatherSpecies$species<TRes> {
  factory CopyWith$Query$TopBirdWeatherSpecies$species(
    Query$TopBirdWeatherSpecies$species instance,
    TRes Function(Query$TopBirdWeatherSpecies$species) then,
  ) = _CopyWithImpl$Query$TopBirdWeatherSpecies$species;

  factory CopyWith$Query$TopBirdWeatherSpecies$species.stub(TRes res) =
      _CopyWithStubImpl$Query$TopBirdWeatherSpecies$species;

  TRes call({
    String? speciesId,
    Query$TopBirdWeatherSpecies$species$species? species,
    int? count,
    Query$TopBirdWeatherSpecies$species$breakdown? breakdown,
    double? averageProbability,
    String? $__typename,
  });
  CopyWith$Query$TopBirdWeatherSpecies$species$species<TRes> get species;
  CopyWith$Query$TopBirdWeatherSpecies$species$breakdown<TRes> get breakdown;
}

class _CopyWithImpl$Query$TopBirdWeatherSpecies$species<TRes>
    implements CopyWith$Query$TopBirdWeatherSpecies$species<TRes> {
  _CopyWithImpl$Query$TopBirdWeatherSpecies$species(
    this._instance,
    this._then,
  );

  final Query$TopBirdWeatherSpecies$species _instance;

  final TRes Function(Query$TopBirdWeatherSpecies$species) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? speciesId = _undefined,
    Object? species = _undefined,
    Object? count = _undefined,
    Object? breakdown = _undefined,
    Object? averageProbability = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$TopBirdWeatherSpecies$species(
        speciesId: speciesId == _undefined || speciesId == null
            ? _instance.speciesId
            : (speciesId as String),
        species: species == _undefined
            ? _instance.species
            : (species as Query$TopBirdWeatherSpecies$species$species?),
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        breakdown: breakdown == _undefined
            ? _instance.breakdown
            : (breakdown as Query$TopBirdWeatherSpecies$species$breakdown?),
        averageProbability: averageProbability == _undefined
            ? _instance.averageProbability
            : (averageProbability as double?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$TopBirdWeatherSpecies$species$species<TRes> get species {
    final local$species = _instance.species;
    return local$species == null
        ? CopyWith$Query$TopBirdWeatherSpecies$species$species.stub(
            _then(_instance))
        : CopyWith$Query$TopBirdWeatherSpecies$species$species(
            local$species, (e) => call(species: e));
  }

  CopyWith$Query$TopBirdWeatherSpecies$species$breakdown<TRes> get breakdown {
    final local$breakdown = _instance.breakdown;
    return local$breakdown == null
        ? CopyWith$Query$TopBirdWeatherSpecies$species$breakdown.stub(
            _then(_instance))
        : CopyWith$Query$TopBirdWeatherSpecies$species$breakdown(
            local$breakdown, (e) => call(breakdown: e));
  }
}

class _CopyWithStubImpl$Query$TopBirdWeatherSpecies$species<TRes>
    implements CopyWith$Query$TopBirdWeatherSpecies$species<TRes> {
  _CopyWithStubImpl$Query$TopBirdWeatherSpecies$species(this._res);

  TRes _res;

  call({
    String? speciesId,
    Query$TopBirdWeatherSpecies$species$species? species,
    int? count,
    Query$TopBirdWeatherSpecies$species$breakdown? breakdown,
    double? averageProbability,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$TopBirdWeatherSpecies$species$species<TRes> get species =>
      CopyWith$Query$TopBirdWeatherSpecies$species$species.stub(_res);

  CopyWith$Query$TopBirdWeatherSpecies$species$breakdown<TRes> get breakdown =>
      CopyWith$Query$TopBirdWeatherSpecies$species$breakdown.stub(_res);
}

class Query$TopBirdWeatherSpecies$species$species {
  Query$TopBirdWeatherSpecies$species$species({
    required this.id,
    this.scientificName,
    required this.commonName,
    this.thumbnailUrl,
    this.imageUrl,
    this.birdweatherUrl,
    this.ebirdUrl,
    this.wikipediaUrl,
    this.wikipediaSummary,
    required this.color,
    this.imageCredit,
    this.imageLicense,
    this.imageLicenseUrl,
    this.$__typename = 'Species',
  });

  factory Query$TopBirdWeatherSpecies$species$species.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$scientificName = json['scientificName'];
    final l$commonName = json['commonName'];
    final l$thumbnailUrl = json['thumbnailUrl'];
    final l$imageUrl = json['imageUrl'];
    final l$birdweatherUrl = json['birdweatherUrl'];
    final l$ebirdUrl = json['ebirdUrl'];
    final l$wikipediaUrl = json['wikipediaUrl'];
    final l$wikipediaSummary = json['wikipediaSummary'];
    final l$color = json['color'];
    final l$imageCredit = json['imageCredit'];
    final l$imageLicense = json['imageLicense'];
    final l$imageLicenseUrl = json['imageLicenseUrl'];
    final l$$__typename = json['__typename'];
    return Query$TopBirdWeatherSpecies$species$species(
      id: (l$id as String),
      scientificName: (l$scientificName as String?),
      commonName: (l$commonName as String),
      thumbnailUrl: (l$thumbnailUrl as String?),
      imageUrl: (l$imageUrl as String?),
      birdweatherUrl: (l$birdweatherUrl as String?),
      ebirdUrl: (l$ebirdUrl as String?),
      wikipediaUrl: (l$wikipediaUrl as String?),
      wikipediaSummary: (l$wikipediaSummary as String?),
      color: (l$color as String),
      imageCredit: (l$imageCredit as String?),
      imageLicense: (l$imageLicense as String?),
      imageLicenseUrl: (l$imageLicenseUrl as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String? scientificName;

  final String commonName;

  final String? thumbnailUrl;

  final String? imageUrl;

  final String? birdweatherUrl;

  final String? ebirdUrl;

  final String? wikipediaUrl;

  final String? wikipediaSummary;

  final String color;

  final String? imageCredit;

  final String? imageLicense;

  final String? imageLicenseUrl;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$scientificName = scientificName;
    _resultData['scientificName'] = l$scientificName;
    final l$commonName = commonName;
    _resultData['commonName'] = l$commonName;
    final l$thumbnailUrl = thumbnailUrl;
    _resultData['thumbnailUrl'] = l$thumbnailUrl;
    final l$imageUrl = imageUrl;
    _resultData['imageUrl'] = l$imageUrl;
    final l$birdweatherUrl = birdweatherUrl;
    _resultData['birdweatherUrl'] = l$birdweatherUrl;
    final l$ebirdUrl = ebirdUrl;
    _resultData['ebirdUrl'] = l$ebirdUrl;
    final l$wikipediaUrl = wikipediaUrl;
    _resultData['wikipediaUrl'] = l$wikipediaUrl;
    final l$wikipediaSummary = wikipediaSummary;
    _resultData['wikipediaSummary'] = l$wikipediaSummary;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$imageCredit = imageCredit;
    _resultData['imageCredit'] = l$imageCredit;
    final l$imageLicense = imageLicense;
    _resultData['imageLicense'] = l$imageLicense;
    final l$imageLicenseUrl = imageLicenseUrl;
    _resultData['imageLicenseUrl'] = l$imageLicenseUrl;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$scientificName = scientificName;
    final l$commonName = commonName;
    final l$thumbnailUrl = thumbnailUrl;
    final l$imageUrl = imageUrl;
    final l$birdweatherUrl = birdweatherUrl;
    final l$ebirdUrl = ebirdUrl;
    final l$wikipediaUrl = wikipediaUrl;
    final l$wikipediaSummary = wikipediaSummary;
    final l$color = color;
    final l$imageCredit = imageCredit;
    final l$imageLicense = imageLicense;
    final l$imageLicenseUrl = imageLicenseUrl;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$scientificName,
      l$commonName,
      l$thumbnailUrl,
      l$imageUrl,
      l$birdweatherUrl,
      l$ebirdUrl,
      l$wikipediaUrl,
      l$wikipediaSummary,
      l$color,
      l$imageCredit,
      l$imageLicense,
      l$imageLicenseUrl,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$TopBirdWeatherSpecies$species$species) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$scientificName = scientificName;
    final lOther$scientificName = other.scientificName;
    if (l$scientificName != lOther$scientificName) {
      return false;
    }
    final l$commonName = commonName;
    final lOther$commonName = other.commonName;
    if (l$commonName != lOther$commonName) {
      return false;
    }
    final l$thumbnailUrl = thumbnailUrl;
    final lOther$thumbnailUrl = other.thumbnailUrl;
    if (l$thumbnailUrl != lOther$thumbnailUrl) {
      return false;
    }
    final l$imageUrl = imageUrl;
    final lOther$imageUrl = other.imageUrl;
    if (l$imageUrl != lOther$imageUrl) {
      return false;
    }
    final l$birdweatherUrl = birdweatherUrl;
    final lOther$birdweatherUrl = other.birdweatherUrl;
    if (l$birdweatherUrl != lOther$birdweatherUrl) {
      return false;
    }
    final l$ebirdUrl = ebirdUrl;
    final lOther$ebirdUrl = other.ebirdUrl;
    if (l$ebirdUrl != lOther$ebirdUrl) {
      return false;
    }
    final l$wikipediaUrl = wikipediaUrl;
    final lOther$wikipediaUrl = other.wikipediaUrl;
    if (l$wikipediaUrl != lOther$wikipediaUrl) {
      return false;
    }
    final l$wikipediaSummary = wikipediaSummary;
    final lOther$wikipediaSummary = other.wikipediaSummary;
    if (l$wikipediaSummary != lOther$wikipediaSummary) {
      return false;
    }
    final l$color = color;
    final lOther$color = other.color;
    if (l$color != lOther$color) {
      return false;
    }
    final l$imageCredit = imageCredit;
    final lOther$imageCredit = other.imageCredit;
    if (l$imageCredit != lOther$imageCredit) {
      return false;
    }
    final l$imageLicense = imageLicense;
    final lOther$imageLicense = other.imageLicense;
    if (l$imageLicense != lOther$imageLicense) {
      return false;
    }
    final l$imageLicenseUrl = imageLicenseUrl;
    final lOther$imageLicenseUrl = other.imageLicenseUrl;
    if (l$imageLicenseUrl != lOther$imageLicenseUrl) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$TopBirdWeatherSpecies$species$species
    on Query$TopBirdWeatherSpecies$species$species {
  CopyWith$Query$TopBirdWeatherSpecies$species$species<
          Query$TopBirdWeatherSpecies$species$species>
      get copyWith => CopyWith$Query$TopBirdWeatherSpecies$species$species(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$TopBirdWeatherSpecies$species$species<TRes> {
  factory CopyWith$Query$TopBirdWeatherSpecies$species$species(
    Query$TopBirdWeatherSpecies$species$species instance,
    TRes Function(Query$TopBirdWeatherSpecies$species$species) then,
  ) = _CopyWithImpl$Query$TopBirdWeatherSpecies$species$species;

  factory CopyWith$Query$TopBirdWeatherSpecies$species$species.stub(TRes res) =
      _CopyWithStubImpl$Query$TopBirdWeatherSpecies$species$species;

  TRes call({
    String? id,
    String? scientificName,
    String? commonName,
    String? thumbnailUrl,
    String? imageUrl,
    String? birdweatherUrl,
    String? ebirdUrl,
    String? wikipediaUrl,
    String? wikipediaSummary,
    String? color,
    String? imageCredit,
    String? imageLicense,
    String? imageLicenseUrl,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$TopBirdWeatherSpecies$species$species<TRes>
    implements CopyWith$Query$TopBirdWeatherSpecies$species$species<TRes> {
  _CopyWithImpl$Query$TopBirdWeatherSpecies$species$species(
    this._instance,
    this._then,
  );

  final Query$TopBirdWeatherSpecies$species$species _instance;

  final TRes Function(Query$TopBirdWeatherSpecies$species$species) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? scientificName = _undefined,
    Object? commonName = _undefined,
    Object? thumbnailUrl = _undefined,
    Object? imageUrl = _undefined,
    Object? birdweatherUrl = _undefined,
    Object? ebirdUrl = _undefined,
    Object? wikipediaUrl = _undefined,
    Object? wikipediaSummary = _undefined,
    Object? color = _undefined,
    Object? imageCredit = _undefined,
    Object? imageLicense = _undefined,
    Object? imageLicenseUrl = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$TopBirdWeatherSpecies$species$species(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        scientificName: scientificName == _undefined
            ? _instance.scientificName
            : (scientificName as String?),
        commonName: commonName == _undefined || commonName == null
            ? _instance.commonName
            : (commonName as String),
        thumbnailUrl: thumbnailUrl == _undefined
            ? _instance.thumbnailUrl
            : (thumbnailUrl as String?),
        imageUrl:
            imageUrl == _undefined ? _instance.imageUrl : (imageUrl as String?),
        birdweatherUrl: birdweatherUrl == _undefined
            ? _instance.birdweatherUrl
            : (birdweatherUrl as String?),
        ebirdUrl:
            ebirdUrl == _undefined ? _instance.ebirdUrl : (ebirdUrl as String?),
        wikipediaUrl: wikipediaUrl == _undefined
            ? _instance.wikipediaUrl
            : (wikipediaUrl as String?),
        wikipediaSummary: wikipediaSummary == _undefined
            ? _instance.wikipediaSummary
            : (wikipediaSummary as String?),
        color: color == _undefined || color == null
            ? _instance.color
            : (color as String),
        imageCredit: imageCredit == _undefined
            ? _instance.imageCredit
            : (imageCredit as String?),
        imageLicense: imageLicense == _undefined
            ? _instance.imageLicense
            : (imageLicense as String?),
        imageLicenseUrl: imageLicenseUrl == _undefined
            ? _instance.imageLicenseUrl
            : (imageLicenseUrl as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$TopBirdWeatherSpecies$species$species<TRes>
    implements CopyWith$Query$TopBirdWeatherSpecies$species$species<TRes> {
  _CopyWithStubImpl$Query$TopBirdWeatherSpecies$species$species(this._res);

  TRes _res;

  call({
    String? id,
    String? scientificName,
    String? commonName,
    String? thumbnailUrl,
    String? imageUrl,
    String? birdweatherUrl,
    String? ebirdUrl,
    String? wikipediaUrl,
    String? wikipediaSummary,
    String? color,
    String? imageCredit,
    String? imageLicense,
    String? imageLicenseUrl,
    String? $__typename,
  }) =>
      _res;
}

class Query$TopBirdWeatherSpecies$species$breakdown {
  Query$TopBirdWeatherSpecies$species$breakdown({
    required this.unlikely,
    required this.uncertain,
    required this.veryLikely,
    required this.almostCertain,
    this.$__typename = 'SpeciesCountBreakdown',
  });

  factory Query$TopBirdWeatherSpecies$species$breakdown.fromJson(
      Map<String, dynamic> json) {
    final l$unlikely = json['unlikely'];
    final l$uncertain = json['uncertain'];
    final l$veryLikely = json['veryLikely'];
    final l$almostCertain = json['almostCertain'];
    final l$$__typename = json['__typename'];
    return Query$TopBirdWeatherSpecies$species$breakdown(
      unlikely: (l$unlikely as int),
      uncertain: (l$uncertain as int),
      veryLikely: (l$veryLikely as int),
      almostCertain: (l$almostCertain as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int unlikely;

  final int uncertain;

  final int veryLikely;

  final int almostCertain;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$unlikely = unlikely;
    _resultData['unlikely'] = l$unlikely;
    final l$uncertain = uncertain;
    _resultData['uncertain'] = l$uncertain;
    final l$veryLikely = veryLikely;
    _resultData['veryLikely'] = l$veryLikely;
    final l$almostCertain = almostCertain;
    _resultData['almostCertain'] = l$almostCertain;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$unlikely = unlikely;
    final l$uncertain = uncertain;
    final l$veryLikely = veryLikely;
    final l$almostCertain = almostCertain;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$unlikely,
      l$uncertain,
      l$veryLikely,
      l$almostCertain,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$TopBirdWeatherSpecies$species$breakdown) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$unlikely = unlikely;
    final lOther$unlikely = other.unlikely;
    if (l$unlikely != lOther$unlikely) {
      return false;
    }
    final l$uncertain = uncertain;
    final lOther$uncertain = other.uncertain;
    if (l$uncertain != lOther$uncertain) {
      return false;
    }
    final l$veryLikely = veryLikely;
    final lOther$veryLikely = other.veryLikely;
    if (l$veryLikely != lOther$veryLikely) {
      return false;
    }
    final l$almostCertain = almostCertain;
    final lOther$almostCertain = other.almostCertain;
    if (l$almostCertain != lOther$almostCertain) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$TopBirdWeatherSpecies$species$breakdown
    on Query$TopBirdWeatherSpecies$species$breakdown {
  CopyWith$Query$TopBirdWeatherSpecies$species$breakdown<
          Query$TopBirdWeatherSpecies$species$breakdown>
      get copyWith => CopyWith$Query$TopBirdWeatherSpecies$species$breakdown(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$TopBirdWeatherSpecies$species$breakdown<TRes> {
  factory CopyWith$Query$TopBirdWeatherSpecies$species$breakdown(
    Query$TopBirdWeatherSpecies$species$breakdown instance,
    TRes Function(Query$TopBirdWeatherSpecies$species$breakdown) then,
  ) = _CopyWithImpl$Query$TopBirdWeatherSpecies$species$breakdown;

  factory CopyWith$Query$TopBirdWeatherSpecies$species$breakdown.stub(
          TRes res) =
      _CopyWithStubImpl$Query$TopBirdWeatherSpecies$species$breakdown;

  TRes call({
    int? unlikely,
    int? uncertain,
    int? veryLikely,
    int? almostCertain,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$TopBirdWeatherSpecies$species$breakdown<TRes>
    implements CopyWith$Query$TopBirdWeatherSpecies$species$breakdown<TRes> {
  _CopyWithImpl$Query$TopBirdWeatherSpecies$species$breakdown(
    this._instance,
    this._then,
  );

  final Query$TopBirdWeatherSpecies$species$breakdown _instance;

  final TRes Function(Query$TopBirdWeatherSpecies$species$breakdown) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? unlikely = _undefined,
    Object? uncertain = _undefined,
    Object? veryLikely = _undefined,
    Object? almostCertain = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$TopBirdWeatherSpecies$species$breakdown(
        unlikely: unlikely == _undefined || unlikely == null
            ? _instance.unlikely
            : (unlikely as int),
        uncertain: uncertain == _undefined || uncertain == null
            ? _instance.uncertain
            : (uncertain as int),
        veryLikely: veryLikely == _undefined || veryLikely == null
            ? _instance.veryLikely
            : (veryLikely as int),
        almostCertain: almostCertain == _undefined || almostCertain == null
            ? _instance.almostCertain
            : (almostCertain as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$TopBirdWeatherSpecies$species$breakdown<TRes>
    implements CopyWith$Query$TopBirdWeatherSpecies$species$breakdown<TRes> {
  _CopyWithStubImpl$Query$TopBirdWeatherSpecies$species$breakdown(this._res);

  TRes _res;

  call({
    int? unlikely,
    int? uncertain,
    int? veryLikely,
    int? almostCertain,
    String? $__typename,
  }) =>
      _res;
}
