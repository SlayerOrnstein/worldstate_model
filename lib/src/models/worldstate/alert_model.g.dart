// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alert_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AlertModel _$AlertModelFromJson(Map json) {
  return $checkedNew('AlertModel', json, () {
    final val = AlertModel(
      id: $checkedConvert(json, 'id', (v) => v as String),
      activation: $checkedConvert(json, 'activation',
          (v) => v == null ? null : DateTime.parse(v as String)),
      expiry: $checkedConvert(json, 'expiry',
          (v) => v == null ? null : DateTime.parse(v as String)),
      active: $checkedConvert(json, 'active', (v) => v as bool),
      mission: $checkedConvert(
          json,
          'mission',
          (v) => v == null
              ? null
              : MissionModel.fromJson((v as Map)?.map(
                  (k, e) => MapEntry(k as String, e),
                ))),
    );
    return val;
  });
}

Map<String, dynamic> _$AlertModelToJson(AlertModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'activation': instance.activation?.toIso8601String(),
      'expiry': instance.expiry?.toIso8601String(),
      'active': instance.active,
      'mission': instance.mission?.toJson(),
    };
