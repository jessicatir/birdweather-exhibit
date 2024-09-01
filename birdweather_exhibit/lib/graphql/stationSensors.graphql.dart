import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Variables$Query$StationSensors {
  factory Variables$Query$StationSensors({required String stationId}) =>
      Variables$Query$StationSensors._({
        r'stationId': stationId,
      });

  Variables$Query$StationSensors._(this._$data);

  factory Variables$Query$StationSensors.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$stationId = data['stationId'];
    result$data['stationId'] = (l$stationId as String);
    return Variables$Query$StationSensors._(result$data);
  }

  Map<String, dynamic> _$data;

  String get stationId => (_$data['stationId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$stationId = stationId;
    result$data['stationId'] = l$stationId;
    return result$data;
  }

  CopyWith$Variables$Query$StationSensors<Variables$Query$StationSensors>
      get copyWith => CopyWith$Variables$Query$StationSensors(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$StationSensors) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$stationId = stationId;
    final lOther$stationId = other.stationId;
    if (l$stationId != lOther$stationId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$stationId = stationId;
    return Object.hashAll([l$stationId]);
  }
}

abstract class CopyWith$Variables$Query$StationSensors<TRes> {
  factory CopyWith$Variables$Query$StationSensors(
    Variables$Query$StationSensors instance,
    TRes Function(Variables$Query$StationSensors) then,
  ) = _CopyWithImpl$Variables$Query$StationSensors;

  factory CopyWith$Variables$Query$StationSensors.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$StationSensors;

  TRes call({String? stationId});
}

