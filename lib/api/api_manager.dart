import 'dart:convert';

import 'package:news_app/api/api_constants.dart';
import 'package:news_app/api/api_end_points.dart';
import 'package:http/http.dart' as http;
import 'package:news_app/api/model/news/News_response.dart';
import 'package:news_app/api/model/sources/Source_response.dart';

class ApiManager {
  static Future<SourceResponse>? getSources(String categoryId) async{
    try{
      var url=Uri.https(
          ApiConstants.baseUrl,
          ApiEndPoints.source,
          {
            'apiKey' : ApiConstants.apiKey,
            'category' : categoryId
          }
      );
      var response = await http.get(url);
      return SourceResponse.fromJson(jsonDecode(response.body));
    }catch(e){
      rethrow;
    }
  }

   static Future<NewsResponse>? getNewsBySourceId(String sourceId)async{
     try{
       var url =Uri.https(
         ApiConstants.baseUrl,
         ApiEndPoints.everyThing,
         {
           'apiKey' : ApiConstants.apiKey,
           'sources' : sourceId,
           // 'q' : 'sport'
         }
       );
       var response = await http.get(url);
       return NewsResponse.fromJson(jsonDecode(response.body));
     }catch(e){
       rethrow ;
     }
   }
}
