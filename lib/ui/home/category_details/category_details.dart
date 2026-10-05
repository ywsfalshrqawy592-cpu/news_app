import 'package:flutter/material.dart';
import 'package:news_app/api/api_manager.dart';
import 'package:news_app/api/model/category/category.dart';
import 'package:news_app/api/model/sources/Source_response.dart';
import 'package:news_app/ui/home/category_details/sources/source_tab.dart';
import 'package:news_app/ui/widgets/main_error_widget.dart';
import 'package:news_app/ui/widgets/main_loading_widget.dart';

class CategoryDetails extends StatefulWidget {
  Category category;
   CategoryDetails({super.key,required this.category});

  @override
  State<CategoryDetails> createState() => _CategoryDetails();
}

class _CategoryDetails extends State<CategoryDetails> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<SourceResponse>(
        future: ApiManager.getSources(widget.category.title),
        builder: (context,snapshot){
          if(snapshot.connectionState==ConnectionState.waiting){
            //todo: progress indicator
            return MainLoadingWidget();
          }
          else if(snapshot.hasError){
            // todo: handle the error
            return MainErrorWidget(onPressed: (){
              //todo: try again
              ApiManager.getSources(widget.category.title);
              setState(() {

              });
            });
          }
          else if(snapshot.data!.status!='ok'){
            //todo: server error
            return MainErrorWidget(onPressed: (){
              //todo: try again
              ApiManager.getSources(widget.category.title);
              setState(() {

              });
            });
          }
          else{
            var sourceList = snapshot.data?.sources??[];
            return SourceTab(sourcesList: sourceList);
          }
        }
    );
  }
}
