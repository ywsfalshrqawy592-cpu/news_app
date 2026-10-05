import 'news.dart';

class NewsResponse {
  NewsResponse({
      this.status, 
      this.totalResults,
      this.code,
      this.msg,
      this.articles,});

  NewsResponse.fromJson(dynamic json) {
    status = json['status'];
    code = json['code'];
    msg = json['message'];
    totalResults = json['totalResults'];
    if (json['articles'] != null) {
      articles = [];
      json['articles'].forEach((v) {
        articles?.add(News.fromJson(v));
      });
    }
  }
  String? status;
  int? totalResults;
  List<News>? articles;
  String? code;
  String? msg;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    map['totalResults'] = totalResults;
    if (articles != null) {
      map['articles'] = articles?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}