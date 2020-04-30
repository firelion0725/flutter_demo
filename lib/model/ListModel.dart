import 'package:json_annotation/json_annotation.dart';

part 'ListModel.g.dart';

@JsonSerializable()
class ListModel {
  String id;
  String author;
  String category;
  DateTime createdAt;
  String desc;
  List<String> images;
  int likeCounts;
  DateTime publishedAt;
  int stars;
  String title;
  String type;
  String url;
  int views;

  ListModel(
      this.id,
      this.author,
      this.category,
      this.createdAt,
      this.desc,
      this.images,
      this.likeCounts,
      this.publishedAt,
      this.stars,
      this.title,
      this.type,
      this.url,
      this.views);

  factory ListModel.fromJson(Map<String, dynamic> json) =>
      _$ListModelFromJson(json);

  Map<String, dynamic> toJson() => _$ListModelToJson(this);
}
