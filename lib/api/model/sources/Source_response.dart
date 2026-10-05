import 'Sources.dart';

class SourceResponse {
  SourceResponse({
      this.status, 
      this.sources,
      this.code,
      this.msg
  });

  SourceResponse.fromJson(dynamic json) {
    status = json['status'];
    code = json['code'];
    msg = json['message'];
    if (json['sources'] != null) {
      sources = [];
      json['sources'].forEach((v) {
        sources?.add(Sources.fromJson(v));
      });
    }
  }
  String? status;
  List<Sources>? sources;
  String? code;
  String? msg;
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    if (sources != null) {
      map['sources'] = sources?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}