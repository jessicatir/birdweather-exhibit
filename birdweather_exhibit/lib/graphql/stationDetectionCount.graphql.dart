import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'schema.graphql.dart';

class Variables$Query$StationDetectionCount {
  factory Variables$Query$StationDetectionCount({
    required String stationId,
    Input$InputDuration? period,
  }) =>
      Variables$Query$StationDetectionCount._({
        r'stationId': stationId,
        if (period != null) r'period': period,
      });

  Variables$Query$StationDetectionCount._(this._$data);

  factory Variables$Query$StationDetectionCount.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$stationId = data['stationId'];
    result$data['stationId'] = (l$stationId as String);
    if (data.containsKey('period')) {
      final l$period = data['period'];
      result$data['period'] = l$period == null
          ? null
          : Input$InputDuration.fromJson((l$period as Map<String, dynamic>));
    }
    return Variables$Query$StationDetectionCount._(result$data);
  }

  Map<String, dynamic> _$data;

  String get stationId => (_$data['stationId'] as String);

  Input$InputDuration? get period => (_$data['period'] as Input$InputDuration?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$stationId = stationId;
    result$data['stationId'] = l$stationId;
    if (_$data.containsKey('period')) {
      final l$period = period;
      result$data['period'] = l$period?.toJson();
    }
    return result$data;
  }

  CopyWith$Variables$Query$StationDetectionCount<
          Variables$Query$StationDetectionCount>
      get copyWith => CopyWith$Variables$Query$StationDetectionCount(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$StationDetectionCount) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$stationId = stationId;
    final lOther$stationId = other.stationId;
    if (l$stationId != lOther$stationId) {
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
    final l$stationId = stationId;
    final l$period = period;
    return Object.hashAll([
      l$stationId,
      _$data.containsKey('period') ? l$period : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$StationDetectionCount<TRes> {
  factory CopyWith$Variables$Query$StationDetectionCount(
    Variables$Query$StationDetectionCount instance,
    TRes Function(Variables$Query$StationDetectionCount) then,
  ) = _CopyWithImpl$Variables$Query$StationDetectionCount;

  factory CopyWith$Variables$Query$StationDetectionCount.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$StationDetectionCount;

  TRes call({
    String? stationId,
    Input$InputDuration? period,
  });
}

class _CopyWithImpl$Variables$Query$StationDetectionCount<TRes>
    implements CopyWith$Variables$Query$StationDetectionCount<TRes> {
  _CopyWithImpl$Variables$Query$StationDetectionCount(
    this._instance,
    this._then,
  );

  final Variables$Query$StationDetectionCount _instance;

  final TRes Function(Variables$Query$StationDetectionCount) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? stationId = _undefined,
    Object? period = _undefined,
  }) =>
      _then(Variables$Query$StationDetectionCount._({
        ..._instance._$data,
        if (stationId != _undefined && stationId != null)
          'stationId': (stationId as String),
        if (period != _undefined) 'period': (period as Input$InputDuration?),
      }));
}

class _CopyWithStubImpl$Variables$Query$StationDetectionCount<TRes>
    implements CopyWith$Variables$Query$StationDetectionCount<TRes> {
  _CopyWithStubImpl$Variables$Query$StationDetectionCount(this._res);

  TRes _res;

  call({
    String? stationId,
    Input$InputDuration? period,
  }) =>
      _res;
}

class Query$StationDetectionCount {
  Query$StationDetectionCount({
    required this.station,
    this.$__typename = 'Query',
  });

  factory Query$StationDetectionCount.fromJson(Map<String, dynamic> json) {
    final l$station = json['station'];
    final l$$__typename = json['__typename'];
    return Query$StationDetectionCount(
      station: Query$StationDetectionCount$station.fromJson(
          (l$station as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$StationDetectionCount$station station;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$station = station;
    _resultData['station'] = l$station.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$station = station;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$station,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$StationDetectionCount) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$station = station;
    final lOther$station = other.station;
    if (l$station != lOther$station) {
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

extension UtilityExtension$Query$StationDetectionCount
    on Query$StationDetectionCount {
  CopyWith$Query$StationDetectionCount<Query$StationDetectionCount>
      get copyWith => CopyWith$Query$StationDetectionCount(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$StationDetectionCount<TRes> {
  factory CopyWith$Query$StationDetectionCount(
    Query$StationDetectionCount instance,
    TRes Function(Query$StationDetectionCount) then,
  ) = _CopyWithImpl$Query$StationDetectionCount;

  factory CopyWith$Query$StationDetectionCount.stub(TRes res) =
      _CopyWithStubImpl$Query$StationDetectionCount;

  TRes call({
    Query$StationDetectionCount$station? station,
    String? $__typename,
  });
  CopyWith$Query$StationDetectionCount$station<TRes> get station;
}

class _CopyWithImpl$Query$StationDetectionCount<TRes>
    implements CopyWith$Query$StationDetectionCount<TRes> {
  _CopyWithImpl$Query$StationDetectionCount(
    this._instance,
    this._then,
  );

  final Query$StationDetectionCount _instance;

  final TRes Function(Query$StationDetectionCount) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? station = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$StationDetectionCount(
        station: station == _undefined || station == null
            ? _instance.station
            : (station as Query$StationDetectionCount$station),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$StationDetectionCount$station<TRes> get station {
    final local$station = _instance.station;
    return CopyWith$Query$StationDetectionCount$station(
        local$station, (e) => call(station: e));
  }
}

class _CopyWithStubImpl$Query$StationDetectionCount<TRes>
    implements CopyWith$Query$StationDetectionCount<TRes> {
  _CopyWithStubImpl$Query$StationDetectionCount(this._res);

  TRes _res;

  call({
    Query$StationDetectionCount$station? station,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$StationDetectionCount$station<TRes> get station =>
      CopyWith$Query$StationDetectionCount$station.stub(_res);
}

const documentNodeQueryStationDetectionCount = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'StationDetectionCount'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'stationId')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
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
        name: NameNode(value: 'station'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'stationId')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'counts'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'period'),
                value: VariableNode(name: NameNode(value: 'period')),
              )
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'detections'),
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
Query$StationDetectionCount _parserFn$Query$StationDetectionCount(
        Map<String, dynamic> data) =>
    Query$StationDetectionCount.fromJson(data);
typedef OnQueryComplete$Query$StationDetectionCount = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$StationDetectionCount?,
);

class Options$Query$StationDetectionCount
    extends graphql.QueryOptions<Query$StationDetectionCount> {
  Options$Query$StationDetectionCount({
    String? operationName,
    required Variables$Query$StationDetectionCount variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$StationDetectionCount? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$StationDetectionCount? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables.toJson(),
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
                        : _parserFn$Query$StationDetectionCount(data),
                  ),
          onError: onError,
          document: documentNodeQueryStationDetectionCount,
          parserFn: _parserFn$Query$StationDetectionCount,
        );

  final OnQueryComplete$Query$StationDetectionCount? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$StationDetectionCount
    extends graphql.WatchQueryOptions<Query$StationDetectionCount> {
  WatchOptions$Query$StationDetectionCount({
    String? operationName,
    required Variables$Query$StationDetectionCount variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$StationDetectionCount? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryStationDetectionCount,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$StationDetectionCount,
        );
}

class FetchMoreOptions$Query$StationDetectionCount
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$StationDetectionCount({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$StationDetectionCount variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryStationDetectionCount,
        );
}

extension ClientExtension$Query$StationDetectionCount on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$StationDetectionCount>>
      query$StationDetectionCount(
              Options$Query$StationDetectionCount options) async =>
          await this.query(options);
  graphql.ObservableQuery<Query$StationDetectionCount>
      watchQuery$StationDetectionCount(
              WatchOptions$Query$StationDetectionCount options) =>
          this.watchQuery(options);
  void writeQuery$StationDetectionCount({
    required Query$StationDetectionCount data,
    required Variables$Query$StationDetectionCount variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryStationDetectionCount),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$StationDetectionCount? readQuery$StationDetectionCount({
    required Variables$Query$StationDetectionCount variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryStationDetectionCount),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$StationDetectionCount.fromJson(result);
  }
}

class Query$StationDetectionCount$station {
  Query$StationDetectionCount$station({
    required this.counts,
    this.$__typename = 'Station',
  });

  factory Query$StationDetectionCount$station.fromJson(
      Map<String, dynamic> json) {
    final l$counts = json['counts'];
    final l$$__typename = json['__typename'];
    return Query$StationDetectionCount$station(
      counts: Query$StationDetectionCount$station$counts.fromJson(
          (l$counts as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$StationDetectionCount$station$counts counts;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$counts = counts;
    _resultData['counts'] = l$counts.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$counts = counts;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$counts,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$StationDetectionCount$station) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$counts = counts;
    final lOther$counts = other.counts;
    if (l$counts != lOther$counts) {
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

extension UtilityExtension$Query$StationDetectionCount$station
    on Query$StationDetectionCount$station {
  CopyWith$Query$StationDetectionCount$station<
          Query$StationDetectionCount$station>
      get copyWith => CopyWith$Query$StationDetectionCount$station(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$StationDetectionCount$station<TRes> {
  factory CopyWith$Query$StationDetectionCount$station(
    Query$StationDetectionCount$station instance,
    TRes Function(Query$StationDetectionCount$station) then,
  ) = _CopyWithImpl$Query$StationDetectionCount$station;

  factory CopyWith$Query$StationDetectionCount$station.stub(TRes res) =
      _CopyWithStubImpl$Query$StationDetectionCount$station;

  TRes call({
    Query$StationDetectionCount$station$counts? counts,
    String? $__typename,
  });
  CopyWith$Query$StationDetectionCount$station$counts<TRes> get counts;
}

class _CopyWithImpl$Query$StationDetectionCount$station<TRes>
    implements CopyWith$Query$StationDetectionCount$station<TRes> {
  _CopyWithImpl$Query$StationDetectionCount$station(
    this._instance,
    this._then,
  );

  final Query$StationDetectionCount$station _instance;

  final TRes Function(Query$StationDetectionCount$station) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? counts = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$StationDetectionCount$station(
        counts: counts == _undefined || counts == null
            ? _instance.counts
            : (counts as Query$StationDetectionCount$station$counts),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$StationDetectionCount$station$counts<TRes> get counts {
    final local$counts = _instance.counts;
    return CopyWith$Query$StationDetectionCount$station$counts(
        local$counts, (e) => call(counts: e));
  }
}

class _CopyWithStubImpl$Query$StationDetectionCount$station<TRes>
    implements CopyWith$Query$StationDetectionCount$station<TRes> {
  _CopyWithStubImpl$Query$StationDetectionCount$station(this._res);

  TRes _res;

  call({
    Query$StationDetectionCount$station$counts? counts,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$StationDetectionCount$station$counts<TRes> get counts =>
      CopyWith$Query$StationDetectionCount$station$counts.stub(_res);
}

class Query$StationDetectionCount$station$counts {
  Query$StationDetectionCount$station$counts({
    required this.detections,
    this.$__typename = 'StationCounts',
  });

  factory Query$StationDetectionCount$station$counts.fromJson(
      Map<String, dynamic> json) {
    final l$detections = json['detections'];
    final l$$__typename = json['__typename'];
    return Query$StationDetectionCount$station$counts(
      detections: (l$detections as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int detections;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$detections = detections;
    _resultData['detections'] = l$detections;
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
    if (!(other is Query$StationDetectionCount$station$counts) ||
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

extension UtilityExtension$Query$StationDetectionCount$station$counts
    on Query$StationDetectionCount$station$counts {
  CopyWith$Query$StationDetectionCount$station$counts<
          Query$StationDetectionCount$station$counts>
      get copyWith => CopyWith$Query$StationDetectionCount$station$counts(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$StationDetectionCount$station$counts<TRes> {
  factory CopyWith$Query$StationDetectionCount$station$counts(
    Query$StationDetectionCount$station$counts instance,
    TRes Function(Query$StationDetectionCount$station$counts) then,
  ) = _CopyWithImpl$Query$StationDetectionCount$station$counts;

  factory CopyWith$Query$StationDetectionCount$station$counts.stub(TRes res) =
      _CopyWithStubImpl$Query$StationDetectionCount$station$counts;

  TRes call({
    int? detections,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$StationDetectionCount$station$counts<TRes>
    implements CopyWith$Query$StationDetectionCount$station$counts<TRes> {
  _CopyWithImpl$Query$StationDetectionCount$station$counts(
    this._instance,
    this._then,
  );

  final Query$StationDetectionCount$station$counts _instance;

  final TRes Function(Query$StationDetectionCount$station$counts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? detections = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$StationDetectionCount$station$counts(
        detections: detections == _undefined || detections == null
            ? _instance.detections
            : (detections as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$StationDetectionCount$station$counts<TRes>
    implements CopyWith$Query$StationDetectionCount$station$counts<TRes> {
  _CopyWithStubImpl$Query$StationDetectionCount$station$counts(this._res);

  TRes _res;

  call({
    int? detections,
    String? $__typename,
  }) =>
      _res;
}
