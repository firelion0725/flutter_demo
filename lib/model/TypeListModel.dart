import 'package:json_annotation/json_annotation.dart';

import 'TypeModel.dart';
part  'TypeListModel.g.dart';
@JsonSerializable()
class TypeListModel {
  List<TypeModel> data;
  int status;

  TypeListModel(this.status, this.data);

  factory TypeListModel.fromJson(Map<String, dynamic> json) => _$TypeListModelFromJson(json);
  Map<String, dynamic> toJson() => _$TypeListModelToJson(this);
}
