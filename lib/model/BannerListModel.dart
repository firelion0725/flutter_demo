import 'package:json_annotation/json_annotation.dart';

import 'BannerModel.dart';
part  'BannerListModel.g.dart';
@JsonSerializable()
class BannerListModel{
  int status;
  List<BannerModel> data;


  BannerListModel(this.status, this.data);

  factory BannerListModel.fromJson(Map<String, dynamic> json) => _$BannerListModelFromJson(json);
  Map<String, dynamic> toJson() => _$BannerListModelToJson(this);
}