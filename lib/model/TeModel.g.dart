// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'BannerModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BannerModel _$TeModelFromJson(Map<String, dynamic> json) {
  return BannerModel(
    json['image'] as String,
    json['title'] as String,
    json['url'] as String,
  );
}

Map<String, dynamic> _$TeModelToJson(BannerModel instance) => <String, dynamic>{
      'image': instance.image,
      'title': instance.title,
      'url': instance.url,
    };
