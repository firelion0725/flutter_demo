// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'BannerListModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BannerListModel _$BannerListModelFromJson(Map<String, dynamic> json) {
  return BannerListModel(
    json['status'] as int,
    (json['data'] as List)
        ?.map((e) =>
            e == null ? null : BannerModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$BannerListModelToJson(BannerListModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };
