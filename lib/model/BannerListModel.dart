import 'package:json_annotation/json_annotation.dart';

import 'BannerModel.dart';
part 'TestModel.g.dart';
@JsonSerializable()
class BannerListModel{
  int status;
  List<BannerModel> data;


  BannerListModel(this.status, this.data);

  factory BannerListModel.fromJson(Map<String, dynamic> json) => _$TestModelFromJson(json);
  Map<String, dynamic> toJson() => _$TestModelToJson(this);
}