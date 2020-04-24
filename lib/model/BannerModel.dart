
import 'package:json_annotation/json_annotation.dart';
part  'BannerModel.g.dart';
@JsonSerializable()
class BannerModel {
  String image;
  String title;
  String url;

  BannerModel(this.image, this.title, this.url);

  factory BannerModel.fromJson(Map<String, dynamic> json) => _$BannerModelFromJson(json);
  Map<String, dynamic> toJson() => _$BannerModelToJson(this);
}
