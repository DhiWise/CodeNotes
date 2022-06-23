class CodeSheetModel {
  int? id;
  String? createdAt;
  String? descriptions;
  String? short;

  CodeSheetModel({this.id, this.createdAt, this.descriptions, this.short});

  CodeSheetModel.fromJson(Map<String, dynamic> json) {
    id = json['id'] as int;
    createdAt = json['created_at'] as String;
    descriptions = json['descriptions'] as String;
    short = json['short'] as String;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.id != null) {
      data['id'] = this.id;
    }
    if (this.createdAt != null) {
      data['created_at'] = this.createdAt;
    }
    if (this.descriptions != null) {
      data['descriptions'] = this.descriptions;
    }
    if (this.short != null) {
      data['short'] = this.short;
    }
    return data;
  }
}
