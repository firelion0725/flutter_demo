// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ListAllModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListAllModel _$ListAllModelFromJson(Map<String, dynamic> json) {
  return ListAllModel(
    (json['data'] as List)
        ?.map((e) =>
            e == null ? null : ListModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ListAllModelToJson(ListAllModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
