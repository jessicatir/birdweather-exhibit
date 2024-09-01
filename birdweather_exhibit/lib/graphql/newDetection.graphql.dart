import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Variables$Subscription$NewDetection {
  factory Variables$Subscription$NewDetection({
    List<String>? speciesIds,
    List<String>? stationIds,
    List<String>? stationTypes,
    List<String>? continents,
    List<String>? countries,
    List<String>? recordingModes,
    double? scoreGt,
    double? scoreLt,
    double? scoreGte,
    double? scoreLte,
    double? confidenceGt,
    double? confidenceLt,
    double? confidenceGte,
    double? confidenceLte,
    double? probabilityGt,
    double? probabilityLt,
    double? probabilityGte,
    double? probabilityLte,
    int? timeOfDayGte,
    int? timeOfDayLte,
  }) =>
      Variables$Subscription$NewDetection._({
        if (speciesIds != null) r'speciesIds': speciesIds,
        if (stationIds != null) r'stationIds': stationIds,
        if (stationTypes != null) r'stationTypes': stationTypes,
        if (continents != null) r'continents': continents,
        if (countries != null) r'countries': countries,
        if (recordingModes != null) r'recordingModes': recordingModes,
        if (scoreGt != null) r'scoreGt': scoreGt,
        if (scoreLt != null) r'scoreLt': scoreLt,
        if (scoreGte != null) r'scoreGte': scoreGte,
        if (scoreLte != null) r'scoreLte': scoreLte,
        if (confidenceGt != null) r'confidenceGt': confidenceGt,
        if (confidenceLt != null) r'confidenceLt': confidenceLt,
        if (confidenceGte != null) r'confidenceGte': confidenceGte,
        if (confidenceLte != null) r'confidenceLte': confidenceLte,
        if (probabilityGt != null) r'probabilityGt': probabilityGt,
        if (probabilityLt != null) r'probabilityLt': probabilityLt,
        if (probabilityGte != null) r'probabilityGte': probabilityGte,
        if (probabilityLte != null) r'probabilityLte': probabilityLte,
        if (timeOfDayGte != null) r'timeOfDayGte': timeOfDayGte,
        if (timeOfDayLte != null) r'timeOfDayLte': timeOfDayLte,
      });

  Variables$Subscription$NewDetection._(this._$data);

  factory Variables$Subscription$NewDetection.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('speciesIds')) {
      final l$speciesIds = data['speciesIds'];
      result$data['speciesIds'] =
          (l$speciesIds as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    if (data.containsKey('stationIds')) {
      final l$stationIds = data['stationIds'];
      result$data['stationIds'] =
          (l$stationIds as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    if (data.containsKey('stationTypes')) {
      final l$stationTypes = data['stationTypes'];
      result$data['stationTypes'] = (l$stationTypes as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    if (data.containsKey('continents')) {
      final l$continents = data['continents'];
      result$data['continents'] =
          (l$continents as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    if (data.containsKey('countries')) {
      final l$countries = data['countries'];
      result$data['countries'] =
          (l$countries as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    if (data.containsKey('recordingModes')) {
      final l$recordingModes = data['recordingModes'];
      result$data['recordingModes'] = (l$recordingModes as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    if (data.containsKey('scoreGt')) {
      final l$scoreGt = data['scoreGt'];
      result$data['scoreGt'] = (l$scoreGt as num?)?.toDouble();
    }
    if (data.containsKey('scoreLt')) {
      final l$scoreLt = data['scoreLt'];
      result$data['scoreLt'] = (l$scoreLt as num?)?.toDouble();
    }
    if (data.containsKey('scoreGte')) {
      final l$scoreGte = data['scoreGte'];
      result$data['scoreGte'] = (l$scoreGte as num?)?.toDouble();
    }
    if (data.containsKey('scoreLte')) {
      final l$scoreLte = data['scoreLte'];
      result$data['scoreLte'] = (l$scoreLte as num?)?.toDouble();
    }
    if (data.containsKey('confidenceGt')) {
      final l$confidenceGt = data['confidenceGt'];
      result$data['confidenceGt'] = (l$confidenceGt as num?)?.toDouble();
    }
    if (data.containsKey('confidenceLt')) {
      final l$confidenceLt = data['confidenceLt'];
      result$data['confidenceLt'] = (l$confidenceLt as num?)?.toDouble();
    }
    if (data.containsKey('confidenceGte')) {
      final l$confidenceGte = data['confidenceGte'];
      result$data['confidenceGte'] = (l$confidenceGte as num?)?.toDouble();
    }
    if (data.containsKey('confidenceLte')) {
      final l$confidenceLte = data['confidenceLte'];
      result$data['confidenceLte'] = (l$confidenceLte as num?)?.toDouble();
    }
    if (data.containsKey('probabilityGt')) {
      final l$probabilityGt = data['probabilityGt'];
      result$data['probabilityGt'] = (l$probabilityGt as num?)?.toDouble();
    }
    if (data.containsKey('probabilityLt')) {
      final l$probabilityLt = data['probabilityLt'];
      result$data['probabilityLt'] = (l$probabilityLt as num?)?.toDouble();
    }
    if (data.containsKey('probabilityGte')) {
      final l$probabilityGte = data['probabilityGte'];
      result$data['probabilityGte'] = (l$probabilityGte as num?)?.toDouble();
    }
    if (data.containsKey('probabilityLte')) {
      final l$probabilityLte = data['probabilityLte'];
      result$data['probabilityLte'] = (l$probabilityLte as num?)?.toDouble();
    }
    if (data.containsKey('timeOfDayGte')) {
      final l$timeOfDayGte = data['timeOfDayGte'];
      result$data['timeOfDayGte'] = (l$timeOfDayGte as int?);
    }
    if (data.containsKey('timeOfDayLte')) {
      final l$timeOfDayLte = data['timeOfDayLte'];
      result$data['timeOfDayLte'] = (l$timeOfDayLte as int?);
    }
    return Variables$Subscription$NewDetection._(result$data);
  }

  Map<String, dynamic> _$data;

  List<String>? get speciesIds => (_$data['speciesIds'] as List<String>?);

  List<String>? get stationIds => (_$data['stationIds'] as List<String>?);

  List<String>? get stationTypes => (_$data['stationTypes'] as List<String>?);

  List<String>? get continents => (_$data['continents'] as List<String>?);

  List<String>? get countries => (_$data['countries'] as List<String>?);

  List<String>? get recordingModes =>
      (_$data['recordingModes'] as List<String>?);

  double? get scoreGt => (_$data['scoreGt'] as double?);

  double? get scoreLt => (_$data['scoreLt'] as double?);

  double? get scoreGte => (_$data['scoreGte'] as double?);

  double? get scoreLte => (_$data['scoreLte'] as double?);

  double? get confidenceGt => (_$data['confidenceGt'] as double?);

  double? get confidenceLt => (_$data['confidenceLt'] as double?);

  double? get confidenceGte => (_$data['confidenceGte'] as double?);

  double? get confidenceLte => (_$data['confidenceLte'] as double?);

  double? get probabilityGt => (_$data['probabilityGt'] as double?);

  double? get probabilityLt => (_$data['probabilityLt'] as double?);

  double? get probabilityGte => (_$data['probabilityGte'] as double?);

  double? get probabilityLte => (_$data['probabilityLte'] as double?);

  int? get timeOfDayGte => (_$data['timeOfDayGte'] as int?);

  int? get timeOfDayLte => (_$data['timeOfDayLte'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('speciesIds')) {
      final l$speciesIds = speciesIds;
      result$data['speciesIds'] = l$speciesIds?.map((e) => e).toList();
    }
    if (_$data.containsKey('stationIds')) {
      final l$stationIds = stationIds;
      result$data['stationIds'] = l$stationIds?.map((e) => e).toList();
    }
    if (_$data.containsKey('stationTypes')) {
      final l$stationTypes = stationTypes;
      result$data['stationTypes'] = l$stationTypes?.map((e) => e).toList();
    }
    if (_$data.containsKey('continents')) {
      final l$continents = continents;
      result$data['continents'] = l$continents?.map((e) => e).toList();
    }
    if (_$data.containsKey('countries')) {
      final l$countries = countries;
      result$data['countries'] = l$countries?.map((e) => e).toList();
    }
    if (_$data.containsKey('recordingModes')) {
      final l$recordingModes = recordingModes;
      result$data['recordingModes'] = l$recordingModes?.map((e) => e).toList();
    }
    if (_$data.containsKey('scoreGt')) {
      final l$scoreGt = scoreGt;
      result$data['scoreGt'] = l$scoreGt;
    }
    if (_$data.containsKey('scoreLt')) {
      final l$scoreLt = scoreLt;
      result$data['scoreLt'] = l$scoreLt;
    }
    if (_$data.containsKey('scoreGte')) {
      final l$scoreGte = scoreGte;
      result$data['scoreGte'] = l$scoreGte;
    }
    if (_$data.containsKey('scoreLte')) {
      final l$scoreLte = scoreLte;
      result$data['scoreLte'] = l$scoreLte;
    }
    if (_$data.containsKey('confidenceGt')) {
      final l$confidenceGt = confidenceGt;
      result$data['confidenceGt'] = l$confidenceGt;
    }
    if (_$data.containsKey('confidenceLt')) {
      final l$confidenceLt = confidenceLt;
      result$data['confidenceLt'] = l$confidenceLt;
    }
    if (_$data.containsKey('confidenceGte')) {
      final l$confidenceGte = confidenceGte;
      result$data['confidenceGte'] = l$confidenceGte;
    }
    if (_$data.containsKey('confidenceLte')) {
      final l$confidenceLte = confidenceLte;
      result$data['confidenceLte'] = l$confidenceLte;
    }
    if (_$data.containsKey('probabilityGt')) {
      final l$probabilityGt = probabilityGt;
      result$data['probabilityGt'] = l$probabilityGt;
    }
    if (_$data.containsKey('probabilityLt')) {
      final l$probabilityLt = probabilityLt;
      result$data['probabilityLt'] = l$probabilityLt;
    }
    if (_$data.containsKey('probabilityGte')) {
      final l$probabilityGte = probabilityGte;
      result$data['probabilityGte'] = l$probabilityGte;
    }
    if (_$data.containsKey('probabilityLte')) {
      final l$probabilityLte = probabilityLte;
      result$data['probabilityLte'] = l$probabilityLte;
    }
    if (_$data.containsKey('timeOfDayGte')) {
      final l$timeOfDayGte = timeOfDayGte;
      result$data['timeOfDayGte'] = l$timeOfDayGte;
    }
    if (_$data.containsKey('timeOfDayLte')) {
      final l$timeOfDayLte = timeOfDayLte;
      result$data['timeOfDayLte'] = l$timeOfDayLte;
    }
    return result$data;
  }

  CopyWith$Variables$Subscription$NewDetection<
          Variables$Subscription$NewDetection>
      get copyWith => CopyWith$Variables$Subscription$NewDetection(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Subscription$NewDetection) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$speciesIds = speciesIds;
    final lOther$speciesIds = other.speciesIds;
    if (_$data.containsKey('speciesIds') !=
        other._$data.containsKey('speciesIds')) {
      return false;
    }
    if (l$speciesIds != null && lOther$speciesIds != null) {
      if (l$speciesIds.length != lOther$speciesIds.length) {
        return false;
      }
      for (int i = 0; i < l$speciesIds.length; i++) {
        final l$speciesIds$entry = l$speciesIds[i];
        final lOther$speciesIds$entry = lOther$speciesIds[i];
        if (l$speciesIds$entry != lOther$speciesIds$entry) {
          return false;
        }
      }
    } else if (l$speciesIds != lOther$speciesIds) {
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
    final l$continents = continents;
    final lOther$continents = other.continents;
    if (_$data.containsKey('continents') !=
        other._$data.containsKey('continents')) {
      return false;
    }
    if (l$continents != null && lOther$continents != null) {
      if (l$continents.length != lOther$continents.length) {
        return false;
      }
      for (int i = 0; i < l$continents.length; i++) {
        final l$continents$entry = l$continents[i];
        final lOther$continents$entry = lOther$continents[i];
        if (l$continents$entry != lOther$continents$entry) {
          return false;
        }
      }
    } else if (l$continents != lOther$continents) {
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
    final l$recordingModes = recordingModes;
    final lOther$recordingModes = other.recordingModes;
    if (_$data.containsKey('recordingModes') !=
        other._$data.containsKey('recordingModes')) {
      return false;
    }
    if (l$recordingModes != null && lOther$recordingModes != null) {
      if (l$recordingModes.length != lOther$recordingModes.length) {
        return false;
      }
      for (int i = 0; i < l$recordingModes.length; i++) {
        final l$recordingModes$entry = l$recordingModes[i];
        final lOther$recordingModes$entry = lOther$recordingModes[i];
        if (l$recordingModes$entry != lOther$recordingModes$entry) {
          return false;
        }
      }
    } else if (l$recordingModes != lOther$recordingModes) {
      return false;
    }
    final l$scoreGt = scoreGt;
    final lOther$scoreGt = other.scoreGt;
    if (_$data.containsKey('scoreGt') != other._$data.containsKey('scoreGt')) {
      return false;
    }
    if (l$scoreGt != lOther$scoreGt) {
      return false;
    }
    final l$scoreLt = scoreLt;
    final lOther$scoreLt = other.scoreLt;
    if (_$data.containsKey('scoreLt') != other._$data.containsKey('scoreLt')) {
      return false;
    }
    if (l$scoreLt != lOther$scoreLt) {
      return false;
    }
    final l$scoreGte = scoreGte;
    final lOther$scoreGte = other.scoreGte;
    if (_$data.containsKey('scoreGte') !=
        other._$data.containsKey('scoreGte')) {
      return false;
    }
    if (l$scoreGte != lOther$scoreGte) {
      return false;
    }
    final l$scoreLte = scoreLte;
    final lOther$scoreLte = other.scoreLte;
    if (_$data.containsKey('scoreLte') !=
        other._$data.containsKey('scoreLte')) {
      return false;
    }
    if (l$scoreLte != lOther$scoreLte) {
      return false;
    }
    final l$confidenceGt = confidenceGt;
    final lOther$confidenceGt = other.confidenceGt;
    if (_$data.containsKey('confidenceGt') !=
        other._$data.containsKey('confidenceGt')) {
      return false;
    }
    if (l$confidenceGt != lOther$confidenceGt) {
      return false;
    }
    final l$confidenceLt = confidenceLt;
    final lOther$confidenceLt = other.confidenceLt;
    if (_$data.containsKey('confidenceLt') !=
        other._$data.containsKey('confidenceLt')) {
      return false;
    }
    if (l$confidenceLt != lOther$confidenceLt) {
      return false;
    }
    final l$confidenceGte = confidenceGte;
    final lOther$confidenceGte = other.confidenceGte;
    if (_$data.containsKey('confidenceGte') !=
        other._$data.containsKey('confidenceGte')) {
      return false;
    }
    if (l$confidenceGte != lOther$confidenceGte) {
      return false;
    }
    final l$confidenceLte = confidenceLte;
    final lOther$confidenceLte = other.confidenceLte;
    if (_$data.containsKey('confidenceLte') !=
        other._$data.containsKey('confidenceLte')) {
      return false;
    }
    if (l$confidenceLte != lOther$confidenceLte) {
      return false;
    }
    final l$probabilityGt = probabilityGt;
    final lOther$probabilityGt = other.probabilityGt;
    if (_$data.containsKey('probabilityGt') !=
        other._$data.containsKey('probabilityGt')) {
      return false;
    }
    if (l$probabilityGt != lOther$probabilityGt) {
      return false;
    }
    final l$probabilityLt = probabilityLt;
    final lOther$probabilityLt = other.probabilityLt;
    if (_$data.containsKey('probabilityLt') !=
        other._$data.containsKey('probabilityLt')) {
      return false;
    }
    if (l$probabilityLt != lOther$probabilityLt) {
      return false;
    }
    final l$probabilityGte = probabilityGte;
    final lOther$probabilityGte = other.probabilityGte;
    if (_$data.containsKey('probabilityGte') !=
        other._$data.containsKey('probabilityGte')) {
      return false;
    }
    if (l$probabilityGte != lOther$probabilityGte) {
      return false;
    }
    final l$probabilityLte = probabilityLte;
    final lOther$probabilityLte = other.probabilityLte;
    if (_$data.containsKey('probabilityLte') !=
        other._$data.containsKey('probabilityLte')) {
      return false;
    }
    if (l$probabilityLte != lOther$probabilityLte) {
      return false;
    }
    final l$timeOfDayGte = timeOfDayGte;
    final lOther$timeOfDayGte = other.timeOfDayGte;
    if (_$data.containsKey('timeOfDayGte') !=
        other._$data.containsKey('timeOfDayGte')) {
      return false;
    }
    if (l$timeOfDayGte != lOther$timeOfDayGte) {
      return false;
    }
    final l$timeOfDayLte = timeOfDayLte;
    final lOther$timeOfDayLte = other.timeOfDayLte;
    if (_$data.containsKey('timeOfDayLte') !=
        other._$data.containsKey('timeOfDayLte')) {
      return false;
    }
    if (l$timeOfDayLte != lOther$timeOfDayLte) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$speciesIds = speciesIds;
    final l$stationIds = stationIds;
    final l$stationTypes = stationTypes;
    final l$continents = continents;
    final l$countries = countries;
    final l$recordingModes = recordingModes;
    final l$scoreGt = scoreGt;
    final l$scoreLt = scoreLt;
    final l$scoreGte = scoreGte;
    final l$scoreLte = scoreLte;
    final l$confidenceGt = confidenceGt;
    final l$confidenceLt = confidenceLt;
    final l$confidenceGte = confidenceGte;
    final l$confidenceLte = confidenceLte;
    final l$probabilityGt = probabilityGt;
    final l$probabilityLt = probabilityLt;
    final l$probabilityGte = probabilityGte;
    final l$probabilityLte = probabilityLte;
    final l$timeOfDayGte = timeOfDayGte;
    final l$timeOfDayLte = timeOfDayLte;
    return Object.hashAll([
      _$data.containsKey('speciesIds')
          ? l$speciesIds == null
              ? null
              : Object.hashAll(l$speciesIds.map((v) => v))
          : const {},
      _$data.containsKey('stationIds')
          ? l$stationIds == null
              ? null
              : Object.hashAll(l$stationIds.map((v) => v))
          : const {},
      _$data.containsKey('stationTypes')
          ? l$stationTypes == null
              ? null
              : Object.hashAll(l$stationTypes.map((v) => v))
          : const {},
      _$data.containsKey('continents')
          ? l$continents == null
              ? null
              : Object.hashAll(l$continents.map((v) => v))
          : const {},
      _$data.containsKey('countries')
          ? l$countries == null
              ? null
              : Object.hashAll(l$countries.map((v) => v))
          : const {},
      _$data.containsKey('recordingModes')
          ? l$recordingModes == null
              ? null
              : Object.hashAll(l$recordingModes.map((v) => v))
          : const {},
      _$data.containsKey('scoreGt') ? l$scoreGt : const {},
      _$data.containsKey('scoreLt') ? l$scoreLt : const {},
      _$data.containsKey('scoreGte') ? l$scoreGte : const {},
      _$data.containsKey('scoreLte') ? l$scoreLte : const {},
      _$data.containsKey('confidenceGt') ? l$confidenceGt : const {},
      _$data.containsKey('confidenceLt') ? l$confidenceLt : const {},
      _$data.containsKey('confidenceGte') ? l$confidenceGte : const {},
      _$data.containsKey('confidenceLte') ? l$confidenceLte : const {},
      _$data.containsKey('probabilityGt') ? l$probabilityGt : const {},
      _$data.containsKey('probabilityLt') ? l$probabilityLt : const {},
      _$data.containsKey('probabilityGte') ? l$probabilityGte : const {},
      _$data.containsKey('probabilityLte') ? l$probabilityLte : const {},
      _$data.containsKey('timeOfDayGte') ? l$timeOfDayGte : const {},
      _$data.containsKey('timeOfDayLte') ? l$timeOfDayLte : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Subscription$NewDetection<TRes> {
  factory CopyWith$Variables$Subscription$NewDetection(
    Variables$Subscription$NewDetection instance,
    TRes Function(Variables$Subscription$NewDetection) then,
  ) = _CopyWithImpl$Variables$Subscription$NewDetection;

  factory CopyWith$Variables$Subscription$NewDetection.stub(TRes res) =
      _CopyWithStubImpl$Variables$Subscription$NewDetection;

  TRes call({
    List<String>? speciesIds,
    List<String>? stationIds,
    List<String>? stationTypes,
    List<String>? continents,
    List<String>? countries,
    List<String>? recordingModes,
    double? scoreGt,
    double? scoreLt,
    double? scoreGte,
    double? scoreLte,
    double? confidenceGt,
    double? confidenceLt,
    double? confidenceGte,
    double? confidenceLte,
    double? probabilityGt,
    double? probabilityLt,
    double? probabilityGte,
    double? probabilityLte,
    int? timeOfDayGte,
    int? timeOfDayLte,
  });
}

class _CopyWithImpl$Variables$Subscription$NewDetection<TRes>
    implements CopyWith$Variables$Subscription$NewDetection<TRes> {
  _CopyWithImpl$Variables$Subscription$NewDetection(
    this._instance,
    this._then,
  );

  final Variables$Subscription$NewDetection _instance;

  final TRes Function(Variables$Subscription$NewDetection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? speciesIds = _undefined,
    Object? stationIds = _undefined,
    Object? stationTypes = _undefined,
    Object? continents = _undefined,
    Object? countries = _undefined,
    Object? recordingModes = _undefined,
    Object? scoreGt = _undefined,
    Object? scoreLt = _undefined,
    Object? scoreGte = _undefined,
    Object? scoreLte = _undefined,
    Object? confidenceGt = _undefined,
    Object? confidenceLt = _undefined,
    Object? confidenceGte = _undefined,
    Object? confidenceLte = _undefined,
    Object? probabilityGt = _undefined,
    Object? probabilityLt = _undefined,
    Object? probabilityGte = _undefined,
    Object? probabilityLte = _undefined,
    Object? timeOfDayGte = _undefined,
    Object? timeOfDayLte = _undefined,
  }) =>
      _then(Variables$Subscription$NewDetection._({
        ..._instance._$data,
        if (speciesIds != _undefined)
          'speciesIds': (speciesIds as List<String>?),
        if (stationIds != _undefined)
          'stationIds': (stationIds as List<String>?),
        if (stationTypes != _undefined)
          'stationTypes': (stationTypes as List<String>?),
        if (continents != _undefined)
          'continents': (continents as List<String>?),
        if (countries != _undefined) 'countries': (countries as List<String>?),
        if (recordingModes != _undefined)
          'recordingModes': (recordingModes as List<String>?),
        if (scoreGt != _undefined) 'scoreGt': (scoreGt as double?),
        if (scoreLt != _undefined) 'scoreLt': (scoreLt as double?),
        if (scoreGte != _undefined) 'scoreGte': (scoreGte as double?),
        if (scoreLte != _undefined) 'scoreLte': (scoreLte as double?),
        if (confidenceGt != _undefined)
          'confidenceGt': (confidenceGt as double?),
        if (confidenceLt != _undefined)
          'confidenceLt': (confidenceLt as double?),
        if (confidenceGte != _undefined)
          'confidenceGte': (confidenceGte as double?),
        if (confidenceLte != _undefined)
          'confidenceLte': (confidenceLte as double?),
        if (probabilityGt != _undefined)
          'probabilityGt': (probabilityGt as double?),
        if (probabilityLt != _undefined)
          'probabilityLt': (probabilityLt as double?),
        if (probabilityGte != _undefined)
          'probabilityGte': (probabilityGte as double?),
        if (probabilityLte != _undefined)
          'probabilityLte': (probabilityLte as double?),
        if (timeOfDayGte != _undefined) 'timeOfDayGte': (timeOfDayGte as int?),
        if (timeOfDayLte != _undefined) 'timeOfDayLte': (timeOfDayLte as int?),
      }));
}

class _CopyWithStubImpl$Variables$Subscription$NewDetection<TRes>
    implements CopyWith$Variables$Subscription$NewDetection<TRes> {
  _CopyWithStubImpl$Variables$Subscription$NewDetection(this._res);

  TRes _res;

  call({
    List<String>? speciesIds,
    List<String>? stationIds,
    List<String>? stationTypes,
    List<String>? continents,
    List<String>? countries,
    List<String>? recordingModes,
    double? scoreGt,
    double? scoreLt,
    double? scoreGte,
    double? scoreLte,
    double? confidenceGt,
    double? confidenceLt,
    double? confidenceGte,
    double? confidenceLte,
    double? probabilityGt,
    double? probabilityLt,
    double? probabilityGte,
    double? probabilityLte,
    int? timeOfDayGte,
    int? timeOfDayLte,
  }) =>
      _res;
}

class Subscription$NewDetection {
  Subscription$NewDetection({
    required this.newDetection,
    this.$__typename = 'Subscription',
  });

  factory Subscription$NewDetection.fromJson(Map<String, dynamic> json) {
    final l$newDetection = json['newDetection'];
    final l$$__typename = json['__typename'];
    return Subscription$NewDetection(
      newDetection: Subscription$NewDetection$newDetection.fromJson(
          (l$newDetection as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Subscription$NewDetection$newDetection newDetection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$newDetection = newDetection;
    _resultData['newDetection'] = l$newDetection.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$newDetection = newDetection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$newDetection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$NewDetection) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$newDetection = newDetection;
    final lOther$newDetection = other.newDetection;
    if (l$newDetection != lOther$newDetection) {
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

extension UtilityExtension$Subscription$NewDetection
    on Subscription$NewDetection {
  CopyWith$Subscription$NewDetection<Subscription$NewDetection> get copyWith =>
      CopyWith$Subscription$NewDetection(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Subscription$NewDetection<TRes> {
  factory CopyWith$Subscription$NewDetection(
    Subscription$NewDetection instance,
    TRes Function(Subscription$NewDetection) then,
  ) = _CopyWithImpl$Subscription$NewDetection;

  factory CopyWith$Subscription$NewDetection.stub(TRes res) =
      _CopyWithStubImpl$Subscription$NewDetection;

  TRes call({
    Subscription$NewDetection$newDetection? newDetection,
    String? $__typename,
  });
  CopyWith$Subscription$NewDetection$newDetection<TRes> get newDetection;
}

class _CopyWithImpl$Subscription$NewDetection<TRes>
    implements CopyWith$Subscription$NewDetection<TRes> {
  _CopyWithImpl$Subscription$NewDetection(
    this._instance,
    this._then,
  );

  final Subscription$NewDetection _instance;

  final TRes Function(Subscription$NewDetection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? newDetection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$NewDetection(
        newDetection: newDetection == _undefined || newDetection == null
            ? _instance.newDetection
            : (newDetection as Subscription$NewDetection$newDetection),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Subscription$NewDetection$newDetection<TRes> get newDetection {
    final local$newDetection = _instance.newDetection;
    return CopyWith$Subscription$NewDetection$newDetection(
        local$newDetection, (e) => call(newDetection: e));
  }
}

class _CopyWithStubImpl$Subscription$NewDetection<TRes>
    implements CopyWith$Subscription$NewDetection<TRes> {
  _CopyWithStubImpl$Subscription$NewDetection(this._res);

  TRes _res;

  call({
    Subscription$NewDetection$newDetection? newDetection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Subscription$NewDetection$newDetection<TRes> get newDetection =>
      CopyWith$Subscription$NewDetection$newDetection.stub(_res);
}

const documentNodeSubscriptionNewDetection = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'NewDetection'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'speciesIds')),
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
        variable: VariableNode(name: NameNode(value: 'continents')),
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
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'recordingModes')),
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
        variable: VariableNode(name: NameNode(value: 'scoreGt')),
        type: NamedTypeNode(
          name: NameNode(value: 'Float'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'scoreLt')),
        type: NamedTypeNode(
          name: NameNode(value: 'Float'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'scoreGte')),
        type: NamedTypeNode(
          name: NameNode(value: 'Float'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'scoreLte')),
        type: NamedTypeNode(
          name: NameNode(value: 'Float'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'confidenceGt')),
        type: NamedTypeNode(
          name: NameNode(value: 'Float'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'confidenceLt')),
        type: NamedTypeNode(
          name: NameNode(value: 'Float'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'confidenceGte')),
        type: NamedTypeNode(
          name: NameNode(value: 'Float'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'confidenceLte')),
        type: NamedTypeNode(
          name: NameNode(value: 'Float'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'probabilityGt')),
        type: NamedTypeNode(
          name: NameNode(value: 'Float'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'probabilityLt')),
        type: NamedTypeNode(
          name: NameNode(value: 'Float'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'probabilityGte')),
        type: NamedTypeNode(
          name: NameNode(value: 'Float'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'probabilityLte')),
        type: NamedTypeNode(
          name: NameNode(value: 'Float'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'timeOfDayGte')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'timeOfDayLte')),
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
        name: NameNode(value: 'newDetection'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'speciesIds'),
            value: VariableNode(name: NameNode(value: 'speciesIds')),
          ),
          ArgumentNode(
            name: NameNode(value: 'stationIds'),
            value: VariableNode(name: NameNode(value: 'stationIds')),
          ),
          ArgumentNode(
            name: NameNode(value: 'stationTypes'),
            value: VariableNode(name: NameNode(value: 'stationTypes')),
          ),
          ArgumentNode(
            name: NameNode(value: 'continents'),
            value: VariableNode(name: NameNode(value: 'continents')),
          ),
          ArgumentNode(
            name: NameNode(value: 'countries'),
            value: VariableNode(name: NameNode(value: 'countries')),
          ),
          ArgumentNode(
            name: NameNode(value: 'recordingModes'),
            value: VariableNode(name: NameNode(value: 'recordingModes')),
          ),
          ArgumentNode(
            name: NameNode(value: 'scoreGt'),
            value: VariableNode(name: NameNode(value: 'scoreGt')),
          ),
          ArgumentNode(
            name: NameNode(value: 'scoreLt'),
            value: VariableNode(name: NameNode(value: 'scoreLt')),
          ),
          ArgumentNode(
            name: NameNode(value: 'scoreGte'),
            value: VariableNode(name: NameNode(value: 'scoreGte')),
          ),
          ArgumentNode(
            name: NameNode(value: 'scoreLte'),
            value: VariableNode(name: NameNode(value: 'scoreLte')),
          ),
          ArgumentNode(
            name: NameNode(value: 'confidenceGt'),
            value: VariableNode(name: NameNode(value: 'confidenceGt')),
          ),
          ArgumentNode(
            name: NameNode(value: 'confidenceLt'),
            value: VariableNode(name: NameNode(value: 'confidenceLt')),
          ),
          ArgumentNode(
            name: NameNode(value: 'confidenceGte'),
            value: VariableNode(name: NameNode(value: 'confidenceGte')),
          ),
          ArgumentNode(
            name: NameNode(value: 'confidenceLte'),
            value: VariableNode(name: NameNode(value: 'confidenceLte')),
          ),
          ArgumentNode(
            name: NameNode(value: 'probabilityGt'),
            value: VariableNode(name: NameNode(value: 'probabilityGt')),
          ),
          ArgumentNode(
            name: NameNode(value: 'probabilityLt'),
            value: VariableNode(name: NameNode(value: 'probabilityLt')),
          ),
          ArgumentNode(
            name: NameNode(value: 'probabilityGte'),
            value: VariableNode(name: NameNode(value: 'probabilityGte')),
          ),
          ArgumentNode(
            name: NameNode(value: 'probabilityLte'),
            value: VariableNode(name: NameNode(value: 'probabilityLte')),
          ),
          ArgumentNode(
            name: NameNode(value: 'timeOfDayGte'),
            value: VariableNode(name: NameNode(value: 'timeOfDayGte')),
          ),
          ArgumentNode(
            name: NameNode(value: 'timeOfDayLte'),
            value: VariableNode(name: NameNode(value: 'timeOfDayLte')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'detection'),
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
Subscription$NewDetection _parserFn$Subscription$NewDetection(
        Map<String, dynamic> data) =>
    Subscription$NewDetection.fromJson(data);

class Options$Subscription$NewDetection
    extends graphql.SubscriptionOptions<Subscription$NewDetection> {
  Options$Subscription$NewDetection({
    String? operationName,
    Variables$Subscription$NewDetection? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Subscription$NewDetection? typedOptimisticResult,
    graphql.Context? context,
  }) : super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeSubscriptionNewDetection,
          parserFn: _parserFn$Subscription$NewDetection,
        );
}

class WatchOptions$Subscription$NewDetection
    extends graphql.WatchQueryOptions<Subscription$NewDetection> {
  WatchOptions$Subscription$NewDetection({
    String? operationName,
    Variables$Subscription$NewDetection? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Subscription$NewDetection? typedOptimisticResult,
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
          document: documentNodeSubscriptionNewDetection,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Subscription$NewDetection,
        );
}

class FetchMoreOptions$Subscription$NewDetection
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Subscription$NewDetection({
    required graphql.UpdateQuery updateQuery,
    Variables$Subscription$NewDetection? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeSubscriptionNewDetection,
        );
}

extension ClientExtension$Subscription$NewDetection on graphql.GraphQLClient {
  Stream<graphql.QueryResult<Subscription$NewDetection>> subscribe$NewDetection(
          [Options$Subscription$NewDetection? options]) =>
      this.subscribe(options ?? Options$Subscription$NewDetection());
  graphql.ObservableQuery<Subscription$NewDetection>
      watchSubscription$NewDetection(
              [WatchOptions$Subscription$NewDetection? options]) =>
          this.watchQuery(options ?? WatchOptions$Subscription$NewDetection());
}

class Subscription$NewDetection$newDetection {
  Subscription$NewDetection$newDetection({
    required this.detection,
    this.$__typename = 'NewDetectionPayload',
  });

  factory Subscription$NewDetection$newDetection.fromJson(
      Map<String, dynamic> json) {
    final l$detection = json['detection'];
    final l$$__typename = json['__typename'];
    return Subscription$NewDetection$newDetection(
      detection: Subscription$NewDetection$newDetection$detection.fromJson(
          (l$detection as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Subscription$NewDetection$newDetection$detection detection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$detection = detection;
    _resultData['detection'] = l$detection.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$detection = detection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$detection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$NewDetection$newDetection) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$detection = detection;
    final lOther$detection = other.detection;
    if (l$detection != lOther$detection) {
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

extension UtilityExtension$Subscription$NewDetection$newDetection
    on Subscription$NewDetection$newDetection {
  CopyWith$Subscription$NewDetection$newDetection<
          Subscription$NewDetection$newDetection>
      get copyWith => CopyWith$Subscription$NewDetection$newDetection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$NewDetection$newDetection<TRes> {
  factory CopyWith$Subscription$NewDetection$newDetection(
    Subscription$NewDetection$newDetection instance,
    TRes Function(Subscription$NewDetection$newDetection) then,
  ) = _CopyWithImpl$Subscription$NewDetection$newDetection;

  factory CopyWith$Subscription$NewDetection$newDetection.stub(TRes res) =
      _CopyWithStubImpl$Subscription$NewDetection$newDetection;

  TRes call({
    Subscription$NewDetection$newDetection$detection? detection,
    String? $__typename,
  });
  CopyWith$Subscription$NewDetection$newDetection$detection<TRes> get detection;
}

class _CopyWithImpl$Subscription$NewDetection$newDetection<TRes>
    implements CopyWith$Subscription$NewDetection$newDetection<TRes> {
  _CopyWithImpl$Subscription$NewDetection$newDetection(
    this._instance,
    this._then,
  );

  final Subscription$NewDetection$newDetection _instance;

  final TRes Function(Subscription$NewDetection$newDetection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? detection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$NewDetection$newDetection(
        detection: detection == _undefined || detection == null
            ? _instance.detection
            : (detection as Subscription$NewDetection$newDetection$detection),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Subscription$NewDetection$newDetection$detection<TRes>
      get detection {
    final local$detection = _instance.detection;
    return CopyWith$Subscription$NewDetection$newDetection$detection(
        local$detection, (e) => call(detection: e));
  }
}

class _CopyWithStubImpl$Subscription$NewDetection$newDetection<TRes>
    implements CopyWith$Subscription$NewDetection$newDetection<TRes> {
  _CopyWithStubImpl$Subscription$NewDetection$newDetection(this._res);

  TRes _res;

  call({
    Subscription$NewDetection$newDetection$detection? detection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Subscription$NewDetection$newDetection$detection<TRes>
      get detection =>
          CopyWith$Subscription$NewDetection$newDetection$detection.stub(_res);
}

class Subscription$NewDetection$newDetection$detection {
  Subscription$NewDetection$newDetection$detection({
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

  factory Subscription$NewDetection$newDetection$detection.fromJson(
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
    return Subscription$NewDetection$newDetection$detection(
      id: (l$id as String),
      timestamp: (l$timestamp as String?),
      score: (l$score as num).toDouble(),
      confidence: (l$confidence as num).toDouble(),
      probability: (l$probability as num?)?.toDouble(),
      certainty: (l$certainty as String),
      coords: Subscription$NewDetection$newDetection$detection$coords.fromJson(
          (l$coords as Map<String, dynamic>)),
      species:
          Subscription$NewDetection$newDetection$detection$species.fromJson(
              (l$species as Map<String, dynamic>)),
      voteUrl: (l$voteUrl as String),
      flagUrl: (l$flagUrl as String),
      soundscape: l$soundscape == null
          ? null
          : Subscription$NewDetection$newDetection$detection$soundscape
              .fromJson((l$soundscape as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String? timestamp;

  final double score;

  final double confidence;

  final double? probability;

  final String certainty;

  final Subscription$NewDetection$newDetection$detection$coords coords;

  final Subscription$NewDetection$newDetection$detection$species species;

  final String voteUrl;

  final String flagUrl;

  final Subscription$NewDetection$newDetection$detection$soundscape? soundscape;

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
    if (!(other is Subscription$NewDetection$newDetection$detection) ||
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

extension UtilityExtension$Subscription$NewDetection$newDetection$detection
    on Subscription$NewDetection$newDetection$detection {
  CopyWith$Subscription$NewDetection$newDetection$detection<
          Subscription$NewDetection$newDetection$detection>
      get copyWith => CopyWith$Subscription$NewDetection$newDetection$detection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$NewDetection$newDetection$detection<TRes> {
  factory CopyWith$Subscription$NewDetection$newDetection$detection(
    Subscription$NewDetection$newDetection$detection instance,
    TRes Function(Subscription$NewDetection$newDetection$detection) then,
  ) = _CopyWithImpl$Subscription$NewDetection$newDetection$detection;

  factory CopyWith$Subscription$NewDetection$newDetection$detection.stub(
          TRes res) =
      _CopyWithStubImpl$Subscription$NewDetection$newDetection$detection;

  TRes call({
    String? id,
    String? timestamp,
    double? score,
    double? confidence,
    double? probability,
    String? certainty,
    Subscription$NewDetection$newDetection$detection$coords? coords,
    Subscription$NewDetection$newDetection$detection$species? species,
    String? voteUrl,
    String? flagUrl,
    Subscription$NewDetection$newDetection$detection$soundscape? soundscape,
    String? $__typename,
  });
  CopyWith$Subscription$NewDetection$newDetection$detection$coords<TRes>
      get coords;
  CopyWith$Subscription$NewDetection$newDetection$detection$species<TRes>
      get species;
  CopyWith$Subscription$NewDetection$newDetection$detection$soundscape<TRes>
      get soundscape;
}

class _CopyWithImpl$Subscription$NewDetection$newDetection$detection<TRes>
    implements CopyWith$Subscription$NewDetection$newDetection$detection<TRes> {
  _CopyWithImpl$Subscription$NewDetection$newDetection$detection(
    this._instance,
    this._then,
  );

  final Subscription$NewDetection$newDetection$detection _instance;

  final TRes Function(Subscription$NewDetection$newDetection$detection) _then;

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
      _then(Subscription$NewDetection$newDetection$detection(
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
            : (coords
                as Subscription$NewDetection$newDetection$detection$coords),
        species: species == _undefined || species == null
            ? _instance.species
            : (species
                as Subscription$NewDetection$newDetection$detection$species),
        voteUrl: voteUrl == _undefined || voteUrl == null
            ? _instance.voteUrl
            : (voteUrl as String),
        flagUrl: flagUrl == _undefined || flagUrl == null
            ? _instance.flagUrl
            : (flagUrl as String),
        soundscape: soundscape == _undefined
            ? _instance.soundscape
            : (soundscape
                as Subscription$NewDetection$newDetection$detection$soundscape?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Subscription$NewDetection$newDetection$detection$coords<TRes>
      get coords {
    final local$coords = _instance.coords;
    return CopyWith$Subscription$NewDetection$newDetection$detection$coords(
        local$coords, (e) => call(coords: e));
  }

  CopyWith$Subscription$NewDetection$newDetection$detection$species<TRes>
      get species {
    final local$species = _instance.species;
    return CopyWith$Subscription$NewDetection$newDetection$detection$species(
        local$species, (e) => call(species: e));
  }

  CopyWith$Subscription$NewDetection$newDetection$detection$soundscape<TRes>
      get soundscape {
    final local$soundscape = _instance.soundscape;
    return local$soundscape == null
        ? CopyWith$Subscription$NewDetection$newDetection$detection$soundscape
            .stub(_then(_instance))
        : CopyWith$Subscription$NewDetection$newDetection$detection$soundscape(
            local$soundscape, (e) => call(soundscape: e));
  }
}

class _CopyWithStubImpl$Subscription$NewDetection$newDetection$detection<TRes>
    implements CopyWith$Subscription$NewDetection$newDetection$detection<TRes> {
  _CopyWithStubImpl$Subscription$NewDetection$newDetection$detection(this._res);

  TRes _res;

  call({
    String? id,
    String? timestamp,
    double? score,
    double? confidence,
    double? probability,
    String? certainty,
    Subscription$NewDetection$newDetection$detection$coords? coords,
    Subscription$NewDetection$newDetection$detection$species? species,
    String? voteUrl,
    String? flagUrl,
    Subscription$NewDetection$newDetection$detection$soundscape? soundscape,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Subscription$NewDetection$newDetection$detection$coords<TRes>
      get coords =>
          CopyWith$Subscription$NewDetection$newDetection$detection$coords.stub(
              _res);

  CopyWith$Subscription$NewDetection$newDetection$detection$species<TRes>
      get species =>
          CopyWith$Subscription$NewDetection$newDetection$detection$species
              .stub(_res);

  CopyWith$Subscription$NewDetection$newDetection$detection$soundscape<TRes>
      get soundscape =>
          CopyWith$Subscription$NewDetection$newDetection$detection$soundscape
              .stub(_res);
}

class Subscription$NewDetection$newDetection$detection$coords {
  Subscription$NewDetection$newDetection$detection$coords({
    required this.lat,
    required this.lon,
    this.$__typename = 'Coordinates',
  });

  factory Subscription$NewDetection$newDetection$detection$coords.fromJson(
      Map<String, dynamic> json) {
    final l$lat = json['lat'];
    final l$lon = json['lon'];
    final l$$__typename = json['__typename'];
    return Subscription$NewDetection$newDetection$detection$coords(
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
    if (!(other is Subscription$NewDetection$newDetection$detection$coords) ||
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

extension UtilityExtension$Subscription$NewDetection$newDetection$detection$coords
    on Subscription$NewDetection$newDetection$detection$coords {
  CopyWith$Subscription$NewDetection$newDetection$detection$coords<
          Subscription$NewDetection$newDetection$detection$coords>
      get copyWith =>
          CopyWith$Subscription$NewDetection$newDetection$detection$coords(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$NewDetection$newDetection$detection$coords<
    TRes> {
  factory CopyWith$Subscription$NewDetection$newDetection$detection$coords(
    Subscription$NewDetection$newDetection$detection$coords instance,
    TRes Function(Subscription$NewDetection$newDetection$detection$coords) then,
  ) = _CopyWithImpl$Subscription$NewDetection$newDetection$detection$coords;

  factory CopyWith$Subscription$NewDetection$newDetection$detection$coords.stub(
          TRes res) =
      _CopyWithStubImpl$Subscription$NewDetection$newDetection$detection$coords;

  TRes call({
    double? lat,
    double? lon,
    String? $__typename,
  });
}

class _CopyWithImpl$Subscription$NewDetection$newDetection$detection$coords<
        TRes>
    implements
        CopyWith$Subscription$NewDetection$newDetection$detection$coords<TRes> {
  _CopyWithImpl$Subscription$NewDetection$newDetection$detection$coords(
    this._instance,
    this._then,
  );

  final Subscription$NewDetection$newDetection$detection$coords _instance;

  final TRes Function(Subscription$NewDetection$newDetection$detection$coords)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? lat = _undefined,
    Object? lon = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$NewDetection$newDetection$detection$coords(
        lat: lat == _undefined || lat == null ? _instance.lat : (lat as double),
        lon: lon == _undefined || lon == null ? _instance.lon : (lon as double),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Subscription$NewDetection$newDetection$detection$coords<
        TRes>
    implements
        CopyWith$Subscription$NewDetection$newDetection$detection$coords<TRes> {
  _CopyWithStubImpl$Subscription$NewDetection$newDetection$detection$coords(
      this._res);

  TRes _res;

  call({
    double? lat,
    double? lon,
    String? $__typename,
  }) =>
      _res;
}

class Subscription$NewDetection$newDetection$detection$species {
  Subscription$NewDetection$newDetection$detection$species({
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

  factory Subscription$NewDetection$newDetection$detection$species.fromJson(
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
    return Subscription$NewDetection$newDetection$detection$species(
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
    if (!(other is Subscription$NewDetection$newDetection$detection$species) ||
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

extension UtilityExtension$Subscription$NewDetection$newDetection$detection$species
    on Subscription$NewDetection$newDetection$detection$species {
  CopyWith$Subscription$NewDetection$newDetection$detection$species<
          Subscription$NewDetection$newDetection$detection$species>
      get copyWith =>
          CopyWith$Subscription$NewDetection$newDetection$detection$species(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$NewDetection$newDetection$detection$species<
    TRes> {
  factory CopyWith$Subscription$NewDetection$newDetection$detection$species(
    Subscription$NewDetection$newDetection$detection$species instance,
    TRes Function(Subscription$NewDetection$newDetection$detection$species)
        then,
  ) = _CopyWithImpl$Subscription$NewDetection$newDetection$detection$species;

  factory CopyWith$Subscription$NewDetection$newDetection$detection$species.stub(
          TRes res) =
      _CopyWithStubImpl$Subscription$NewDetection$newDetection$detection$species;

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

class _CopyWithImpl$Subscription$NewDetection$newDetection$detection$species<
        TRes>
    implements
        CopyWith$Subscription$NewDetection$newDetection$detection$species<
            TRes> {
  _CopyWithImpl$Subscription$NewDetection$newDetection$detection$species(
    this._instance,
    this._then,
  );

  final Subscription$NewDetection$newDetection$detection$species _instance;

  final TRes Function(Subscription$NewDetection$newDetection$detection$species)
      _then;

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
      _then(Subscription$NewDetection$newDetection$detection$species(
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

class _CopyWithStubImpl$Subscription$NewDetection$newDetection$detection$species<
        TRes>
    implements
        CopyWith$Subscription$NewDetection$newDetection$detection$species<
            TRes> {
  _CopyWithStubImpl$Subscription$NewDetection$newDetection$detection$species(
      this._res);

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

class Subscription$NewDetection$newDetection$detection$soundscape {
  Subscription$NewDetection$newDetection$detection$soundscape({
    required this.url,
    required this.startTime,
    required this.endTime,
    this.$__typename = 'Soundscape',
  });

  factory Subscription$NewDetection$newDetection$detection$soundscape.fromJson(
      Map<String, dynamic> json) {
    final l$url = json['url'];
    final l$startTime = json['startTime'];
    final l$endTime = json['endTime'];
    final l$$__typename = json['__typename'];
    return Subscription$NewDetection$newDetection$detection$soundscape(
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
    if (!(other
            is Subscription$NewDetection$newDetection$detection$soundscape) ||
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

extension UtilityExtension$Subscription$NewDetection$newDetection$detection$soundscape
    on Subscription$NewDetection$newDetection$detection$soundscape {
  CopyWith$Subscription$NewDetection$newDetection$detection$soundscape<
          Subscription$NewDetection$newDetection$detection$soundscape>
      get copyWith =>
          CopyWith$Subscription$NewDetection$newDetection$detection$soundscape(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$NewDetection$newDetection$detection$soundscape<
    TRes> {
  factory CopyWith$Subscription$NewDetection$newDetection$detection$soundscape(
    Subscription$NewDetection$newDetection$detection$soundscape instance,
    TRes Function(Subscription$NewDetection$newDetection$detection$soundscape)
        then,
  ) = _CopyWithImpl$Subscription$NewDetection$newDetection$detection$soundscape;

  factory CopyWith$Subscription$NewDetection$newDetection$detection$soundscape.stub(
          TRes res) =
      _CopyWithStubImpl$Subscription$NewDetection$newDetection$detection$soundscape;

  TRes call({
    String? url,
    double? startTime,
    double? endTime,
    String? $__typename,
  });
}

class _CopyWithImpl$Subscription$NewDetection$newDetection$detection$soundscape<
        TRes>
    implements
        CopyWith$Subscription$NewDetection$newDetection$detection$soundscape<
            TRes> {
  _CopyWithImpl$Subscription$NewDetection$newDetection$detection$soundscape(
    this._instance,
    this._then,
  );

  final Subscription$NewDetection$newDetection$detection$soundscape _instance;

  final TRes Function(
      Subscription$NewDetection$newDetection$detection$soundscape) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? url = _undefined,
    Object? startTime = _undefined,
    Object? endTime = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$NewDetection$newDetection$detection$soundscape(
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

class _CopyWithStubImpl$Subscription$NewDetection$newDetection$detection$soundscape<
        TRes>
    implements
        CopyWith$Subscription$NewDetection$newDetection$detection$soundscape<
            TRes> {
  _CopyWithStubImpl$Subscription$NewDetection$newDetection$detection$soundscape(
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
