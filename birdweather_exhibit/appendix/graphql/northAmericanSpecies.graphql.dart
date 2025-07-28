import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'schema.graphql.dart';

class Variables$Query$NorthAmericanSpecies {
  factory Variables$Query$NorthAmericanSpecies({
    int? limit,
    int? offset,
    Input$InputDuration? period,
    Input$InputLocation? ne,
    Input$InputLocation? sw,
  }) =>
      Variables$Query$NorthAmericanSpecies._({
        if (limit != null) r'limit': limit,
        if (offset != null) r'offset': offset,
        if (period != null) r'period': period,
        if (ne != null) r'ne': ne,
        if (sw != null) r'sw': sw,
      });

  Variables$Query$NorthAmericanSpecies._(this._$data);

  factory Variables$Query$NorthAmericanSpecies.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('limit')) {
      final l$limit = data['limit'];
      result$data['limit'] = (l$limit as int?);
    }
    if (data.containsKey('offset')) {
      final l$offset = data['offset'];
      result$data['offset'] = (l$offset as int?);
    }
    if (data.containsKey('period')) {
      final l$period = data['period'];
      result$data['period'] = l$period == null
          ? null
          : Input$InputDuration.fromJson((l$period as Map<String, dynamic>));
    }
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
    return Variables$Query$NorthAmericanSpecies._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get limit => (_$data['limit'] as int?);

  int? get offset => (_$data['offset'] as int?);

  Input$InputDuration? get period => (_$data['period'] as Input$InputDuration?);

  Input$InputLocation? get ne => (_$data['ne'] as Input$InputLocation?);

  Input$InputLocation? get sw => (_$data['sw'] as Input$InputLocation?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('limit')) {
      final l$limit = limit;
      result$data['limit'] = l$limit;
    }
    if (_$data.containsKey('offset')) {
      final l$offset = offset;
      result$data['offset'] = l$offset;
    }
    if (_$data.containsKey('period')) {
      final l$period = period;
      result$data['period'] = l$period?.toJson();
    }
    if (_$data.containsKey('ne')) {
      final l$ne = ne;
      result$data['ne'] = l$ne?.toJson();
    }
    if (_$data.containsKey('sw')) {
      final l$sw = sw;
      result$data['sw'] = l$sw?.toJson();
    }
    return result$data;
  }

  CopyWith$Variables$Query$NorthAmericanSpecies<
          Variables$Query$NorthAmericanSpecies>
      get copyWith => CopyWith$Variables$Query$NorthAmericanSpecies(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$NorthAmericanSpecies) ||
        runtimeType != other.runtimeType) {
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
    final l$offset = offset;
    final lOther$offset = other.offset;
    if (_$data.containsKey('offset') != other._$data.containsKey('offset')) {
      return false;
    }
    if (l$offset != lOther$offset) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$limit = limit;
    final l$offset = offset;
    final l$period = period;
    final l$ne = ne;
    final l$sw = sw;
    return Object.hashAll([
      _$data.containsKey('limit') ? l$limit : const {},
      _$data.containsKey('offset') ? l$offset : const {},
      _$data.containsKey('period') ? l$period : const {},
      _$data.containsKey('ne') ? l$ne : const {},
      _$data.containsKey('sw') ? l$sw : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$NorthAmericanSpecies<TRes> {
  factory CopyWith$Variables$Query$NorthAmericanSpecies(
    Variables$Query$NorthAmericanSpecies instance,
    TRes Function(Variables$Query$NorthAmericanSpecies) then,
  ) = _CopyWithImpl$Variables$Query$NorthAmericanSpecies;

  factory CopyWith$Variables$Query$NorthAmericanSpecies.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$NorthAmericanSpecies;

  TRes call({
    int? limit,
    int? offset,
    Input$InputDuration? period,
    Input$InputLocation? ne,
    Input$InputLocation? sw,
  });
}

class _CopyWithImpl$Variables$Query$NorthAmericanSpecies<TRes>
    implements CopyWith$Variables$Query$NorthAmericanSpecies<TRes> {
  _CopyWithImpl$Variables$Query$NorthAmericanSpecies(
    this._instance,
    this._then,
  );

  final Variables$Query$NorthAmericanSpecies _instance;

  final TRes Function(Variables$Query$NorthAmericanSpecies) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? limit = _undefined,
    Object? offset = _undefined,
    Object? period = _undefined,
    Object? ne = _undefined,
    Object? sw = _undefined,
  }) =>
      _then(Variables$Query$NorthAmericanSpecies._({
        ..._instance._$data,
        if (limit != _undefined) 'limit': (limit as int?),
        if (offset != _undefined) 'offset': (offset as int?),
        if (period != _undefined) 'period': (period as Input$InputDuration?),
        if (ne != _undefined) 'ne': (ne as Input$InputLocation?),
        if (sw != _undefined) 'sw': (sw as Input$InputLocation?),
      }));
}

class _CopyWithStubImpl$Variables$Query$NorthAmericanSpecies<TRes>
    implements CopyWith$Variables$Query$NorthAmericanSpecies<TRes> {
  _CopyWithStubImpl$Variables$Query$NorthAmericanSpecies(this._res);

  TRes _res;

  call({
    int? limit,
    int? offset,
    Input$InputDuration? period,
    Input$InputLocation? ne,
    Input$InputLocation? sw,
  }) =>
      _res;
}

class Query$NorthAmericanSpecies {
  Query$NorthAmericanSpecies({
    required this.species,
    this.$__typename = 'Query',
  });

  factory Query$NorthAmericanSpecies.fromJson(Map<String, dynamic> json) {
    final l$species = json['species'];
    final l$$__typename = json['__typename'];
    return Query$NorthAmericanSpecies(
      species: (l$species as List<dynamic>)
          .map((e) => Query$NorthAmericanSpecies$species.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$NorthAmericanSpecies$species> species;

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
    if (!(other is Query$NorthAmericanSpecies) ||
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

extension UtilityExtension$Query$NorthAmericanSpecies
    on Query$NorthAmericanSpecies {
  CopyWith$Query$NorthAmericanSpecies<Query$NorthAmericanSpecies>
      get copyWith => CopyWith$Query$NorthAmericanSpecies(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$NorthAmericanSpecies<TRes> {
  factory CopyWith$Query$NorthAmericanSpecies(
    Query$NorthAmericanSpecies instance,
    TRes Function(Query$NorthAmericanSpecies) then,
  ) = _CopyWithImpl$Query$NorthAmericanSpecies;

  factory CopyWith$Query$NorthAmericanSpecies.stub(TRes res) =
      _CopyWithStubImpl$Query$NorthAmericanSpecies;

  TRes call({
    List<Query$NorthAmericanSpecies$species>? species,
    String? $__typename,
  });
  TRes species(
      Iterable<Query$NorthAmericanSpecies$species> Function(
              Iterable<
                  CopyWith$Query$NorthAmericanSpecies$species<
                      Query$NorthAmericanSpecies$species>>)
          _fn);
}

class _CopyWithImpl$Query$NorthAmericanSpecies<TRes>
    implements CopyWith$Query$NorthAmericanSpecies<TRes> {
  _CopyWithImpl$Query$NorthAmericanSpecies(
    this._instance,
    this._then,
  );

  final Query$NorthAmericanSpecies _instance;

  final TRes Function(Query$NorthAmericanSpecies) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? species = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$NorthAmericanSpecies(
        species: species == _undefined || species == null
            ? _instance.species
            : (species as List<Query$NorthAmericanSpecies$species>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes species(
          Iterable<Query$NorthAmericanSpecies$species> Function(
                  Iterable<
                      CopyWith$Query$NorthAmericanSpecies$species<
                          Query$NorthAmericanSpecies$species>>)
              _fn) =>
      call(
          species: _fn(_instance.species
              .map((e) => CopyWith$Query$NorthAmericanSpecies$species(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$NorthAmericanSpecies<TRes>
    implements CopyWith$Query$NorthAmericanSpecies<TRes> {
  _CopyWithStubImpl$Query$NorthAmericanSpecies(this._res);

  TRes _res;

  call({
    List<Query$NorthAmericanSpecies$species>? species,
    String? $__typename,
  }) =>
      _res;

  species(_fn) => _res;
}

const documentNodeQueryNorthAmericanSpecies = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'NorthAmericanSpecies'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'limit')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
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
        variable: VariableNode(name: NameNode(value: 'period')),
        type: NamedTypeNode(
          name: NameNode(value: 'InputDuration'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
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
                name: NameNode(value: 'alpha'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'alpha6'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'ebirdCode'),
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
Query$NorthAmericanSpecies _parserFn$Query$NorthAmericanSpecies(
        Map<String, dynamic> data) =>
    Query$NorthAmericanSpecies.fromJson(data);
typedef OnQueryComplete$Query$NorthAmericanSpecies = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$NorthAmericanSpecies?,
);

class Options$Query$NorthAmericanSpecies
    extends graphql.QueryOptions<Query$NorthAmericanSpecies> {
  Options$Query$NorthAmericanSpecies({
    String? operationName,
    Variables$Query$NorthAmericanSpecies? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$NorthAmericanSpecies? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$NorthAmericanSpecies? onComplete,
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
                        : _parserFn$Query$NorthAmericanSpecies(data),
                  ),
          onError: onError,
          document: documentNodeQueryNorthAmericanSpecies,
          parserFn: _parserFn$Query$NorthAmericanSpecies,
        );

  final OnQueryComplete$Query$NorthAmericanSpecies? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$NorthAmericanSpecies
    extends graphql.WatchQueryOptions<Query$NorthAmericanSpecies> {
  WatchOptions$Query$NorthAmericanSpecies({
    String? operationName,
    Variables$Query$NorthAmericanSpecies? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$NorthAmericanSpecies? typedOptimisticResult,
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
          document: documentNodeQueryNorthAmericanSpecies,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$NorthAmericanSpecies,
        );
}

class FetchMoreOptions$Query$NorthAmericanSpecies
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$NorthAmericanSpecies({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$NorthAmericanSpecies? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryNorthAmericanSpecies,
        );
}

extension ClientExtension$Query$NorthAmericanSpecies on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$NorthAmericanSpecies>>
      query$NorthAmericanSpecies(
              [Options$Query$NorthAmericanSpecies? options]) async =>
          await this.query(options ?? Options$Query$NorthAmericanSpecies());
  graphql.ObservableQuery<Query$NorthAmericanSpecies>
      watchQuery$NorthAmericanSpecies(
              [WatchOptions$Query$NorthAmericanSpecies? options]) =>
          this.watchQuery(options ?? WatchOptions$Query$NorthAmericanSpecies());
  void writeQuery$NorthAmericanSpecies({
    required Query$NorthAmericanSpecies data,
    Variables$Query$NorthAmericanSpecies? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryNorthAmericanSpecies),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$NorthAmericanSpecies? readQuery$NorthAmericanSpecies({
    Variables$Query$NorthAmericanSpecies? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryNorthAmericanSpecies),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$NorthAmericanSpecies.fromJson(result);
  }
}

class Query$NorthAmericanSpecies$species {
  Query$NorthAmericanSpecies$species({
    required this.speciesId,
    this.species,
    required this.count,
    this.$__typename = 'SpeciesCount',
  });

  factory Query$NorthAmericanSpecies$species.fromJson(
      Map<String, dynamic> json) {
    final l$speciesId = json['speciesId'];
    final l$species = json['species'];
    final l$count = json['count'];
    final l$$__typename = json['__typename'];
    return Query$NorthAmericanSpecies$species(
      speciesId: (l$speciesId as String),
      species: l$species == null
          ? null
          : Query$NorthAmericanSpecies$species$species.fromJson(
              (l$species as Map<String, dynamic>)),
      count: (l$count as int),
      $__typename: (l$$__typename as String),
    );
  }

  final String speciesId;

  final Query$NorthAmericanSpecies$species$species? species;

  final int count;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$speciesId = speciesId;
    _resultData['speciesId'] = l$speciesId;
    final l$species = species;
    _resultData['species'] = l$species?.toJson();
    final l$count = count;
    _resultData['count'] = l$count;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$speciesId = speciesId;
    final l$species = species;
    final l$count = count;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$speciesId,
      l$species,
      l$count,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$NorthAmericanSpecies$species) ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$NorthAmericanSpecies$species
    on Query$NorthAmericanSpecies$species {
  CopyWith$Query$NorthAmericanSpecies$species<
          Query$NorthAmericanSpecies$species>
      get copyWith => CopyWith$Query$NorthAmericanSpecies$species(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$NorthAmericanSpecies$species<TRes> {
  factory CopyWith$Query$NorthAmericanSpecies$species(
    Query$NorthAmericanSpecies$species instance,
    TRes Function(Query$NorthAmericanSpecies$species) then,
  ) = _CopyWithImpl$Query$NorthAmericanSpecies$species;

  factory CopyWith$Query$NorthAmericanSpecies$species.stub(TRes res) =
      _CopyWithStubImpl$Query$NorthAmericanSpecies$species;

  TRes call({
    String? speciesId,
    Query$NorthAmericanSpecies$species$species? species,
    int? count,
    String? $__typename,
  });
  CopyWith$Query$NorthAmericanSpecies$species$species<TRes> get species;
}

class _CopyWithImpl$Query$NorthAmericanSpecies$species<TRes>
    implements CopyWith$Query$NorthAmericanSpecies$species<TRes> {
  _CopyWithImpl$Query$NorthAmericanSpecies$species(
    this._instance,
    this._then,
  );

  final Query$NorthAmericanSpecies$species _instance;

  final TRes Function(Query$NorthAmericanSpecies$species) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? speciesId = _undefined,
    Object? species = _undefined,
    Object? count = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$NorthAmericanSpecies$species(
        speciesId: speciesId == _undefined || speciesId == null
            ? _instance.speciesId
            : (speciesId as String),
        species: species == _undefined
            ? _instance.species
            : (species as Query$NorthAmericanSpecies$species$species?),
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$NorthAmericanSpecies$species$species<TRes> get species {
    final local$species = _instance.species;
    return local$species == null
        ? CopyWith$Query$NorthAmericanSpecies$species$species.stub(
            _then(_instance))
        : CopyWith$Query$NorthAmericanSpecies$species$species(
            local$species, (e) => call(species: e));
  }
}

class _CopyWithStubImpl$Query$NorthAmericanSpecies$species<TRes>
    implements CopyWith$Query$NorthAmericanSpecies$species<TRes> {
  _CopyWithStubImpl$Query$NorthAmericanSpecies$species(this._res);

  TRes _res;

  call({
    String? speciesId,
    Query$NorthAmericanSpecies$species$species? species,
    int? count,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$NorthAmericanSpecies$species$species<TRes> get species =>
      CopyWith$Query$NorthAmericanSpecies$species$species.stub(_res);
}

class Query$NorthAmericanSpecies$species$species {
  Query$NorthAmericanSpecies$species$species({
    required this.id,
    this.scientificName,
    required this.commonName,
    this.alpha,
    this.alpha6,
    this.ebirdCode,
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

  factory Query$NorthAmericanSpecies$species$species.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$scientificName = json['scientificName'];
    final l$commonName = json['commonName'];
    final l$alpha = json['alpha'];
    final l$alpha6 = json['alpha6'];
    final l$ebirdCode = json['ebirdCode'];
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
    return Query$NorthAmericanSpecies$species$species(
      id: (l$id as String),
      scientificName: (l$scientificName as String?),
      commonName: (l$commonName as String),
      alpha: (l$alpha as String?),
      alpha6: (l$alpha6 as String?),
      ebirdCode: (l$ebirdCode as String?),
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

  final String? alpha;

  final String? alpha6;

  final String? ebirdCode;

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
    final l$alpha = alpha;
    _resultData['alpha'] = l$alpha;
    final l$alpha6 = alpha6;
    _resultData['alpha6'] = l$alpha6;
    final l$ebirdCode = ebirdCode;
    _resultData['ebirdCode'] = l$ebirdCode;
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
    final l$alpha = alpha;
    final l$alpha6 = alpha6;
    final l$ebirdCode = ebirdCode;
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
      l$alpha,
      l$alpha6,
      l$ebirdCode,
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
    if (!(other is Query$NorthAmericanSpecies$species$species) ||
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
    final l$alpha = alpha;
    final lOther$alpha = other.alpha;
    if (l$alpha != lOther$alpha) {
      return false;
    }
    final l$alpha6 = alpha6;
    final lOther$alpha6 = other.alpha6;
    if (l$alpha6 != lOther$alpha6) {
      return false;
    }
    final l$ebirdCode = ebirdCode;
    final lOther$ebirdCode = other.ebirdCode;
    if (l$ebirdCode != lOther$ebirdCode) {
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

extension UtilityExtension$Query$NorthAmericanSpecies$species$species
    on Query$NorthAmericanSpecies$species$species {
  CopyWith$Query$NorthAmericanSpecies$species$species<
          Query$NorthAmericanSpecies$species$species>
      get copyWith => CopyWith$Query$NorthAmericanSpecies$species$species(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$NorthAmericanSpecies$species$species<TRes> {
  factory CopyWith$Query$NorthAmericanSpecies$species$species(
    Query$NorthAmericanSpecies$species$species instance,
    TRes Function(Query$NorthAmericanSpecies$species$species) then,
  ) = _CopyWithImpl$Query$NorthAmericanSpecies$species$species;

  factory CopyWith$Query$NorthAmericanSpecies$species$species.stub(TRes res) =
      _CopyWithStubImpl$Query$NorthAmericanSpecies$species$species;

  TRes call({
    String? id,
    String? scientificName,
    String? commonName,
    String? alpha,
    String? alpha6,
    String? ebirdCode,
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

class _CopyWithImpl$Query$NorthAmericanSpecies$species$species<TRes>
    implements CopyWith$Query$NorthAmericanSpecies$species$species<TRes> {
  _CopyWithImpl$Query$NorthAmericanSpecies$species$species(
    this._instance,
    this._then,
  );

  final Query$NorthAmericanSpecies$species$species _instance;

  final TRes Function(Query$NorthAmericanSpecies$species$species) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? scientificName = _undefined,
    Object? commonName = _undefined,
    Object? alpha = _undefined,
    Object? alpha6 = _undefined,
    Object? ebirdCode = _undefined,
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
      _then(Query$NorthAmericanSpecies$species$species(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        scientificName: scientificName == _undefined
            ? _instance.scientificName
            : (scientificName as String?),
        commonName: commonName == _undefined || commonName == null
            ? _instance.commonName
            : (commonName as String),
        alpha: alpha == _undefined ? _instance.alpha : (alpha as String?),
        alpha6: alpha6 == _undefined ? _instance.alpha6 : (alpha6 as String?),
        ebirdCode: ebirdCode == _undefined
            ? _instance.ebirdCode
            : (ebirdCode as String?),
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

class _CopyWithStubImpl$Query$NorthAmericanSpecies$species$species<TRes>
    implements CopyWith$Query$NorthAmericanSpecies$species$species<TRes> {
  _CopyWithStubImpl$Query$NorthAmericanSpecies$species$species(this._res);

  TRes _res;

  call({
    String? id,
    String? scientificName,
    String? commonName,
    String? alpha,
    String? alpha6,
    String? ebirdCode,
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
