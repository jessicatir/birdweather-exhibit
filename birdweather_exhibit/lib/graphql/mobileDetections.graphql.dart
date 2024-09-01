import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'schema.graphql.dart';

class Variables$Query$MobileDetections {
  factory Variables$Query$MobileDetections({
    int? limit,
    Input$InputLocation? ne,
    Input$InputLocation? sw,
    String? speciesId,
    List<String>? stationIds,
    Input$InputDuration? period,
  }) =>
      Variables$Query$MobileDetections._({
        if (limit != null) r'limit': limit,
        if (ne != null) r'ne': ne,
        if (sw != null) r'sw': sw,
        if (speciesId != null) r'speciesId': speciesId,
        if (stationIds != null) r'stationIds': stationIds,
        if (period != null) r'period': period,
      });

  Variables$Query$MobileDetections._(this._$data);

  factory Variables$Query$MobileDetections.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('limit')) {
      final l$limit = data['limit'];
      result$data['limit'] = (l$limit as int?);
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
    if (data.containsKey('speciesId')) {
      final l$speciesId = data['speciesId'];
      result$data['speciesId'] = (l$speciesId as String?);
    }
    if (data.containsKey('stationIds')) {
      final l$stationIds = data['stationIds'];
      result$data['stationIds'] =
          (l$stationIds as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    if (data.containsKey('period')) {
      final l$period = data['period'];
      result$data['period'] = l$period == null
          ? null
          : Input$InputDuration.fromJson((l$period as Map<String, dynamic>));
    }
    return Variables$Query$MobileDetections._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get limit => (_$data['limit'] as int?);

  Input$InputLocation? get ne => (_$data['ne'] as Input$InputLocation?);

  Input$InputLocation? get sw => (_$data['sw'] as Input$InputLocation?);

  String? get speciesId => (_$data['speciesId'] as String?);

  List<String>? get stationIds => (_$data['stationIds'] as List<String>?);

  Input$InputDuration? get period => (_$data['period'] as Input$InputDuration?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('limit')) {
      final l$limit = limit;
      result$data['limit'] = l$limit;
    }
    if (_$data.containsKey('ne')) {
      final l$ne = ne;
      result$data['ne'] = l$ne?.toJson();
    }
    if (_$data.containsKey('sw')) {
      final l$sw = sw;
      result$data['sw'] = l$sw?.toJson();
    }
    if (_$data.containsKey('speciesId')) {
      final l$speciesId = speciesId;
      result$data['speciesId'] = l$speciesId;
    }
    if (_$data.containsKey('stationIds')) {
      final l$stationIds = stationIds;
      result$data['stationIds'] = l$stationIds?.map((e) => e).toList();
    }
    if (_$data.containsKey('period')) {
      final l$period = period;
      result$data['period'] = l$period?.toJson();
    }
    return result$data;
  }

  CopyWith$Variables$Query$MobileDetections<Variables$Query$MobileDetections>
      get copyWith => CopyWith$Variables$Query$MobileDetections(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$MobileDetections) ||
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
    final l$speciesId = speciesId;
    final lOther$speciesId = other.speciesId;
    if (_$data.containsKey('speciesId') !=
        other._$data.containsKey('speciesId')) {
      return false;
    }
    if (l$speciesId != lOther$speciesId) {
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
    final l$period = period;
    final lOther$period = other.period;
    if (_$data.containsKey('period') != other._$data.containsKey('period')) {
      return false;
    }
    if (l$period != lOther$period) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$limit = limit;
    final l$ne = ne;
    final l$sw = sw;
    final l$speciesId = speciesId;
    final l$stationIds = stationIds;
    final l$period = period;
    return Object.hashAll([
      _$data.containsKey('limit') ? l$limit : const {},
      _$data.containsKey('ne') ? l$ne : const {},
      _$data.containsKey('sw') ? l$sw : const {},
      _$data.containsKey('speciesId') ? l$speciesId : const {},
      _$data.containsKey('stationIds')
          ? l$stationIds == null
              ? null
              : Object.hashAll(l$stationIds.map((v) => v))
          : const {},
      _$data.containsKey('period') ? l$period : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$MobileDetections<TRes> {
  factory CopyWith$Variables$Query$MobileDetections(
    Variables$Query$MobileDetections instance,
    TRes Function(Variables$Query$MobileDetections) then,
  ) = _CopyWithImpl$Variables$Query$MobileDetections;

  factory CopyWith$Variables$Query$MobileDetections.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$MobileDetections;

  TRes call({
    int? limit,
    Input$InputLocation? ne,
    Input$InputLocation? sw,
    String? speciesId,
    List<String>? stationIds,
    Input$InputDuration? period,
  });
}

class _CopyWithImpl$Variables$Query$MobileDetections<TRes>
    implements CopyWith$Variables$Query$MobileDetections<TRes> {
  _CopyWithImpl$Variables$Query$MobileDetections(
    this._instance,
    this._then,
  );

  final Variables$Query$MobileDetections _instance;

  final TRes Function(Variables$Query$MobileDetections) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? limit = _undefined,
    Object? ne = _undefined,
    Object? sw = _undefined,
    Object? speciesId = _undefined,
    Object? stationIds = _undefined,
    Object? period = _undefined,
  }) =>
      _then(Variables$Query$MobileDetections._({
        ..._instance._$data,
        if (limit != _undefined) 'limit': (limit as int?),
        if (ne != _undefined) 'ne': (ne as Input$InputLocation?),
        if (sw != _undefined) 'sw': (sw as Input$InputLocation?),
        if (speciesId != _undefined) 'speciesId': (speciesId as String?),
        if (stationIds != _undefined)
          'stationIds': (stationIds as List<String>?),
        if (period != _undefined) 'period': (period as Input$InputDuration?),
      }));
}

class _CopyWithStubImpl$Variables$Query$MobileDetections<TRes>
    implements CopyWith$Variables$Query$MobileDetections<TRes> {
  _CopyWithStubImpl$Variables$Query$MobileDetections(this._res);

  TRes _res;

  call({
    int? limit,
    Input$InputLocation? ne,
    Input$InputLocation? sw,
    String? speciesId,
    List<String>? stationIds,
    Input$InputDuration? period,
  }) =>
      _res;
}

class Query$MobileDetections {
  Query$MobileDetections({
    required this.detections,
    this.$__typename = 'Query',
  });

  factory Query$MobileDetections.fromJson(Map<String, dynamic> json) {
    final l$detections = json['detections'];
    final l$$__typename = json['__typename'];
    return Query$MobileDetections(
      detections: Query$MobileDetections$detections.fromJson(
          (l$detections as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$MobileDetections$detections detections;

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
    if (!(other is Query$MobileDetections) ||
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

extension UtilityExtension$Query$MobileDetections on Query$MobileDetections {
  CopyWith$Query$MobileDetections<Query$MobileDetections> get copyWith =>
      CopyWith$Query$MobileDetections(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$MobileDetections<TRes> {
  factory CopyWith$Query$MobileDetections(
    Query$MobileDetections instance,
    TRes Function(Query$MobileDetections) then,
  ) = _CopyWithImpl$Query$MobileDetections;

  factory CopyWith$Query$MobileDetections.stub(TRes res) =
      _CopyWithStubImpl$Query$MobileDetections;

  TRes call({
    Query$MobileDetections$detections? detections,
    String? $__typename,
  });
  CopyWith$Query$MobileDetections$detections<TRes> get detections;
}

class _CopyWithImpl$Query$MobileDetections<TRes>
    implements CopyWith$Query$MobileDetections<TRes> {
  _CopyWithImpl$Query$MobileDetections(
    this._instance,
    this._then,
  );

  final Query$MobileDetections _instance;

  final TRes Function(Query$MobileDetections) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? detections = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$MobileDetections(
        detections: detections == _undefined || detections == null
            ? _instance.detections
            : (detections as Query$MobileDetections$detections),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$MobileDetections$detections<TRes> get detections {
    final local$detections = _instance.detections;
    return CopyWith$Query$MobileDetections$detections(
        local$detections, (e) => call(detections: e));
  }
}

class _CopyWithStubImpl$Query$MobileDetections<TRes>
    implements CopyWith$Query$MobileDetections<TRes> {
  _CopyWithStubImpl$Query$MobileDetections(this._res);

  TRes _res;

  call({
    Query$MobileDetections$detections? detections,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$MobileDetections$detections<TRes> get detections =>
      CopyWith$Query$MobileDetections$detections.stub(_res);
}

const documentNodeQueryMobileDetections = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'MobileDetections'),
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
        variable: VariableNode(name: NameNode(value: 'speciesId')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
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
        variable: VariableNode(name: NameNode(value: 'period')),
        type: NamedTypeNode(
          name: NameNode(value: 'InputDuration'),
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
            value: VariableNode(name: NameNode(value: 'limit')),
          ),
          ArgumentNode(
            name: NameNode(value: 'stationIds'),
            value: VariableNode(name: NameNode(value: 'stationIds')),
          ),
          ArgumentNode(
            name: NameNode(value: 'speciesId'),
            value: VariableNode(name: NameNode(value: 'speciesId')),
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
                name: NameNode(value: 'timestamp'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'score'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'confidence'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'probability'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'certainty'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'coords'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'lat'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'lon'),
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
                name: NameNode(value: 'voteUrl'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'flagUrl'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'soundscape'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'url'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'startTime'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'endTime'),
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
Query$MobileDetections _parserFn$Query$MobileDetections(
        Map<String, dynamic> data) =>
    Query$MobileDetections.fromJson(data);
typedef OnQueryComplete$Query$MobileDetections = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$MobileDetections?,
);

class Options$Query$MobileDetections
    extends graphql.QueryOptions<Query$MobileDetections> {
  Options$Query$MobileDetections({
    String? operationName,
    Variables$Query$MobileDetections? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$MobileDetections? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$MobileDetections? onComplete,
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
                        : _parserFn$Query$MobileDetections(data),
                  ),
          onError: onError,
          document: documentNodeQueryMobileDetections,
          parserFn: _parserFn$Query$MobileDetections,
        );

  final OnQueryComplete$Query$MobileDetections? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$MobileDetections
    extends graphql.WatchQueryOptions<Query$MobileDetections> {
  WatchOptions$Query$MobileDetections({
    String? operationName,
    Variables$Query$MobileDetections? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$MobileDetections? typedOptimisticResult,
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
          document: documentNodeQueryMobileDetections,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$MobileDetections,
        );
}

class FetchMoreOptions$Query$MobileDetections extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$MobileDetections({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$MobileDetections? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryMobileDetections,
        );
}

extension ClientExtension$Query$MobileDetections on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$MobileDetections>> query$MobileDetections(
          [Options$Query$MobileDetections? options]) async =>
      await this.query(options ?? Options$Query$MobileDetections());
  graphql.ObservableQuery<Query$MobileDetections> watchQuery$MobileDetections(
          [WatchOptions$Query$MobileDetections? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$MobileDetections());
  void writeQuery$MobileDetections({
    required Query$MobileDetections data,
    Variables$Query$MobileDetections? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryMobileDetections),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$MobileDetections? readQuery$MobileDetections({
    Variables$Query$MobileDetections? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryMobileDetections),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$MobileDetections.fromJson(result);
  }
}

class Query$MobileDetections$detections {
  Query$MobileDetections$detections({
    this.nodes,
    this.$__typename = 'DetectionConnection',
  });

  factory Query$MobileDetections$detections.fromJson(
      Map<String, dynamic> json) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$MobileDetections$detections(
      nodes: (l$nodes as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$MobileDetections$detections$nodes.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$MobileDetections$detections$nodes?>? nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$nodes == null ? null : Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$MobileDetections$detections) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$MobileDetections$detections
    on Query$MobileDetections$detections {
  CopyWith$Query$MobileDetections$detections<Query$MobileDetections$detections>
      get copyWith => CopyWith$Query$MobileDetections$detections(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$MobileDetections$detections<TRes> {
  factory CopyWith$Query$MobileDetections$detections(
    Query$MobileDetections$detections instance,
    TRes Function(Query$MobileDetections$detections) then,
  ) = _CopyWithImpl$Query$MobileDetections$detections;

  factory CopyWith$Query$MobileDetections$detections.stub(TRes res) =
      _CopyWithStubImpl$Query$MobileDetections$detections;

  TRes call({
    List<Query$MobileDetections$detections$nodes?>? nodes,
    String? $__typename,
  });
  TRes nodes(
      Iterable<Query$MobileDetections$detections$nodes?>? Function(
              Iterable<
                  CopyWith$Query$MobileDetections$detections$nodes<
                      Query$MobileDetections$detections$nodes>?>?)
          _fn);
}

class _CopyWithImpl$Query$MobileDetections$detections<TRes>
    implements CopyWith$Query$MobileDetections$detections<TRes> {
  _CopyWithImpl$Query$MobileDetections$detections(
    this._instance,
    this._then,
  );

  final Query$MobileDetections$detections _instance;

  final TRes Function(Query$MobileDetections$detections) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$MobileDetections$detections(
        nodes: nodes == _undefined
            ? _instance.nodes
            : (nodes as List<Query$MobileDetections$detections$nodes?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes nodes(
          Iterable<Query$MobileDetections$detections$nodes?>? Function(
                  Iterable<
                      CopyWith$Query$MobileDetections$detections$nodes<
                          Query$MobileDetections$detections$nodes>?>?)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes?.map((e) => e == null
              ? null
              : CopyWith$Query$MobileDetections$detections$nodes(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$MobileDetections$detections<TRes>
    implements CopyWith$Query$MobileDetections$detections<TRes> {
  _CopyWithStubImpl$Query$MobileDetections$detections(this._res);

  TRes _res;

  call({
    List<Query$MobileDetections$detections$nodes?>? nodes,
    String? $__typename,
  }) =>
      _res;

  nodes(_fn) => _res;
}

class Query$MobileDetections$detections$nodes {
  Query$MobileDetections$detections$nodes({
    required this.id,
    this.timestamp,
    required this.score,
    required this.confidence,
    this.probability,
    required this.certainty,
    required this.coords,
    required this.species,
    required this.voteUrl,
    required this.flagUrl,
    this.soundscape,
    this.$__typename = 'Detection',
  });

  factory Query$MobileDetections$detections$nodes.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$timestamp = json['timestamp'];
    final l$score = json['score'];
    final l$confidence = json['confidence'];
    final l$probability = json['probability'];
    final l$certainty = json['certainty'];
    final l$coords = json['coords'];
    final l$species = json['species'];
    final l$voteUrl = json['voteUrl'];
    final l$flagUrl = json['flagUrl'];
    final l$soundscape = json['soundscape'];
    final l$$__typename = json['__typename'];
    return Query$MobileDetections$detections$nodes(
      id: (l$id as String),
      timestamp: (l$timestamp as String?),
      score: (l$score as num).toDouble(),
      confidence: (l$confidence as num).toDouble(),
      probability: (l$probability as num?)?.toDouble(),
      certainty: (l$certainty as String),
      coords: Query$MobileDetections$detections$nodes$coords.fromJson(
          (l$coords as Map<String, dynamic>)),
      species: Query$MobileDetections$detections$nodes$species.fromJson(
          (l$species as Map<String, dynamic>)),
      voteUrl: (l$voteUrl as String),
      flagUrl: (l$flagUrl as String),
      soundscape: l$soundscape == null
          ? null
          : Query$MobileDetections$detections$nodes$soundscape.fromJson(
              (l$soundscape as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String? timestamp;

  final double score;

  final double confidence;

  final double? probability;

  final String certainty;

  final Query$MobileDetections$detections$nodes$coords coords;

  final Query$MobileDetections$detections$nodes$species species;

  final String voteUrl;

  final String flagUrl;

  final Query$MobileDetections$detections$nodes$soundscape? soundscape;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$timestamp = timestamp;
    _resultData['timestamp'] = l$timestamp;
    final l$score = score;
    _resultData['score'] = l$score;
    final l$confidence = confidence;
    _resultData['confidence'] = l$confidence;
    final l$probability = probability;
    _resultData['probability'] = l$probability;
    final l$certainty = certainty;
    _resultData['certainty'] = l$certainty;
    final l$coords = coords;
    _resultData['coords'] = l$coords.toJson();
    final l$species = species;
    _resultData['species'] = l$species.toJson();
    final l$voteUrl = voteUrl;
    _resultData['voteUrl'] = l$voteUrl;
    final l$flagUrl = flagUrl;
    _resultData['flagUrl'] = l$flagUrl;
    final l$soundscape = soundscape;
    _resultData['soundscape'] = l$soundscape?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$timestamp = timestamp;
    final l$score = score;
    final l$confidence = confidence;
    final l$probability = probability;
    final l$certainty = certainty;
    final l$coords = coords;
    final l$species = species;
    final l$voteUrl = voteUrl;
    final l$flagUrl = flagUrl;
    final l$soundscape = soundscape;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$timestamp,
      l$score,
      l$confidence,
      l$probability,
      l$certainty,
      l$coords,
      l$species,
      l$voteUrl,
      l$flagUrl,
      l$soundscape,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$MobileDetections$detections$nodes) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$timestamp = timestamp;
    final lOther$timestamp = other.timestamp;
    if (l$timestamp != lOther$timestamp) {
      return false;
    }
    final l$score = score;
    final lOther$score = other.score;
    if (l$score != lOther$score) {
      return false;
    }
    final l$confidence = confidence;
    final lOther$confidence = other.confidence;
    if (l$confidence != lOther$confidence) {
      return false;
    }
    final l$probability = probability;
    final lOther$probability = other.probability;
    if (l$probability != lOther$probability) {
      return false;
    }
    final l$certainty = certainty;
    final lOther$certainty = other.certainty;
    if (l$certainty != lOther$certainty) {
      return false;
    }
    final l$coords = coords;
    final lOther$coords = other.coords;
    if (l$coords != lOther$coords) {
      return false;
    }
    final l$species = species;
    final lOther$species = other.species;
    if (l$species != lOther$species) {
      return false;
    }
    final l$voteUrl = voteUrl;
    final lOther$voteUrl = other.voteUrl;
    if (l$voteUrl != lOther$voteUrl) {
      return false;
    }
    final l$flagUrl = flagUrl;
    final lOther$flagUrl = other.flagUrl;
    if (l$flagUrl != lOther$flagUrl) {
      return false;
    }
    final l$soundscape = soundscape;
    final lOther$soundscape = other.soundscape;
    if (l$soundscape != lOther$soundscape) {
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

extension UtilityExtension$Query$MobileDetections$detections$nodes
    on Query$MobileDetections$detections$nodes {
  CopyWith$Query$MobileDetections$detections$nodes<
          Query$MobileDetections$detections$nodes>
      get copyWith => CopyWith$Query$MobileDetections$detections$nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$MobileDetections$detections$nodes<TRes> {
  factory CopyWith$Query$MobileDetections$detections$nodes(
    Query$MobileDetections$detections$nodes instance,
    TRes Function(Query$MobileDetections$detections$nodes) then,
  ) = _CopyWithImpl$Query$MobileDetections$detections$nodes;

  factory CopyWith$Query$MobileDetections$detections$nodes.stub(TRes res) =
      _CopyWithStubImpl$Query$MobileDetections$detections$nodes;

  TRes call({
    String? id,
    String? timestamp,
    double? score,
    double? confidence,
    double? probability,
    String? certainty,
    Query$MobileDetections$detections$nodes$coords? coords,
    Query$MobileDetections$detections$nodes$species? species,
    String? voteUrl,
    String? flagUrl,
    Query$MobileDetections$detections$nodes$soundscape? soundscape,
    String? $__typename,
  });
  CopyWith$Query$MobileDetections$detections$nodes$coords<TRes> get coords;
  CopyWith$Query$MobileDetections$detections$nodes$species<TRes> get species;
  CopyWith$Query$MobileDetections$detections$nodes$soundscape<TRes>
      get soundscape;
}

class _CopyWithImpl$Query$MobileDetections$detections$nodes<TRes>
    implements CopyWith$Query$MobileDetections$detections$nodes<TRes> {
  _CopyWithImpl$Query$MobileDetections$detections$nodes(
    this._instance,
    this._then,
  );

  final Query$MobileDetections$detections$nodes _instance;

  final TRes Function(Query$MobileDetections$detections$nodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? timestamp = _undefined,
    Object? score = _undefined,
    Object? confidence = _undefined,
    Object? probability = _undefined,
    Object? certainty = _undefined,
    Object? coords = _undefined,
    Object? species = _undefined,
    Object? voteUrl = _undefined,
    Object? flagUrl = _undefined,
    Object? soundscape = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$MobileDetections$detections$nodes(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        timestamp: timestamp == _undefined
            ? _instance.timestamp
            : (timestamp as String?),
        score: score == _undefined || score == null
            ? _instance.score
            : (score as double),
        confidence: confidence == _undefined || confidence == null
            ? _instance.confidence
            : (confidence as double),
        probability: probability == _undefined
            ? _instance.probability
            : (probability as double?),
        certainty: certainty == _undefined || certainty == null
            ? _instance.certainty
            : (certainty as String),
        coords: coords == _undefined || coords == null
            ? _instance.coords
            : (coords as Query$MobileDetections$detections$nodes$coords),
        species: species == _undefined || species == null
            ? _instance.species
            : (species as Query$MobileDetections$detections$nodes$species),
        voteUrl: voteUrl == _undefined || voteUrl == null
            ? _instance.voteUrl
            : (voteUrl as String),
        flagUrl: flagUrl == _undefined || flagUrl == null
            ? _instance.flagUrl
            : (flagUrl as String),
        soundscape: soundscape == _undefined
            ? _instance.soundscape
            : (soundscape
                as Query$MobileDetections$detections$nodes$soundscape?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$MobileDetections$detections$nodes$coords<TRes> get coords {
    final local$coords = _instance.coords;
    return CopyWith$Query$MobileDetections$detections$nodes$coords(
        local$coords, (e) => call(coords: e));
  }

  CopyWith$Query$MobileDetections$detections$nodes$species<TRes> get species {
    final local$species = _instance.species;
    return CopyWith$Query$MobileDetections$detections$nodes$species(
        local$species, (e) => call(species: e));
  }

  CopyWith$Query$MobileDetections$detections$nodes$soundscape<TRes>
      get soundscape {
    final local$soundscape = _instance.soundscape;
    return local$soundscape == null
        ? CopyWith$Query$MobileDetections$detections$nodes$soundscape.stub(
            _then(_instance))
        : CopyWith$Query$MobileDetections$detections$nodes$soundscape(
            local$soundscape, (e) => call(soundscape: e));
  }
}

class _CopyWithStubImpl$Query$MobileDetections$detections$nodes<TRes>
    implements CopyWith$Query$MobileDetections$detections$nodes<TRes> {
  _CopyWithStubImpl$Query$MobileDetections$detections$nodes(this._res);

  TRes _res;

  call({
    String? id,
    String? timestamp,
    double? score,
    double? confidence,
    double? probability,
    String? certainty,
    Query$MobileDetections$detections$nodes$coords? coords,
    Query$MobileDetections$detections$nodes$species? species,
    String? voteUrl,
    String? flagUrl,
    Query$MobileDetections$detections$nodes$soundscape? soundscape,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$MobileDetections$detections$nodes$coords<TRes> get coords =>
      CopyWith$Query$MobileDetections$detections$nodes$coords.stub(_res);

  CopyWith$Query$MobileDetections$detections$nodes$species<TRes> get species =>
      CopyWith$Query$MobileDetections$detections$nodes$species.stub(_res);

  CopyWith$Query$MobileDetections$detections$nodes$soundscape<TRes>
      get soundscape =>
          CopyWith$Query$MobileDetections$detections$nodes$soundscape.stub(
              _res);
}

class Query$MobileDetections$detections$nodes$coords {
  Query$MobileDetections$detections$nodes$coords({
    required this.lat,
    required this.lon,
    this.$__typename = 'Coordinates',
  });

  factory Query$MobileDetections$detections$nodes$coords.fromJson(
      Map<String, dynamic> json) {
    final l$lat = json['lat'];
    final l$lon = json['lon'];
    final l$$__typename = json['__typename'];
    return Query$MobileDetections$detections$nodes$coords(
      lat: (l$lat as num).toDouble(),
      lon: (l$lon as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final double lat;

  final double lon;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$lat = lat;
    _resultData['lat'] = l$lat;
    final l$lon = lon;
    _resultData['lon'] = l$lon;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$lat = lat;
    final l$lon = lon;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$lat,
      l$lon,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$MobileDetections$detections$nodes$coords) ||
        runtimeType != other.runtimeType) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$MobileDetections$detections$nodes$coords
    on Query$MobileDetections$detections$nodes$coords {
  CopyWith$Query$MobileDetections$detections$nodes$coords<
          Query$MobileDetections$detections$nodes$coords>
      get copyWith => CopyWith$Query$MobileDetections$detections$nodes$coords(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$MobileDetections$detections$nodes$coords<TRes> {
  factory CopyWith$Query$MobileDetections$detections$nodes$coords(
    Query$MobileDetections$detections$nodes$coords instance,
    TRes Function(Query$MobileDetections$detections$nodes$coords) then,
  ) = _CopyWithImpl$Query$MobileDetections$detections$nodes$coords;

  factory CopyWith$Query$MobileDetections$detections$nodes$coords.stub(
          TRes res) =
      _CopyWithStubImpl$Query$MobileDetections$detections$nodes$coords;

  TRes call({
    double? lat,
    double? lon,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$MobileDetections$detections$nodes$coords<TRes>
    implements CopyWith$Query$MobileDetections$detections$nodes$coords<TRes> {
  _CopyWithImpl$Query$MobileDetections$detections$nodes$coords(
    this._instance,
    this._then,
  );

  final Query$MobileDetections$detections$nodes$coords _instance;

  final TRes Function(Query$MobileDetections$detections$nodes$coords) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? lat = _undefined,
    Object? lon = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$MobileDetections$detections$nodes$coords(
        lat: lat == _undefined || lat == null ? _instance.lat : (lat as double),
        lon: lon == _undefined || lon == null ? _instance.lon : (lon as double),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$MobileDetections$detections$nodes$coords<TRes>
    implements CopyWith$Query$MobileDetections$detections$nodes$coords<TRes> {
  _CopyWithStubImpl$Query$MobileDetections$detections$nodes$coords(this._res);

  TRes _res;

  call({
    double? lat,
    double? lon,
    String? $__typename,
  }) =>
      _res;
}

class Query$MobileDetections$detections$nodes$species {
  Query$MobileDetections$detections$nodes$species({
    required this.id,
    this.scientificName,
    required this.commonName,
    this.thumbnailUrl,
    this.imageUrl,
    this.wikipediaUrl,
    this.wikipediaSummary,
    required this.color,
    this.imageCredit,
    this.imageLicense,
    this.imageLicenseUrl,
    this.$__typename = 'Species',
  });

  factory Query$MobileDetections$detections$nodes$species.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$scientificName = json['scientificName'];
    final l$commonName = json['commonName'];
    final l$thumbnailUrl = json['thumbnailUrl'];
    final l$imageUrl = json['imageUrl'];
    final l$wikipediaUrl = json['wikipediaUrl'];
    final l$wikipediaSummary = json['wikipediaSummary'];
    final l$color = json['color'];
    final l$imageCredit = json['imageCredit'];
    final l$imageLicense = json['imageLicense'];
    final l$imageLicenseUrl = json['imageLicenseUrl'];
    final l$$__typename = json['__typename'];
    return Query$MobileDetections$detections$nodes$species(
      id: (l$id as String),
      scientificName: (l$scientificName as String?),
      commonName: (l$commonName as String),
      thumbnailUrl: (l$thumbnailUrl as String?),
      imageUrl: (l$imageUrl as String?),
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
    if (!(other is Query$MobileDetections$detections$nodes$species) ||
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

extension UtilityExtension$Query$MobileDetections$detections$nodes$species
    on Query$MobileDetections$detections$nodes$species {
  CopyWith$Query$MobileDetections$detections$nodes$species<
          Query$MobileDetections$detections$nodes$species>
      get copyWith => CopyWith$Query$MobileDetections$detections$nodes$species(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$MobileDetections$detections$nodes$species<TRes> {
  factory CopyWith$Query$MobileDetections$detections$nodes$species(
    Query$MobileDetections$detections$nodes$species instance,
    TRes Function(Query$MobileDetections$detections$nodes$species) then,
  ) = _CopyWithImpl$Query$MobileDetections$detections$nodes$species;

  factory CopyWith$Query$MobileDetections$detections$nodes$species.stub(
          TRes res) =
      _CopyWithStubImpl$Query$MobileDetections$detections$nodes$species;

  TRes call({
    String? id,
    String? scientificName,
    String? commonName,
    String? thumbnailUrl,
    String? imageUrl,
    String? wikipediaUrl,
    String? wikipediaSummary,
    String? color,
    String? imageCredit,
    String? imageLicense,
    String? imageLicenseUrl,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$MobileDetections$detections$nodes$species<TRes>
    implements CopyWith$Query$MobileDetections$detections$nodes$species<TRes> {
  _CopyWithImpl$Query$MobileDetections$detections$nodes$species(
    this._instance,
    this._then,
  );

  final Query$MobileDetections$detections$nodes$species _instance;

  final TRes Function(Query$MobileDetections$detections$nodes$species) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? scientificName = _undefined,
    Object? commonName = _undefined,
    Object? thumbnailUrl = _undefined,
    Object? imageUrl = _undefined,
    Object? wikipediaUrl = _undefined,
    Object? wikipediaSummary = _undefined,
    Object? color = _undefined,
    Object? imageCredit = _undefined,
    Object? imageLicense = _undefined,
    Object? imageLicenseUrl = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$MobileDetections$detections$nodes$species(
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

class _CopyWithStubImpl$Query$MobileDetections$detections$nodes$species<TRes>
    implements CopyWith$Query$MobileDetections$detections$nodes$species<TRes> {
  _CopyWithStubImpl$Query$MobileDetections$detections$nodes$species(this._res);

  TRes _res;

  call({
    String? id,
    String? scientificName,
    String? commonName,
    String? thumbnailUrl,
    String? imageUrl,
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

class Query$MobileDetections$detections$nodes$soundscape {
  Query$MobileDetections$detections$nodes$soundscape({
    required this.url,
    required this.startTime,
    required this.endTime,
    this.$__typename = 'Soundscape',
  });

  factory Query$MobileDetections$detections$nodes$soundscape.fromJson(
      Map<String, dynamic> json) {
    final l$url = json['url'];
    final l$startTime = json['startTime'];
    final l$endTime = json['endTime'];
    final l$$__typename = json['__typename'];
    return Query$MobileDetections$detections$nodes$soundscape(
      url: (l$url as String),
      startTime: (l$startTime as num).toDouble(),
      endTime: (l$endTime as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final String url;

  final double startTime;

  final double endTime;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$url = url;
    _resultData['url'] = l$url;
    final l$startTime = startTime;
    _resultData['startTime'] = l$startTime;
    final l$endTime = endTime;
    _resultData['endTime'] = l$endTime;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$url = url;
    final l$startTime = startTime;
    final l$endTime = endTime;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$url,
      l$startTime,
      l$endTime,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$MobileDetections$detections$nodes$soundscape) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$url = url;
    final lOther$url = other.url;
    if (l$url != lOther$url) {
      return false;
    }
    final l$startTime = startTime;
    final lOther$startTime = other.startTime;
    if (l$startTime != lOther$startTime) {
      return false;
    }
    final l$endTime = endTime;
    final lOther$endTime = other.endTime;
    if (l$endTime != lOther$endTime) {
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

extension UtilityExtension$Query$MobileDetections$detections$nodes$soundscape
    on Query$MobileDetections$detections$nodes$soundscape {
  CopyWith$Query$MobileDetections$detections$nodes$soundscape<
          Query$MobileDetections$detections$nodes$soundscape>
      get copyWith =>
          CopyWith$Query$MobileDetections$detections$nodes$soundscape(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$MobileDetections$detections$nodes$soundscape<
    TRes> {
  factory CopyWith$Query$MobileDetections$detections$nodes$soundscape(
    Query$MobileDetections$detections$nodes$soundscape instance,
    TRes Function(Query$MobileDetections$detections$nodes$soundscape) then,
  ) = _CopyWithImpl$Query$MobileDetections$detections$nodes$soundscape;

  factory CopyWith$Query$MobileDetections$detections$nodes$soundscape.stub(
          TRes res) =
      _CopyWithStubImpl$Query$MobileDetections$detections$nodes$soundscape;

  TRes call({
    String? url,
    double? startTime,
    double? endTime,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$MobileDetections$detections$nodes$soundscape<TRes>
    implements
        CopyWith$Query$MobileDetections$detections$nodes$soundscape<TRes> {
  _CopyWithImpl$Query$MobileDetections$detections$nodes$soundscape(
    this._instance,
    this._then,
  );

  final Query$MobileDetections$detections$nodes$soundscape _instance;

  final TRes Function(Query$MobileDetections$detections$nodes$soundscape) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? url = _undefined,
    Object? startTime = _undefined,
    Object? endTime = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$MobileDetections$detections$nodes$soundscape(
        url: url == _undefined || url == null ? _instance.url : (url as String),
        startTime: startTime == _undefined || startTime == null
            ? _instance.startTime
            : (startTime as double),
        endTime: endTime == _undefined || endTime == null
            ? _instance.endTime
            : (endTime as double),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$MobileDetections$detections$nodes$soundscape<TRes>
    implements
        CopyWith$Query$MobileDetections$detections$nodes$soundscape<TRes> {
  _CopyWithStubImpl$Query$MobileDetections$detections$nodes$soundscape(
      this._res);

  TRes _res;

  call({
    String? url,
    double? startTime,
    double? endTime,
    String? $__typename,
  }) =>
      _res;
}
