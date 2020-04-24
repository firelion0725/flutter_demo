class TypeModel {
  String id;
  String coverImageUrl;
  String desc;
  String title;
  String type;

  TypeModel(
      String id, String coverImageUrl, String desc, String title, String type);

  factory TypeModel.fromJson(Map<String, dynamic> json) {
    return new TypeModel(
        json['id'] as String,
        json['coverImageUrl'] as String,
        json['desc'] as String,
        json['title'] as String,
        json['type'] as String);
  }
}
