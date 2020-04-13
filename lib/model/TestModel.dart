import 'package:json_annotation/json_annotation.dart';

import 'TeModel.dart';
part 'TestModel.g.dart';
@JsonSerializable()
class TestModel{
  int status;
  List<TeModel> data;


  TestModel(this.status, this.data);

  factory TestModel.fromJson(Map<String, dynamic> json) => _$TestModelFromJson(json);
  Map<String, dynamic> toJson() => _$TestModelToJson(this);
}