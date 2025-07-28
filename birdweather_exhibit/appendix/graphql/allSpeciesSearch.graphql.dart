import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Variables$Query$AllSpeciesSearch {
  factory Variables$Query$AllSpeciesSearch({
    int? first,
    String? after,
    String? query,
    int? limit,
  }) =>
      Variables$Query$AllSpeciesSearch._({
        if (first != null) r'first': first,
        if (after != null) r'after': after,
        if (query != null) r'query': query,
        if (limit != null) r'limit': limit,
      });

  Variables$Query$AllSpeciesSearch._(this._$data);

  factory Variables$Query$AllSpeciesSearch.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('first')) {
      final l$first = data['first'];
      result$data['first'] = (l$first as int?);
    }
    if (data.containsKey('after')) {
      final l$after = data['after'];
      result$data['after'] = (l$after as String?);
    }
    if (data.containsKey('query')) {
      final l$query = data['query'];
      result$data['query'] = (l$query as String?);
    }
    if (data.containsKey('limit')) {
      final l$limit = data['limit'];
      result$data['limit'] = (l$limit as int?);
    }
    return Variables$Query$AllSpeciesSearch._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get first => (_$data['first'] as int?);

  String? get after => (_$data['after'] as String?);

  String? get query => (_$data['query'] as String?);

  int? get limit => (_$data['limit'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('first')) {
      final l$first = first;
      result$data['first'] = l$first;
    }
    if (_$data.containsKey('after')) {
      final l$after = after;
      result$data['after'] = l$after;
    }
    if (_$data.containsKey('query')) {
      final l$query = query;
      result$data['query'] = l$query;
    }
    if (_$data.containsKey('limit')) {
      final l$limit = limit;
      result$data['limit'] = l$limit;
    }
    return result$data;
  }

  CopyWith$Variables$Query$AllSpeciesSearch<Variables$Query$AllSpeciesSearch>
      get copyWith => CopyWith$Variables$Query$AllSpeciesSearch(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$AllSpeciesSearch) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$first = first;
    final lOther$first = other.first;
    if (_$data.containsKey('first') != other._$data.containsKey('first')) {
      return false;
    }
    if (l$first != lOther$first) {
      return false;
    }
    final l$after = after;
    final lOther$after = other.after;
    if (_$data.containsKey('after') != other._$data.containsKey('after')) {
      return false;
    }
    if (l$after != lOther$after) {
      return false;
    }
    final l$query = query;
    final lOther$query = other.query;
    if (_$data.containsKey('query') != other._$data.containsKey('query')) {
      return false;
    }
    if (l$query != lOther$query) {
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
    final l$first = first;
    final l$after = after;
    final l$query = query;
    final l$limit = limit;
    return Object.hashAll([
      _$data.containsKey('first') ? l$first : const {},
      _$data.containsKey('after') ? l$after : const {},
      _$data.containsKey('query') ? l$query : const {},
      _$data.containsKey('limit') ? l$limit : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$AllSpeciesSearch<TRes> {
  factory CopyWith$Variables$Query$AllSpeciesSearch(
    Variables$Query$AllSpeciesSearch instance,
    TRes Function(Variables$Query$AllSpeciesSearch) then,
  ) = _CopyWithImpl$Variables$Query$AllSpeciesSearch;

  factory CopyWith$Variables$Query$AllSpeciesSearch.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$AllSpeciesSearch;

  TRes call({
    int? first,
    String? after,
    String? query,
    int? limit,
  });
}

class _CopyWithImpl$Variables$Query$AllSpeciesSearch<TRes>
    implements CopyWith$Variables$Query$AllSpeciesSearch<TRes> {
  _CopyWithImpl$Variables$Query$AllSpeciesSearch(
    this._instance,
    this._then,
  );

  final Variables$Query$AllSpeciesSearch _instance;

  final TRes Function(Variables$Query$AllSpeciesSearch) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? first = _undefined,
    Object? after = _undefined,
    Object? query = _undefined,
    Object? limit = _undefined,
  }) =>
      _then(Variables$Query$AllSpeciesSearch._({
        ..._instance._$data,
        if (first != _undefined) 'first': (first as int?),
        if (after != _undefined) 'after': (after as String?),
        if (query != _undefined) 'query': (query as String?),
        if (limit != _undefined) 'limit': (limit as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$AllSpeciesSearch<TRes>
    implements CopyWith$Variables$Query$AllSpeciesSearch<TRes> {
  _CopyWithStubImpl$Variables$Query$AllSpeciesSearch(this._res);

  TRes _res;

  call({
    int? first,
    String? after,
    String? query,
    int? limit,
  }) =>
      _res;
}

class Query$AllSpeciesSearch {
  Query$AllSpeciesSearch({
    this.searchSpecies,
    this.$__typename = 'Query',
  });

  factory Query$AllSpeciesSearch.fromJson(Map<String, dynamic> json) {
    final l$searchSpecies = json['searchSpecies'];
    final l$$__typename = json['__typename'];
    return Query$AllSpeciesSearch(
      searchSpecies: l$searchSpecies == null
          ? null
          : Query$AllSpeciesSearch$searchSpecies.fromJson(
              (l$searchSpecies as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$AllSpeciesSearch$searchSpecies? searchSpecies;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$searchSpecies = searchSpecies;
    _resultData['searchSpecies'] = l$searchSpecies?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$searchSpecies = searchSpecies;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$searchSpecies,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$AllSpeciesSearch) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$searchSpecies = searchSpecies;
    final lOther$searchSpecies = other.searchSpecies;
    if (l$searchSpecies != lOther$searchSpecies) {
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

extension UtilityExtension$Query$AllSpeciesSearch on Query$AllSpeciesSearch {
  CopyWith$Query$AllSpeciesSearch<Query$AllSpeciesSearch> get copyWith =>
      CopyWith$Query$AllSpeciesSearch(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$AllSpeciesSearch<TRes> {
  factory CopyWith$Query$AllSpeciesSearch(
    Query$AllSpeciesSearch instance,
    TRes Function(Query$AllSpeciesSearch) then,
  ) = _CopyWithImpl$Query$AllSpeciesSearch;

  factory CopyWith$Query$AllSpeciesSearch.stub(TRes res) =
      _CopyWithStubImpl$Query$AllSpeciesSearch;

  TRes call({
    Query$AllSpeciesSearch$searchSpecies? searchSpecies,
    String? $__typename,
  });
  CopyWith$Query$AllSpeciesSearch$searchSpecies<TRes> get searchSpecies;
}

class _CopyWithImpl$Query$AllSpeciesSearch<TRes>
    implements CopyWith$Query$AllSpeciesSearch<TRes> {
  _CopyWithImpl$Query$AllSpeciesSearch(
    this._instance,
    this._then,
  );

  final Query$AllSpeciesSearch _instance;

  final TRes Function(Query$AllSpeciesSearch) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? searchSpecies = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$AllSpeciesSearch(
        searchSpecies: searchSpecies == _undefined
            ? _instance.searchSpecies
            : (searchSpecies as Query$AllSpeciesSearch$searchSpecies?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$AllSpeciesSearch$searchSpecies<TRes> get searchSpecies {
    final local$searchSpecies = _instance.searchSpecies;
    return local$searchSpecies == null
        ? CopyWith$Query$AllSpeciesSearch$searchSpecies.stub(_then(_instance))
        : CopyWith$Query$AllSpeciesSearch$searchSpecies(
            local$searchSpecies, (e) => call(searchSpecies: e));
  }
}

class _CopyWithStubImpl$Query$AllSpeciesSearch<TRes>
    implements CopyWith$Query$AllSpeciesSearch<TRes> {
  _CopyWithStubImpl$Query$AllSpeciesSearch(this._res);

  TRes _res;

  call({
    Query$AllSpeciesSearch$searchSpecies? searchSpecies,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$AllSpeciesSearch$searchSpecies<TRes> get searchSpecies =>
      CopyWith$Query$AllSpeciesSearch$searchSpecies.stub(_res);
}

const documentNodeQueryAllSpeciesSearch = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'AllSpeciesSearch'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'first')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'after')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'query')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
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
        name: NameNode(value: 'searchSpecies'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'first'),
            value: VariableNode(name: NameNode(value: 'first')),
          ),
          ArgumentNode(
            name: NameNode(value: 'after'),
            value: VariableNode(name: NameNode(value: 'after')),
          ),
          ArgumentNode(
            name: NameNode(value: 'query'),
            value: VariableNode(name: NameNode(value: 'query')),
          ),
          ArgumentNode(
            name: NameNode(value: 'limit'),
            value: VariableNode(name: NameNode(value: 'limit')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'pageInfo'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'hasNextPage'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'endCursor'),
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
            name: NameNode(value: 'nodes'),
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
Query$AllSpeciesSearch _parserFn$Query$AllSpeciesSearch(
        Map<String, dynamic> data) =>
    Query$AllSpeciesSearch.fromJson(data);
typedef OnQueryComplete$Query$AllSpeciesSearch = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$AllSpeciesSearch?,
);

class Options$Query$AllSpeciesSearch
    extends graphql.QueryOptions<Query$AllSpeciesSearch> {
  Options$Query$AllSpeciesSearch({
    String? operationName,
    Variables$Query$AllSpeciesSearch? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$AllSpeciesSearch? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$AllSpeciesSearch? onComplete,
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
                        : _parserFn$Query$AllSpeciesSearch(data),
                  ),
          onError: onError,
          document: documentNodeQueryAllSpeciesSearch,
          parserFn: _parserFn$Query$AllSpeciesSearch,
        );

  final OnQueryComplete$Query$AllSpeciesSearch? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$AllSpeciesSearch
    extends graphql.WatchQueryOptions<Query$AllSpeciesSearch> {
  WatchOptions$Query$AllSpeciesSearch({
    String? operationName,
    Variables$Query$AllSpeciesSearch? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$AllSpeciesSearch? typedOptimisticResult,
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
          document: documentNodeQueryAllSpeciesSearch,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$AllSpeciesSearch,
        );
}

class FetchMoreOptions$Query$AllSpeciesSearch extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$AllSpeciesSearch({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$AllSpeciesSearch? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryAllSpeciesSearch,
        );
}

extension ClientExtension$Query$AllSpeciesSearch on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$AllSpeciesSearch>> query$AllSpeciesSearch(
          [Options$Query$AllSpeciesSearch? options]) async =>
      await this.query(options ?? Options$Query$AllSpeciesSearch());
  graphql.ObservableQuery<Query$AllSpeciesSearch> watchQuery$AllSpeciesSearch(
          [WatchOptions$Query$AllSpeciesSearch? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$AllSpeciesSearch());
  void writeQuery$AllSpeciesSearch({
    required Query$AllSpeciesSearch data,
    Variables$Query$AllSpeciesSearch? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryAllSpeciesSearch),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$AllSpeciesSearch? readQuery$AllSpeciesSearch({
    Variables$Query$AllSpeciesSearch? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryAllSpeciesSearch),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$AllSpeciesSearch.fromJson(result);
  }
}

class Query$AllSpeciesSearch$searchSpecies {
  Query$AllSpeciesSearch$searchSpecies({
    required this.pageInfo,
    this.nodes,
    this.$__typename = 'SpeciesConnection',
  });

  factory Query$AllSpeciesSearch$searchSpecies.fromJson(
      Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$AllSpeciesSearch$searchSpecies(
      pageInfo: Query$AllSpeciesSearch$searchSpecies$pageInfo.fromJson(
          (l$pageInfo as Map<String, dynamic>)),
      nodes: (l$nodes as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$AllSpeciesSearch$searchSpecies$nodes.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$AllSpeciesSearch$searchSpecies$pageInfo pageInfo;

  final List<Query$AllSpeciesSearch$searchSpecies$nodes?>? nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo.toJson();
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pageInfo = pageInfo;
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pageInfo,
      l$nodes == null ? null : Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$AllSpeciesSearch$searchSpecies) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes != null && lOther$nodes != null) {
      if (l$nodes.length != lOther$nodes.length) {
        return false;
      }
      for (int i = 0; i < l$nodes.length; i++) {
        final l$nodes$entry = l$nodes[i];
        final lOther$nodes$entry = lOther$nodes[i];
        if (l$nodes$entry != lOther$nodes$entry) {
          return false;
        }
      }
    } else if (l$nodes != lOther$nodes) {
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

extension UtilityExtension$Query$AllSpeciesSearch$searchSpecies
    on Query$AllSpeciesSearch$searchSpecies {
  CopyWith$Query$AllSpeciesSearch$searchSpecies<
          Query$AllSpeciesSearch$searchSpecies>
      get copyWith => CopyWith$Query$AllSpeciesSearch$searchSpecies(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$AllSpeciesSearch$searchSpecies<TRes> {
  factory CopyWith$Query$AllSpeciesSearch$searchSpecies(
    Query$AllSpeciesSearch$searchSpecies instance,
    TRes Function(Query$AllSpeciesSearch$searchSpecies) then,
  ) = _CopyWithImpl$Query$AllSpeciesSearch$searchSpecies;

  factory CopyWith$Query$AllSpeciesSearch$searchSpecies.stub(TRes res) =
      _CopyWithStubImpl$Query$AllSpeciesSearch$searchSpecies;

  TRes call({
    Query$AllSpeciesSearch$searchSpecies$pageInfo? pageInfo,
    List<Query$AllSpeciesSearch$searchSpecies$nodes?>? nodes,
    String? $__typename,
  });
  CopyWith$Query$AllSpeciesSearch$searchSpecies$pageInfo<TRes> get pageInfo;
  TRes nodes(
      Iterable<Query$AllSpeciesSearch$searchSpecies$nodes?>? Function(
              Iterable<
                  CopyWith$Query$AllSpeciesSearch$searchSpecies$nodes<
                      Query$AllSpeciesSearch$searchSpecies$nodes>?>?)
          _fn);
}

class _CopyWithImpl$Query$AllSpeciesSearch$searchSpecies<TRes>
    implements CopyWith$Query$AllSpeciesSearch$searchSpecies<TRes> {
  _CopyWithImpl$Query$AllSpeciesSearch$searchSpecies(
    this._instance,
    this._then,
  );

  final Query$AllSpeciesSearch$searchSpecies _instance;

  final TRes Function(Query$AllSpeciesSearch$searchSpecies) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$AllSpeciesSearch$searchSpecies(
        pageInfo: pageInfo == _undefined || pageInfo == null
            ? _instance.pageInfo
            : (pageInfo as Query$AllSpeciesSearch$searchSpecies$pageInfo),
        nodes: nodes == _undefined
            ? _instance.nodes
            : (nodes as List<Query$AllSpeciesSearch$searchSpecies$nodes?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$AllSpeciesSearch$searchSpecies$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$AllSpeciesSearch$searchSpecies$pageInfo(
        local$pageInfo, (e) => call(pageInfo: e));
  }

  TRes nodes(
          Iterable<Query$AllSpeciesSearch$searchSpecies$nodes?>? Function(
                  Iterable<
                      CopyWith$Query$AllSpeciesSearch$searchSpecies$nodes<
                          Query$AllSpeciesSearch$searchSpecies$nodes>?>?)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes?.map((e) => e == null
              ? null
              : CopyWith$Query$AllSpeciesSearch$searchSpecies$nodes(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$AllSpeciesSearch$searchSpecies<TRes>
    implements CopyWith$Query$AllSpeciesSearch$searchSpecies<TRes> {
  _CopyWithStubImpl$Query$AllSpeciesSearch$searchSpecies(this._res);

  TRes _res;

  call({
    Query$AllSpeciesSearch$searchSpecies$pageInfo? pageInfo,
    List<Query$AllSpeciesSearch$searchSpecies$nodes?>? nodes,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$AllSpeciesSearch$searchSpecies$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$AllSpeciesSearch$searchSpecies$pageInfo.stub(_res);

  nodes(_fn) => _res;
}

class Query$AllSpeciesSearch$searchSpecies$pageInfo {
  Query$AllSpeciesSearch$searchSpecies$pageInfo({
    required this.hasNextPage,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$AllSpeciesSearch$searchSpecies$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$hasNextPage = json['hasNextPage'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$AllSpeciesSearch$searchSpecies$pageInfo(
      hasNextPage: (l$hasNextPage as bool),
      endCursor: (l$endCursor as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final bool hasNextPage;

  final String? endCursor;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$hasNextPage = hasNextPage;
    _resultData['hasNextPage'] = l$hasNextPage;
    final l$endCursor = endCursor;
    _resultData['endCursor'] = l$endCursor;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$hasNextPage = hasNextPage;
    final l$endCursor = endCursor;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$hasNextPage,
      l$endCursor,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$AllSpeciesSearch$searchSpecies$pageInfo) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$hasNextPage = hasNextPage;
    final lOther$hasNextPage = other.hasNextPage;
    if (l$hasNextPage != lOther$hasNextPage) {
      return false;
    }
    final l$endCursor = endCursor;
    final lOther$endCursor = other.endCursor;
    if (l$endCursor != lOther$endCursor) {
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

extension UtilityExtension$Query$AllSpeciesSearch$searchSpecies$pageInfo
    on Query$AllSpeciesSearch$searchSpecies$pageInfo {
  CopyWith$Query$AllSpeciesSearch$searchSpecies$pageInfo<
          Query$AllSpeciesSearch$searchSpecies$pageInfo>
      get copyWith => CopyWith$Query$AllSpeciesSearch$searchSpecies$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$AllSpeciesSearch$searchSpecies$pageInfo<TRes> {
  factory CopyWith$Query$AllSpeciesSearch$searchSpecies$pageInfo(
    Query$AllSpeciesSearch$searchSpecies$pageInfo instance,
    TRes Function(Query$AllSpeciesSearch$searchSpecies$pageInfo) then,
  ) = _CopyWithImpl$Query$AllSpeciesSearch$searchSpecies$pageInfo;

  factory CopyWith$Query$AllSpeciesSearch$searchSpecies$pageInfo.stub(
          TRes res) =
      _CopyWithStubImpl$Query$AllSpeciesSearch$searchSpecies$pageInfo;

  TRes call({
    bool? hasNextPage,
    String? endCursor,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$AllSpeciesSearch$searchSpecies$pageInfo<TRes>
    implements CopyWith$Query$AllSpeciesSearch$searchSpecies$pageInfo<TRes> {
  _CopyWithImpl$Query$AllSpeciesSearch$searchSpecies$pageInfo(
    this._instance,
    this._then,
  );

  final Query$AllSpeciesSearch$searchSpecies$pageInfo _instance;

  final TRes Function(Query$AllSpeciesSearch$searchSpecies$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$AllSpeciesSearch$searchSpecies$pageInfo(
        hasNextPage: hasNextPage == _undefined || hasNextPage == null
            ? _instance.hasNextPage
            : (hasNextPage as bool),
        endCursor: endCursor == _undefined
            ? _instance.endCursor
            : (endCursor as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$AllSpeciesSearch$searchSpecies$pageInfo<TRes>
    implements CopyWith$Query$AllSpeciesSearch$searchSpecies$pageInfo<TRes> {
  _CopyWithStubImpl$Query$AllSpeciesSearch$searchSpecies$pageInfo(this._res);

  TRes _res;

  call({
    bool? hasNextPage,
    String? endCursor,
    String? $__typename,
  }) =>
      _res;
}

class Query$AllSpeciesSearch$searchSpecies$nodes {
  Query$AllSpeciesSearch$searchSpecies$nodes({
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

  factory Query$AllSpeciesSearch$searchSpecies$nodes.fromJson(
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
    return Query$AllSpeciesSearch$searchSpecies$nodes(
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
    if (!(other is Query$AllSpeciesSearch$searchSpecies$nodes) ||
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

extension UtilityExtension$Query$AllSpeciesSearch$searchSpecies$nodes
    on Query$AllSpeciesSearch$searchSpecies$nodes {
  CopyWith$Query$AllSpeciesSearch$searchSpecies$nodes<
          Query$AllSpeciesSearch$searchSpecies$nodes>
      get copyWith => CopyWith$Query$AllSpeciesSearch$searchSpecies$nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$AllSpeciesSearch$searchSpecies$nodes<TRes> {
  factory CopyWith$Query$AllSpeciesSearch$searchSpecies$nodes(
    Query$AllSpeciesSearch$searchSpecies$nodes instance,
    TRes Function(Query$AllSpeciesSearch$searchSpecies$nodes) then,
  ) = _CopyWithImpl$Query$AllSpeciesSearch$searchSpecies$nodes;

  factory CopyWith$Query$AllSpeciesSearch$searchSpecies$nodes.stub(TRes res) =
      _CopyWithStubImpl$Query$AllSpeciesSearch$searchSpecies$nodes;

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

class _CopyWithImpl$Query$AllSpeciesSearch$searchSpecies$nodes<TRes>
    implements CopyWith$Query$AllSpeciesSearch$searchSpecies$nodes<TRes> {
  _CopyWithImpl$Query$AllSpeciesSearch$searchSpecies$nodes(
    this._instance,
    this._then,
  );

  final Query$AllSpeciesSearch$searchSpecies$nodes _instance;

  final TRes Function(Query$AllSpeciesSearch$searchSpecies$nodes) _then;

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
      _then(Query$AllSpeciesSearch$searchSpecies$nodes(
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

class _CopyWithStubImpl$Query$AllSpeciesSearch$searchSpecies$nodes<TRes>
    implements CopyWith$Query$AllSpeciesSearch$searchSpecies$nodes<TRes> {
  _CopyWithStubImpl$Query$AllSpeciesSearch$searchSpecies$nodes(this._res);

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