class _CopyWithImpl$Variables$Query$StationSensors<TRes>
    implements CopyWith$Variables$Query$StationSensors<TRes> {
  _CopyWithImpl$Variables$Query$StationSensors(
    this._instance,
    this._then,
  );

  final Variables$Query$StationSensors _instance;

  final TRes Function(Variables$Query$StationSensors) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? stationId = _undefined}) =>
      _then(Variables$Query$StationSensors._({
        ..._instance._$data,
        if (stationId != _undefined && stationId != null)
          'stationId': (stationId as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$StationSensors<TRes>
    implements CopyWith$Variables$Query$StationSensors<TRes> {
  _CopyWithStubImpl$Variables$Query$StationSensors(this._res);

  TRes _res;

  call({String? stationId}) => _res;
}

class Query$StationSensors {
  Query$StationSensors({
    required this.sensorData,
    this.$__typename = 'Query',
  });

  factory Query$StationSensors.fromJson(Map<String, dynamic> json) {
    final l$sensorData = json['sensorData'];
    final l$$__typename = json['__typename'];
    return Query$StationSensors(
      sensorData: Query$StationSensors$sensorData.fromJson(
          (l$sensorData as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$StationSensors$sensorData sensorData;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sensorData = sensorData;
    _resultData['sensorData'] = l$sensorData.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sensorData = sensorData;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$sensorData,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$StationSensors) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$sensorData = sensorData;
    final lOther$sensorData = other.sensorData;
    if (l$sensorData != lOther$sensorData) {
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

extension UtilityExtension$Query$StationSensors on Query$StationSensors {
  CopyWith$Query$StationSensors<Query$StationSensors> get copyWith =>
      CopyWith$Query$StationSensors(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StationSensors<TRes> {
  factory CopyWith$Query$StationSensors(
    Query$StationSensors instance,
    TRes Function(Query$StationSensors) then,
  ) = _CopyWithImpl$Query$StationSensors;

  factory CopyWith$Query$StationSensors.stub(TRes res) =
      _CopyWithStubImpl$Query$StationSensors;

  TRes call({
    Query$StationSensors$sensorData? sensorData,
    String? $__typename,
  });
  CopyWith$Query$StationSensors$sensorData<TRes> get sensorData;
}

class _CopyWithImpl$Query$StationSensors<TRes>
    implements CopyWith$Query$StationSensors<TRes> {
  _CopyWithImpl$Query$StationSensors(
    this._instance,
    this._then,
  );

  final Query$StationSensors _instance;

  final TRes Function(Query$StationSensors) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sensorData = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$StationSensors(
        sensorData: sensorData == _undefined || sensorData == null
            ? _instance.sensorData
            : (sensorData as Query$StationSensors$sensorData),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$StationSensors$sensorData<TRes> get sensorData {
    final local$sensorData = _instance.sensorData;
    return CopyWith$Query$StationSensors$sensorData(
        local$sensorData, (e) => call(sensorData: e));
  }
}

class _CopyWithStubImpl$Query$StationSensors<TRes>
    implements CopyWith$Query$StationSensors<TRes> {
  _CopyWithStubImpl$Query$StationSensors(this._res);

  TRes _res;

  call({
    Query$StationSensors$sensorData? sensorData,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$StationSensors$sensorData<TRes> get sensorData =>
      CopyWith$Query$StationSensors$sensorData.stub(_res);
}

const documentNodeQueryStationSensors = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'StationSensors'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'stationId')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'station'),
        alias: NameNode(value: 'sensorData'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'stationId')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'sensors'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'environment'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'timestamp'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'temperature'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'humidity'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'barometricPressure'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'aqi'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'soundPressureLevel'),
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
                name: NameNode(value: 'light'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'clear'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'nir'),
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
Query$StationSensors _parserFn$Query$StationSensors(
        Map<String, dynamic> data) =>
    Query$StationSensors.fromJson(data);
typedef OnQueryComplete$Query$StationSensors = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$StationSensors?,
);

class Options$Query$StationSensors
    extends graphql.QueryOptions<Query$StationSensors> {
  Options$Query$StationSensors({
    String? operationName,
    required Variables$Query$StationSensors variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$StationSensors? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$StationSensors? onComplete,
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
                    data == null ? null : _parserFn$Query$StationSensors(data),
                  ),
          onError: onError,
          document: documentNodeQueryStationSensors,
          parserFn: _parserFn$Query$StationSensors,
        );

  final OnQueryComplete$Query$StationSensors? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$StationSensors
    extends graphql.WatchQueryOptions<Query$StationSensors> {
  WatchOptions$Query$StationSensors({
    String? operationName,
    required Variables$Query$StationSensors variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$StationSensors? typedOptimisticResult,
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
          document: documentNodeQueryStationSensors,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$StationSensors,
        );
}

class FetchMoreOptions$Query$StationSensors extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$StationSensors({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$StationSensors variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryStationSensors,
        );
}

extension ClientExtension$Query$StationSensors on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$StationSensors>> query$StationSensors(
          Options$Query$StationSensors options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$StationSensors> watchQuery$StationSensors(
          WatchOptions$Query$StationSensors options) =>
      this.watchQuery(options);
  void writeQuery$StationSensors({
    required Query$StationSensors data,
    required Variables$Query$StationSensors variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryStationSensors),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$StationSensors? readQuery$StationSensors({
    required Variables$Query$StationSensors variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryStationSensors),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$StationSensors.fromJson(result);
  }
}

class Query$StationSensors$sensorData {
  Query$StationSensors$sensorData({
    this.sensors,
    this.$__typename = 'Station',
  });

  factory Query$StationSensors$sensorData.fromJson(Map<String, dynamic> json) {
    final l$sensors = json['sensors'];
    final l$$__typename = json['__typename'];
    return Query$StationSensors$sensorData(
      sensors: l$sensors == null
          ? null
          : Query$StationSensors$sensorData$sensors.fromJson(
              (l$sensors as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$StationSensors$sensorData$sensors? sensors;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sensors = sensors;
    _resultData['sensors'] = l$sensors?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sensors = sensors;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$sensors,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$StationSensors$sensorData) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sensors = sensors;
    final lOther$sensors = other.sensors;
    if (l$sensors != lOther$sensors) {
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

extension UtilityExtension$Query$StationSensors$sensorData
    on Query$StationSensors$sensorData {
  CopyWith$Query$StationSensors$sensorData<Query$StationSensors$sensorData>
      get copyWith => CopyWith$Query$StationSensors$sensorData(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$StationSensors$sensorData<TRes> {
  factory CopyWith$Query$StationSensors$sensorData(
    Query$StationSensors$sensorData instance,
    TRes Function(Query$StationSensors$sensorData) then,
  ) = _CopyWithImpl$Query$StationSensors$sensorData;

  factory CopyWith$Query$StationSensors$sensorData.stub(TRes res) =
      _CopyWithStubImpl$Query$StationSensors$sensorData;

  TRes call({
    Query$StationSensors$sensorData$sensors? sensors,
    String? $__typename,
  });
  CopyWith$Query$StationSensors$sensorData$sensors<TRes> get sensors;
}

class _CopyWithImpl$Query$StationSensors$sensorData<TRes>
    implements CopyWith$Query$StationSensors$sensorData<TRes> {
  _CopyWithImpl$Query$StationSensors$sensorData(
    this._instance,
    this._then,
  );

  final Query$StationSensors$sensorData _instance;

  final TRes Function(Query$StationSensors$sensorData) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sensors = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$StationSensors$sensorData(
        sensors: sensors == _undefined
            ? _instance.sensors
            : (sensors as Query$StationSensors$sensorData$sensors?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$StationSensors$sensorData$sensors<TRes> get sensors {
    final local$sensors = _instance.sensors;
    return local$sensors == null
        ? CopyWith$Query$StationSensors$sensorData$sensors.stub(
            _then(_instance))
        : CopyWith$Query$StationSensors$sensorData$sensors(
            local$sensors, (e) => call(sensors: e));
  }
}

class _CopyWithStubImpl$Query$StationSensors$sensorData<TRes>
    implements CopyWith$Query$StationSensors$sensorData<TRes> {
  _CopyWithStubImpl$Query$StationSensors$sensorData(this._res);

  TRes _res;

  call({
    Query$StationSensors$sensorData$sensors? sensors,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$StationSensors$sensorData$sensors<TRes> get sensors =>
      CopyWith$Query$StationSensors$sensorData$sensors.stub(_res);
}

class Query$StationSensors$sensorData$sensors {
  Query$StationSensors$sensorData$sensors({
    this.environment,
    this.light,
    this.$__typename = 'Sensors',
  });

  factory Query$StationSensors$sensorData$sensors.fromJson(
      Map<String, dynamic> json) {
    final l$environment = json['environment'];
    final l$light = json['light'];
    final l$$__typename = json['__typename'];
    return Query$StationSensors$sensorData$sensors(
      environment: l$environment == null
          ? null
          : Query$StationSensors$sensorData$sensors$environment.fromJson(
              (l$environment as Map<String, dynamic>)),
      light: l$light == null
          ? null
          : Query$StationSensors$sensorData$sensors$light.fromJson(
              (l$light as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$StationSensors$sensorData$sensors$environment? environment;

  final Query$StationSensors$sensorData$sensors$light? light;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$environment = environment;
    _resultData['environment'] = l$environment?.toJson();
    final l$light = light;
    _resultData['light'] = l$light?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$environment = environment;
    final l$light = light;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$environment,
      l$light,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$StationSensors$sensorData$sensors) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$environment = environment;
    final lOther$environment = other.environment;
    if (l$environment != lOther$environment) {
      return false;
    }
    final l$light = light;
    final lOther$light = other.light;
    if (l$light != lOther$light) {
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

extension UtilityExtension$Query$StationSensors$sensorData$sensors
    on Query$StationSensors$sensorData$sensors {
  CopyWith$Query$StationSensors$sensorData$sensors<
          Query$StationSensors$sensorData$sensors>
      get copyWith => CopyWith$Query$StationSensors$sensorData$sensors(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$StationSensors$sensorData$sensors<TRes> {
  factory CopyWith$Query$StationSensors$sensorData$sensors(
    Query$StationSensors$sensorData$sensors instance,
    TRes Function(Query$StationSensors$sensorData$sensors) then,
  ) = _CopyWithImpl$Query$StationSensors$sensorData$sensors;

  factory CopyWith$Query$StationSensors$sensorData$sensors.stub(TRes res) =
      _CopyWithStubImpl$Query$StationSensors$sensorData$sensors;

  TRes call({
    Query$StationSensors$sensorData$sensors$environment? environment,
    Query$StationSensors$sensorData$sensors$light? light,
    String? $__typename,
  });
  CopyWith$Query$StationSensors$sensorData$sensors$environment<TRes>
      get environment;
  CopyWith$Query$StationSensors$sensorData$sensors$light<TRes> get light;
}

class _CopyWithImpl$Query$StationSensors$sensorData$sensors<TRes>
    implements CopyWith$Query$StationSensors$sensorData$sensors<TRes> {
  _CopyWithImpl$Query$StationSensors$sensorData$sensors(
    this._instance,
    this._then,
  );

  final Query$StationSensors$sensorData$sensors _instance;

  final TRes Function(Query$StationSensors$sensorData$sensors) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? environment = _undefined,
    Object? light = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$StationSensors$sensorData$sensors(
        environment: environment == _undefined
            ? _instance.environment
            : (environment
                as Query$StationSensors$sensorData$sensors$environment?),
        light: light == _undefined
            ? _instance.light
            : (light as Query$StationSensors$sensorData$sensors$light?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$StationSensors$sensorData$sensors$environment<TRes>
      get environment {
    final local$environment = _instance.environment;
    return local$environment == null
        ? CopyWith$Query$StationSensors$sensorData$sensors$environment.stub(
            _then(_instance))
        : CopyWith$Query$StationSensors$sensorData$sensors$environment(
            local$environment, (e) => call(environment: e));
  }

  CopyWith$Query$StationSensors$sensorData$sensors$light<TRes> get light {
    final local$light = _instance.light;
    return local$light == null
        ? CopyWith$Query$StationSensors$sensorData$sensors$light.stub(
            _then(_instance))
        : CopyWith$Query$StationSensors$sensorData$sensors$light(
            local$light, (e) => call(light: e));
  }
}

class _CopyWithStubImpl$Query$StationSensors$sensorData$sensors<TRes>
    implements CopyWith$Query$StationSensors$sensorData$sensors<TRes> {
  _CopyWithStubImpl$Query$StationSensors$sensorData$sensors(this._res);

  TRes _res;

  call({
    Query$StationSensors$sensorData$sensors$environment? environment,
    Query$StationSensors$sensorData$sensors$light? light,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$StationSensors$sensorData$sensors$environment<TRes>
      get environment =>
          CopyWith$Query$StationSensors$sensorData$sensors$environment.stub(
              _res);

  CopyWith$Query$StationSensors$sensorData$sensors$light<TRes> get light =>
      CopyWith$Query$StationSensors$sensorData$sensors$light.stub(_res);
}

class Query$StationSensors$sensorData$sensors$environment {
  Query$StationSensors$sensorData$sensors$environment({
    this.timestamp,
    this.temperature,
    this.humidity,
    this.barometricPressure,
    this.aqi,
    this.soundPressureLevel,
    this.$__typename = 'EnvironmentReading',
  });

  factory Query$StationSensors$sensorData$sensors$environment.fromJson(
      Map<String, dynamic> json) {
    final l$timestamp = json['timestamp'];
    final l$temperature = json['temperature'];
    final l$humidity = json['humidity'];
    final l$barometricPressure = json['barometricPressure'];
    final l$aqi = json['aqi'];
    final l$soundPressureLevel = json['soundPressureLevel'];
    final l$$__typename = json['__typename'];
    return Query$StationSensors$sensorData$sensors$environment(
      timestamp: (l$timestamp as String?),
      temperature: (l$temperature as num?)?.toDouble(),
      humidity: (l$humidity as num?)?.toDouble(),
      barometricPressure: (l$barometricPressure as num?)?.toDouble(),
      aqi: (l$aqi as num?)?.toDouble(),
      soundPressureLevel: (l$soundPressureLevel as num?)?.toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final String? timestamp;

  final double? temperature;

  final double? humidity;

  final double? barometricPressure;

  final double? aqi;

  final double? soundPressureLevel;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$timestamp = timestamp;
    _resultData['timestamp'] = l$timestamp;
    final l$temperature = temperature;
    _resultData['temperature'] = l$temperature;
    final l$humidity = humidity;
    _resultData['humidity'] = l$humidity;
    final l$barometricPressure = barometricPressure;
    _resultData['barometricPressure'] = l$barometricPressure;
    final l$aqi = aqi;
    _resultData['aqi'] = l$aqi;
    final l$soundPressureLevel = soundPressureLevel;
    _resultData['soundPressureLevel'] = l$soundPressureLevel;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$timestamp = timestamp;
    final l$temperature = temperature;
    final l$humidity = humidity;
    final l$barometricPressure = barometricPressure;
    final l$aqi = aqi;
    final l$soundPressureLevel = soundPressureLevel;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$timestamp,
      l$temperature,
      l$humidity,
      l$barometricPressure,
      l$aqi,
      l$soundPressureLevel,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$StationSensors$sensorData$sensors$environment) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$timestamp = timestamp;
    final lOther$timestamp = other.timestamp;
    if (l$timestamp != lOther$timestamp) {
      return false;
    }
    final l$temperature = temperature;
    final lOther$temperature = other.temperature;
    if (l$temperature != lOther$temperature) {
      return false;
    }
    final l$humidity = humidity;
    final lOther$humidity = other.humidity;
    if (l$humidity != lOther$humidity) {
      return false;
    }
    final l$barometricPressure = barometricPressure;
    final lOther$barometricPressure = other.barometricPressure;
    if (l$barometricPressure != lOther$barometricPressure) {
      return false;
    }
    final l$aqi = aqi;
    final lOther$aqi = other.aqi;
    if (l$aqi != lOther$aqi) {
      return false;
    }
    final l$soundPressureLevel = soundPressureLevel;
    final lOther$soundPressureLevel = other.soundPressureLevel;
    if (l$soundPressureLevel != lOther$soundPressureLevel) {
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

extension UtilityExtension$Query$StationSensors$sensorData$sensors$environment
    on Query$StationSensors$sensorData$sensors$environment {
  CopyWith$Query$StationSensors$sensorData$sensors$environment<
          Query$StationSensors$sensorData$sensors$environment>
      get copyWith =>
          CopyWith$Query$StationSensors$sensorData$sensors$environment(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$StationSensors$sensorData$sensors$environment<
    TRes> {
  factory CopyWith$Query$StationSensors$sensorData$sensors$environment(
    Query$StationSensors$sensorData$sensors$environment instance,
    TRes Function(Query$StationSensors$sensorData$sensors$environment) then,
  ) = _CopyWithImpl$Query$StationSensors$sensorData$sensors$environment;

  factory CopyWith$Query$StationSensors$sensorData$sensors$environment.stub(
          TRes res) =
      _CopyWithStubImpl$Query$StationSensors$sensorData$sensors$environment;

  TRes call({
    String? timestamp,
    double? temperature,
    double? humidity,
    double? barometricPressure,
    double? aqi,
    double? soundPressureLevel,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$StationSensors$sensorData$sensors$environment<TRes>
    implements
        CopyWith$Query$StationSensors$sensorData$sensors$environment<TRes> {
  _CopyWithImpl$Query$StationSensors$sensorData$sensors$environment(
    this._instance,
    this._then,
  );

  final Query$StationSensors$sensorData$sensors$environment _instance;

  final TRes Function(Query$StationSensors$sensorData$sensors$environment)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? timestamp = _undefined,
    Object? temperature = _undefined,
    Object? humidity = _undefined,
    Object? barometricPressure = _undefined,
    Object? aqi = _undefined,
    Object? soundPressureLevel = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$StationSensors$sensorData$sensors$environment(
        timestamp: timestamp == _undefined
            ? _instance.timestamp
            : (timestamp as String?),
        temperature: temperature == _undefined
            ? _instance.temperature
            : (temperature as double?),
        humidity:
            humidity == _undefined ? _instance.humidity : (humidity as double?),
        barometricPressure: barometricPressure == _undefined
            ? _instance.barometricPressure
            : (barometricPressure as double?),
        aqi: aqi == _undefined ? _instance.aqi : (aqi as double?),
        soundPressureLevel: soundPressureLevel == _undefined
            ? _instance.soundPressureLevel
            : (soundPressureLevel as double?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$StationSensors$sensorData$sensors$environment<
        TRes>
    implements
        CopyWith$Query$StationSensors$sensorData$sensors$environment<TRes> {
  _CopyWithStubImpl$Query$StationSensors$sensorData$sensors$environment(
      this._res);

  TRes _res;

  call({
    String? timestamp,
    double? temperature,
    double? humidity,
    double? barometricPressure,
    double? aqi,
    double? soundPressureLevel,
    String? $__typename,
  }) =>
      _res;
}

class Query$StationSensors$sensorData$sensors$light {
  Query$StationSensors$sensorData$sensors$light({
    this.clear,
    this.nir,
    this.$__typename = 'LightReading',
  });

  factory Query$StationSensors$sensorData$sensors$light.fromJson(
      Map<String, dynamic> json) {
    final l$clear = json['clear'];
    final l$nir = json['nir'];
    final l$$__typename = json['__typename'];
    return Query$StationSensors$sensorData$sensors$light(
      clear: (l$clear as int?),
      nir: (l$nir as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? clear;

  final int? nir;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$clear = clear;
    _resultData['clear'] = l$clear;
    final l$nir = nir;
    _resultData['nir'] = l$nir;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$clear = clear;
    final l$nir = nir;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$clear,
      l$nir,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$StationSensors$sensorData$sensors$light) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$clear = clear;
    final lOther$clear = other.clear;
    if (l$clear != lOther$clear) {
      return false;
    }
    final l$nir = nir;
    final lOther$nir = other.nir;
    if (l$nir != lOther$nir) {
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

extension UtilityExtension$Query$StationSensors$sensorData$sensors$light
    on Query$StationSensors$sensorData$sensors$light {
  CopyWith$Query$StationSensors$sensorData$sensors$light<
          Query$StationSensors$sensorData$sensors$light>
      get copyWith => CopyWith$Query$StationSensors$sensorData$sensors$light(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$StationSensors$sensorData$sensors$light<TRes> {
  factory CopyWith$Query$StationSensors$sensorData$sensors$light(
    Query$StationSensors$sensorData$sensors$light instance,
    TRes Function(Query$StationSensors$sensorData$sensors$light) then,
  ) = _CopyWithImpl$Query$StationSensors$sensorData$sensors$light;

  factory CopyWith$Query$StationSensors$sensorData$sensors$light.stub(
          TRes res) =
      _CopyWithStubImpl$Query$StationSensors$sensorData$sensors$light;

  TRes call({
    int? clear,
    int? nir,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$StationSensors$sensorData$sensors$light<TRes>
    implements CopyWith$Query$StationSensors$sensorData$sensors$light<TRes> {
  _CopyWithImpl$Query$StationSensors$sensorData$sensors$light(
    this._instance,
    this._then,
  );

  final Query$StationSensors$sensorData$sensors$light _instance;

  final TRes Function(Query$StationSensors$sensorData$sensors$light) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? clear = _undefined,
    Object? nir = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$StationSensors$sensorData$sensors$light(
        clear: clear == _undefined ? _instance.clear : (clear as int?),
        nir: nir == _undefined ? _instance.nir : (nir as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$StationSensors$sensorData$sensors$light<TRes>
    implements CopyWith$Query$StationSensors$sensorData$sensors$light<TRes> {
  _CopyWithStubImpl$Query$StationSensors$sensorData$sensors$light(this._res);

  TRes _res;

  call({
    int? clear,
    int? nir,
    String? $__typename,
  }) =>
      _res;
}
