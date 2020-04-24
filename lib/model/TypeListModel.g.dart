// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'TypeListModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TypeListModel _$TypeListModelFromJson(Map<String, dynamic> json) {
  return TypeListModel(
    json['status'] as int,
    (json['data'] as List)
        ?.map((e) =>
            e == null ? null : TypeModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$TypeListModelToJson(TypeListModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'status': instance.status,
    };
