import 'package:flutter/material.dart';
import 'package:news_app/api/api_manager.dart';
import 'package:news_app/api/model/sources/Sources.dart';
import 'package:news_app/ui/home/category_details/news/news_item.dart';
import 'package:news_app/ui/widgets/main_error_widget.dart';
import 'package:news_app/ui/widgets/main_loading_widget.dart';

class NewsWidget extends StatefulWidget {
   Sources source;
   NewsWidget({super.key,required this.source});

  @override
  State<NewsWidget> createState() => _NewsWidgetState();
}

class _NewsWidgetState extends State<NewsWidget> {
  @override
  Widget build(BuildContext context) {
    var height= MediaQuery.of(context).size.height;
    return FutureBuilder(
        future: ApiManager.getNewsBySourceId(widget.source.id?? ''),
        builder: (context,snapshot){
          if(snapshot.connectionState==ConnectionState.waiting){
            return MainLoadingWidget();
          }
          else if(snapshot.hasError){
            //todo: try again
            return MainErrorWidget(
              onPressed: (){
                setState(() {
                  ApiManager.getNewsBySourceId(widget.source.id ??'');
                });
              },
            );
          }
          else if(snapshot.data?.status !='ok'){
            //todo: try again
            return MainErrorWidget(
              onPressed: (){
                setState(() {
                  ApiManager.getNewsBySourceId(widget.source.id ??'');
                });
              },
            );
          }
          else{
            var newsList = snapshot.data!.articles ?? [];
            return newsList.isEmpty?
                Center(
                  child: Text('no news found',style: Theme.of(context).textTheme.displayMedium,),
                )
                      : ListView.separated(
                itemBuilder: (context,index){
                  return NewsItem(news: newsList[index],);
                },
                separatorBuilder: (context,index){
                  return SizedBox(height: height*0.02,);
                },
                itemCount: newsList.length
            );
          }
        }
    );
  }
}
