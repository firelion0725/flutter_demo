import 'package:json_annotation/json_annotation.dart';

part 'TypeModel.g.dart';

@JsonSerializable()
class TypeModel {
  String id;
  String coverImageUrl;
  String desc;
  String title;
  String type;

  TypeModel(this.id, this.coverImageUrl, this.desc, this.title, this.type);

  factory TypeModel.fromJson(Map<String, dynamic> json) =>
      _$TypeModelFromJson(json);

  Map<String, dynamic> toJson() => _$TypeModelToJson(this);
}
