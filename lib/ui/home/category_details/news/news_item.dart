import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:news_app/api/model/news/news.dart';
import 'package:news_app/ui/widgets/main_loading_widget.dart';
import 'package:news_app/utils/app_fonts.dart';

class NewsItem extends StatelessWidget {
  News news;
  NewsItem({super.key,required this.news});

  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: width*0.04
      ),
      padding: EdgeInsets.symmetric(
        horizontal: width*0.02,
        vertical: height*0.02
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: Theme.of(context).splashColor,
          width: 1
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: height*0.02,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child:  CachedNetworkImage(
              imageUrl: news.urlToImage??'',
              placeholder: (context, url) => MainLoadingWidget(),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
          ),
          Text(news.title??'',style: Theme.of(context).textTheme.displayMedium,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('By : ${news.author}',style: AppFonts.mid12Grey(),),
              Text(
                DateFormat('dd/MM/yyyy')
                    .format(DateTime.parse(news.publishedAt??'')),
                style: AppFonts.mid12Grey(),),
            ],
          )
        ],
      ),
    );
  }
}
