// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'TestModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TestModel _$TestModelFromJson(Map<String, dynamic> json) {
  return TestModel(
    json['status'] as int,
    (json['data'] as List)
        ?.map((e) =>
            e == null ? null : TeModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$TestModelToJson(TestModel instance) => <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };
