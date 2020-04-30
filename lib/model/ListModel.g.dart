// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ListModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListModel _$ListModelFromJson(Map<String, dynamic> json) {
  return ListModel(
    json['id'] as String,
    json['author'] as String,
    json['category'] as String,
    json['createdAt'] == null
        ? null
        : DateTime.parse(json['createdAt'] as String),
    json['desc'] as String,
    (json['images'] as List)?.map((e) => e as String)?.toList(),
    json['likeCounts'] as int,
    json['publishedAt'] == null
        ? null
        : DateTime.parse(json['publishedAt'] as String),
    json['stars'] as int,
    json['title'] as String,
    json['type'] as String,
    json['url'] as String,
    json['views'] as int,
  );
}

Map<String, dynamic> _$ListModelToJson(ListModel instance) => <String, dynamic>{
      'id': instance.id,
      'author': instance.author,
      'category': instance.category,
      'createdAt': instance.createdAt?.toIso8601String(),
      'desc': instance.desc,
      'images': instance.images,
      'likeCounts': instance.likeCounts,
      'publishedAt': instance.publishedAt?.toIso8601String(),
      'stars': instance.stars,
      'title': instance.title,
      'type': instance.type,
      'url': instance.url,
      'views': instance.views,
    };
