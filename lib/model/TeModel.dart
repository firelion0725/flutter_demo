
import 'package:json_annotation/json_annotation.dart';

part 'TeModel.g.dart';
@JsonSerializable()
class TeModel {
  String image;
  String title;
  String url;

  TeModel(this.image, this.title, this.url);

  factory TeModel.fromJson(Map<String, dynamic> json) => _$TeModelFromJson(json);
  Map<String, dynamic> toJson() => _$TeModelToJson(this);
}
