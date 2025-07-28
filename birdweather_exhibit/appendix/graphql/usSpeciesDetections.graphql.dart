import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'schema.graphql.dart';

class Variables$Query$USSpeciesDetections {
  factory Variables$Query$USSpeciesDetections({
    int? first,
    String? after,
    Input$InputDuration? period,
    List<String>? countries,
  }) =>
      Variables$Query$USSpeciesDetections._({
        if (first != null) r'first': first,
        if (after != null) r'after': after,
        if (period != null) r'period': period,
        if (countries != null) r'countries': countries,
      });

  Variables$Query$USSpeciesDetections._(this._$data);

  factory Variables$Query$USSpeciesDetections.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('first')) {
      final l$first = data['first'];
      result$data['first'] = (l$first as int?);
    }
    if (data.containsKey('after')) {
      final l$after = data['after'];
      result$data['after'] = (l$after as String?);
    }
    if (data.containsKey('period')) {
      final l$period = data['period'];
      result$data['period'] = l$period == null
          ? null
          : Input$InputDuration.fromJson((l$period as Map<String, dynamic>));
    }
    if (data.containsKey('countries')) {
      final l$countries = data['countries'];
      result$data['countries'] =
          (l$countries as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    return Variables$Query$USSpeciesDetections._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get first => (_$data['first'] as int?);

  String? get after => (_$data['after'] as String?);

  Input$InputDuration? get period => (_$data['period'] as Input$InputDuration?);

  List<String>? get countries => (_$data['countries'] as List<String>?);

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
    if (_$data.containsKey('period')) {
      final l$period = period;
      result$data['period'] = l$period?.toJson();
    }
    if (_$data.containsKey('countries')) {
      final l$countries = countries;
      result$data['countries'] = l$countries?.map((e) => e).toList();
    }
    return result$data;
  }

  CopyWith$Variables$Query$USSpeciesDetections<
          Variables$Query$USSpeciesDetections>
      get copyWith => CopyWith$Variables$Query$USSpeciesDetections(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$USSpeciesDetections) ||
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
    final l$period = period;
    final lOther$period = other.period;
    if (_$data.containsKey('period') != other._$data.containsKey('period')) {
      return false;
    }
    if (l$period != lOther$period) {
      return false;
    }
    final l$countries = countries;
    final lOther$countries = other.countries;
    if (_$data.containsKey('countries') !=
        other._$data.containsKey('countries')) {
      return false;
    }
    if (l$countries != null && lOther$countries != null) {
      if (l$countries.length != lOther$countries.length) {
        return false;
      }
      for (int i = 0; i < l$countries.length; i++) {
        final l$countries$entry = l$countries[i];
        final lOther$countries$entry = lOther$countries[i];
        if (l$countries$entry != lOther$countries$entry) {
          return false;
        }
      }
    } else if (l$countries != lOther$countries) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$first = first;
    final l$after = after;
    final l$period = period;
    final l$countries = countries;
    return Object.hashAll([
      _$data.containsKey('first') ? l$first : const {},
      _$data.containsKey('after') ? l$after : const {},
      _$data.containsKey('period') ? l$period : const {},
      _$data.containsKey('countries')
          ? l$countries == null
              ? null
              : Object.hashAll(l$countries.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$USSpeciesDetections<TRes> {
  factory CopyWith$Variables$Query$USSpeciesDetections(
    Variables$Query$USSpeciesDetections instance,
    TRes Function(Variables$Query$USSpeciesDetections) then,
  ) = _CopyWithImpl$Variables$Query$USSpeciesDetections;

  factory CopyWith$Variables$Query$USSpeciesDetections.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$USSpeciesDetections;

  TRes call({
    int? first,
    String? after,
    Input$InputDuration? period,
    List<String>? countries,
  });
}

class _CopyWithImpl$Variables$Query$USSpeciesDetections<TRes>
    implements CopyWith$Variables$Query$USSpeciesDetections<TRes> {
  _CopyWithImpl$Variables$Query$USSpeciesDetections(
    this._instance,
    this._then,
  );

  final Variables$Query$USSpeciesDetections _instance;

  final TRes Function(Variables$Query$USSpeciesDetections) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? first = _undefined,
    Object? after = _undefined,
    Object? period = _undefined,
    Object? countries = _undefined,
  }) =>
      _then(Variables$Query$USSpeciesDetections._({
        ..._instance._$data,
        if (first != _undefined) 'first': (first as int?),
        if (after != _undefined) 'after': (after as String?),
        if (period != _undefined) 'period': (period as Input$InputDuration?),
        if (countries != _undefined) 'countries': (countries as List<String>?),
      }));
}

class _CopyWithStubImpl$Variables$Query$USSpeciesDetections<TRes>
    implements CopyWith$Variables$Query$USSpeciesDetections<TRes> {
  _CopyWithStubImpl$Variables$Query$USSpeciesDetections(this._res);

  TRes _res;

  call({
    int? first,
    String? after,
    Input$InputDuration? period,
    List<String>? countries,
  }) =>
      _res;
}

class Query$USSpeciesDetections {
  Query$USSpeciesDetections({
    required this.detections,
    this.$__typename = 'Query',
  });

  factory Query$USSpeciesDetections.fromJson(Map<String, dynamic> json) {
    final l$detections = json['detections'];
    final l$$__typename = json['__typename'];
    return Query$USSpeciesDetections(
      detections: Query$USSpeciesDetections$detections.fromJson(
          (l$detections as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$USSpeciesDetections$detections detections;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$detections = detections;
    _resultData['detections'] = l$detections.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$detections = detections;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$detections,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$USSpeciesDetections) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$detections = detections;
    final lOther$detections = other.detections;
    if (l$detections != lOther$detections) {
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

extension UtilityExtension$Query$USSpeciesDetections
    on Query$USSpeciesDetections {
  CopyWith$Query$USSpeciesDetections<Query$USSpeciesDetections> get copyWith =>
      CopyWith$Query$USSpeciesDetections(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$USSpeciesDetections<TRes> {
  factory CopyWith$Query$USSpeciesDetections(
    Query$USSpeciesDetections instance,
    TRes Function(Query$USSpeciesDetections) then,
  ) = _CopyWithImpl$Query$USSpeciesDetections;

  factory CopyWith$Query$USSpeciesDetections.stub(TRes res) =
      _CopyWithStubImpl$Query$USSpeciesDetections;

  TRes call({
    Query$USSpeciesDetections$detections? detections,
    String? $__typename,
  });
  CopyWith$Query$USSpeciesDetections$detections<TRes> get detections;
}

class _CopyWithImpl$Query$USSpeciesDetections<TRes>
    implements CopyWith$Query$USSpeciesDetections<TRes> {
  _CopyWithImpl$Query$USSpeciesDetections(
    this._instance,
    this._then,
  );

  final Query$USSpeciesDetections _instance;

  final TRes Function(Query$USSpeciesDetections) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? detections = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$USSpeciesDetections(
        detections: detections == _undefined || detections == null
            ? _instance.detections
            : (detections as Query$USSpeciesDetections$detections),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$USSpeciesDetections$detections<TRes> get detections {
    final local$detections = _instance.detections;
    return CopyWith$Query$USSpeciesDetections$detections(
        local$detections, (e) => call(detections: e));
  }
}

class _CopyWithStubImpl$Query$USSpeciesDetections<TRes>
    implements CopyWith$Query$USSpeciesDetections<TRes> {
  _CopyWithStubImpl$Query$USSpeciesDetections(this._res);

  TRes _res;

  call({
    Query$USSpeciesDetections$detections? detections,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$USSpeciesDetections$detections<TRes> get detections =>
      CopyWith$Query$USSpeciesDetections$detections.stub(_res);
}

const documentNodeQueryUSSpeciesDetections = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'USSpeciesDetections'),
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
        variable: VariableNode(name: NameNode(value: 'period')),
        type: NamedTypeNode(
          name: NameNode(value: 'InputDuration'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'countries')),
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
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'detections'),
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
            name: NameNode(value: 'period'),
            value: VariableNode(name: NameNode(value: 'period')),
          ),
          ArgumentNode(
            name: NameNode(value: 'countries'),
            value: VariableNode(name: NameNode(value: 'countries')),
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
Query$USSpeciesDetections _parserFn$Query$USSpeciesDetections(
        Map<String, dynamic> data) =>
    Query$USSpeciesDetections.fromJson(data);
typedef OnQueryComplete$Query$USSpeciesDetections = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$USSpeciesDetections?,
);

class Options$Query$USSpeciesDetections
    extends graphql.QueryOptions<Query$USSpeciesDetections> {
  Options$Query$USSpeciesDetections({
    String? operationName,
    Variables$Query$USSpeciesDetections? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$USSpeciesDetections? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$USSpeciesDetections? onComplete,
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
                        : _parserFn$Query$USSpeciesDetections(data),
                  ),
          onError: onError,
          document: documentNodeQueryUSSpeciesDetections,
          parserFn: _parserFn$Query$USSpeciesDetections,
        );

  final OnQueryComplete$Query$USSpeciesDetections? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$USSpeciesDetections
    extends graphql.WatchQueryOptions<Query$USSpeciesDetections> {
  WatchOptions$Query$USSpeciesDetections({
    String? operationName,
    Variables$Query$USSpeciesDetections? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$USSpeciesDetections? typedOptimisticResult,
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
          document: documentNodeQueryUSSpeciesDetections,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$USSpeciesDetections,
        );
}

class FetchMoreOptions$Query$USSpeciesDetections
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$USSpeciesDetections({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$USSpeciesDetections? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryUSSpeciesDetections,
        );
}

extension ClientExtension$Query$USSpeciesDetections on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$USSpeciesDetections>>
      query$USSpeciesDetections(
              [Options$Query$USSpeciesDetections? options]) async =>
          await this.query(options ?? Options$Query$USSpeciesDetections());
  graphql.ObservableQuery<Query$USSpeciesDetections>
      watchQuery$USSpeciesDetections(
              [WatchOptions$Query$USSpeciesDetections? options]) =>
          this.watchQuery(options ?? WatchOptions$Query$USSpeciesDetections());
  void writeQuery$USSpeciesDetections({
    required Query$USSpeciesDetections data,
    Variables$Query$USSpeciesDetections? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryUSSpeciesDetections),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$USSpeciesDetections? readQuery$USSpeciesDetections({
    Variables$Query$USSpeciesDetections? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryUSSpeciesDetections),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$USSpeciesDetections.fromJson(result);
  }
}

class Query$USSpeciesDetections$detections {
  Query$USSpeciesDetections$detections({
    required this.pageInfo,
    this.nodes,
    this.$__typename = 'DetectionConnection',
  });

  factory Query$USSpeciesDetections$detections.fromJson(
      Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$USSpeciesDetections$detections(
      pageInfo: Query$USSpeciesDetections$detections$pageInfo.fromJson(
          (l$pageInfo as Map<String, dynamic>)),
      nodes: (l$nodes as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$USSpeciesDetections$detections$nodes.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$USSpeciesDetections$detections$pageInfo pageInfo;

  final List<Query$USSpeciesDetections$detections$nodes?>? nodes;

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
    if (!(other is Query$USSpeciesDetections$detections) ||
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

extension UtilityExtension$Query$USSpeciesDetections$detections
    on Query$USSpeciesDetections$detections {
  CopyWith$Query$USSpeciesDetections$detections<
          Query$USSpeciesDetections$detections>
      get copyWith => CopyWith$Query$USSpeciesDetections$detections(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$USSpeciesDetections$detections<TRes> {
  factory CopyWith$Query$USSpeciesDetections$detections(
    Query$USSpeciesDetections$detections instance,
    TRes Function(Query$USSpeciesDetections$detections) then,
  ) = _CopyWithImpl$Query$USSpeciesDetections$detections;

  factory CopyWith$Query$USSpeciesDetections$detections.stub(TRes res) =
      _CopyWithStubImpl$Query$USSpeciesDetections$detections;

  TRes call({
    Query$USSpeciesDetections$detections$pageInfo? pageInfo,
    List<Query$USSpeciesDetections$detections$nodes?>? nodes,
    String? $__typename,
  });
  CopyWith$Query$USSpeciesDetections$detections$pageInfo<TRes> get pageInfo;
  TRes nodes(
      Iterable<Query$USSpeciesDetections$detections$nodes?>? Function(
              Iterable<
                  CopyWith$Query$USSpeciesDetections$detections$nodes<
                      Query$USSpeciesDetections$detections$nodes>?>?)
          _fn);
}

class _CopyWithImpl$Query$USSpeciesDetections$detections<TRes>
    implements CopyWith$Query$USSpeciesDetections$detections<TRes> {
  _CopyWithImpl$Query$USSpeciesDetections$detections(
    this._instance,
    this._then,
  );

  final Query$USSpeciesDetections$detections _instance;

  final TRes Function(Query$USSpeciesDetections$detections) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$USSpeciesDetections$detections(
        pageInfo: pageInfo == _undefined || pageInfo == null
            ? _instance.pageInfo
            : (pageInfo as Query$USSpeciesDetections$detections$pageInfo),
        nodes: nodes == _undefined
            ? _instance.nodes
            : (nodes as List<Query$USSpeciesDetections$detections$nodes?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$USSpeciesDetections$detections$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$USSpeciesDetections$detections$pageInfo(
        local$pageInfo, (e) => call(pageInfo: e));
  }

  TRes nodes(
          Iterable<Query$USSpeciesDetections$detections$nodes?>? Function(
                  Iterable<
                      CopyWith$Query$USSpeciesDetections$detections$nodes<
                          Query$USSpeciesDetections$detections$nodes>?>?)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes?.map((e) => e == null
              ? null
              : CopyWith$Query$USSpeciesDetections$detections$nodes(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$USSpeciesDetections$detections<TRes>
    implements CopyWith$Query$USSpeciesDetections$detections<TRes> {
  _CopyWithStubImpl$Query$USSpeciesDetections$detections(this._res);

  TRes _res;

  call({
    Query$USSpeciesDetections$detections$pageInfo? pageInfo,
    List<Query$USSpeciesDetections$detections$nodes?>? nodes,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$USSpeciesDetections$detections$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$USSpeciesDetections$detections$pageInfo.stub(_res);

  nodes(_fn) => _res;
}

class Query$USSpeciesDetections$detections$pageInfo {
  Query$USSpeciesDetections$detections$pageInfo({
    required this.hasNextPage,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$USSpeciesDetections$detections$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$hasNextPage = json['hasNextPage'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$USSpeciesDetections$detections$pageInfo(
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
    if (!(other is Query$USSpeciesDetections$detections$pageInfo) ||
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

extension UtilityExtension$Query$USSpeciesDetections$detections$pageInfo
    on Query$USSpeciesDetections$detections$pageInfo {
  CopyWith$Query$USSpeciesDetections$detections$pageInfo<
          Query$USSpeciesDetections$detections$pageInfo>
      get copyWith => CopyWith$Query$USSpeciesDetections$detections$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$USSpeciesDetections$detections$pageInfo<TRes> {
  factory CopyWith$Query$USSpeciesDetections$detections$pageInfo(
    Query$USSpeciesDetections$detections$pageInfo instance,
    TRes Function(Query$USSpeciesDetections$detections$pageInfo) then,
  ) = _CopyWithImpl$Query$USSpeciesDetections$detections$pageInfo;

  factory CopyWith$Query$USSpeciesDetections$detections$pageInfo.stub(
          TRes res) =
      _CopyWithStubImpl$Query$USSpeciesDetections$detections$pageInfo;

  TRes call({
    bool? hasNextPage,
    String? endCursor,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$USSpeciesDetections$detections$pageInfo<TRes>
    implements CopyWith$Query$USSpeciesDetections$detections$pageInfo<TRes> {
  _CopyWithImpl$Query$USSpeciesDetections$detections$pageInfo(
    this._instance,
    this._then,
  );

  final Query$USSpeciesDetections$detections$pageInfo _instance;

  final TRes Function(Query$USSpeciesDetections$detections$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$USSpeciesDetections$detections$pageInfo(
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

class _CopyWithStubImpl$Query$USSpeciesDetections$detections$pageInfo<TRes>
    implements CopyWith$Query$USSpeciesDetections$detections$pageInfo<TRes> {
  _CopyWithStubImpl$Query$USSpeciesDetections$detections$pageInfo(this._res);

  TRes _res;

  call({
    bool? hasNextPage,
    String? endCursor,
    String? $__typename,
  }) =>
      _res;
}

class Query$USSpeciesDetections$detections$nodes {
  Query$USSpeciesDetections$detections$nodes({
    required this.id,
    required this.species,
    this.$__typename = 'Detection',
  });

  factory Query$USSpeciesDetections$detections$nodes.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$species = json['species'];
    final l$$__typename = json['__typename'];
    return Query$USSpeciesDetections$detections$nodes(
      id: (l$id as String),
      species: Query$USSpeciesDetections$detections$nodes$species.fromJson(
          (l$species as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final Query$USSpeciesDetections$detections$nodes$species species;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$species = species;
    _resultData['species'] = l$species.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$species = species;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$species,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$USSpeciesDetections$detections$nodes) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$species = species;
    final lOther$species = other.species;
    if (l$species != lOther$species) {
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

extension UtilityExtension$Query$USSpeciesDetections$detections$nodes
    on Query$USSpeciesDetections$detections$nodes {
  CopyWith$Query$USSpeciesDetections$detections$nodes<
          Query$USSpeciesDetections$detections$nodes>
      get copyWith => CopyWith$Query$USSpeciesDetections$detections$nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$USSpeciesDetections$detections$nodes<TRes> {
  factory CopyWith$Query$USSpeciesDetections$detections$nodes(
    Query$USSpeciesDetections$detections$nodes instance,
    TRes Function(Query$USSpeciesDetections$detections$nodes) then,
  ) = _CopyWithImpl$Query$USSpeciesDetections$detections$nodes;

  factory CopyWith$Query$USSpeciesDetections$detections$nodes.stub(TRes res) =
      _CopyWithStubImpl$Query$USSpeciesDetections$detections$nodes;

  TRes call({
    String? id,
    Query$USSpeciesDetections$detections$nodes$species? species,
    String? $__typename,
  });
  CopyWith$Query$USSpeciesDetections$detections$nodes$species<TRes> get species;
}

class _CopyWithImpl$Query$USSpeciesDetections$detections$nodes<TRes>
    implements CopyWith$Query$USSpeciesDetections$detections$nodes<TRes> {
  _CopyWithImpl$Query$USSpeciesDetections$detections$nodes(
    this._instance,
    this._then,
  );

  final Query$USSpeciesDetections$detections$nodes _instance;

  final TRes Function(Query$USSpeciesDetections$detections$nodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? species = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$USSpeciesDetections$detections$nodes(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        species: species == _undefined || species == null
            ? _instance.species
            : (species as Query$USSpeciesDetections$detections$nodes$species),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$USSpeciesDetections$detections$nodes$species<TRes>
      get species {
    final local$species = _instance.species;
    return CopyWith$Query$USSpeciesDetections$detections$nodes$species(
        local$species, (e) => call(species: e));
  }
}

class _CopyWithStubImpl$Query$USSpeciesDetections$detections$nodes<TRes>
    implements CopyWith$Query$USSpeciesDetections$detections$nodes<TRes> {
  _CopyWithStubImpl$Query$USSpeciesDetections$detections$nodes(this._res);

  TRes _res;

  call({
    String? id,
    Query$USSpeciesDetections$detections$nodes$species? species,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$USSpeciesDetections$detections$nodes$species<TRes>
      get species =>
          CopyWith$Query$USSpeciesDetections$detections$nodes$species.stub(
              _res);
}

class Query$USSpeciesDetections$detections$nodes$species {
  Query$USSpeciesDetections$detections$nodes$species({
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

  factory Query$USSpeciesDetections$detections$nodes$species.fromJson(
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
    return Query$USSpeciesDetections$detections$nodes$species(
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
    if (!(other is Query$USSpeciesDetections$detections$nodes$species) ||
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

extension UtilityExtension$Query$USSpeciesDetections$detections$nodes$species
    on Query$USSpeciesDetections$detections$nodes$species {
  CopyWith$Query$USSpeciesDetections$detections$nodes$species<
          Query$USSpeciesDetections$detections$nodes$species>
      get copyWith =>
          CopyWith$Query$USSpeciesDetections$detections$nodes$species(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$USSpeciesDetections$detections$nodes$species<
    TRes> {
  factory CopyWith$Query$USSpeciesDetections$detections$nodes$species(
    Query$USSpeciesDetections$detections$nodes$species instance,
    TRes Function(Query$USSpeciesDetections$detections$nodes$species) then,
  ) = _CopyWithImpl$Query$USSpeciesDetections$detections$nodes$species;

  factory CopyWith$Query$USSpeciesDetections$detections$nodes$species.stub(
          TRes res) =
      _CopyWithStubImpl$Query$USSpeciesDetections$detections$nodes$species;

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

class _CopyWithImpl$Query$USSpeciesDetections$detections$nodes$species<TRes>
    implements
        CopyWith$Query$USSpeciesDetections$detections$nodes$species<TRes> {
  _CopyWithImpl$Query$USSpeciesDetections$detections$nodes$species(
    this._instance,
    this._then,
  );

  final Query$USSpeciesDetections$detections$nodes$species _instance;

  final TRes Function(Query$USSpeciesDetections$detections$nodes$species) _then;

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
      _then(Query$USSpeciesDetections$detections$nodes$species(
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

class _CopyWithStubImpl$Query$USSpeciesDetections$detections$nodes$species<TRes>
    implements
        CopyWith$Query$USSpeciesDetections$detections$nodes$species<TRes> {
  _CopyWithStubImpl$Query$USSpeciesDetections$detections$nodes$species(
      this._res);

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
