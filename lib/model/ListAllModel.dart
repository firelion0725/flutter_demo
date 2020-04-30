import 'package:json_annotation/json_annotation.dart';

import 'ListModel.dart';
part 'ListAllModel.g.dart';

@JsonSerializable()
class ListAllModel{

  List<ListModel> data;

  ListAllModel(this.data);

  factory ListAllModel.fromJson(Map<String, dynamic> json) =>
      _$ListAllModelFromJson(json);

  Map<String, dynamic> toJson() => _$ListAllModelToJson(this);
}