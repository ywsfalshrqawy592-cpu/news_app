import 'package:flutter/material.dart';
import 'package:news_app/api/model/sources/Sources.dart';
import 'package:news_app/ui/home/category_details/news/news_widget.dart';
import 'package:news_app/ui/home/category_details/sources/source_name.dart';

class SourceTab extends StatefulWidget {
   List<Sources> sourcesList;
   SourceTab({super.key,required this.sourcesList});

  @override
  State<SourceTab> createState() => _SourceTab();
}

class _SourceTab extends State<SourceTab> {
  int selectedIndex=0;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return DefaultTabController(
        length: widget.sourcesList.length ,
        child: Column(
          spacing: height*0.02,
          children: [
            TabBar(tabs:
                widget.sourcesList.map((sources){
                  return SourceName(
                      source: sources,
                      isSelected: selectedIndex == widget.sourcesList.indexOf(sources)
                  );
                }).toList(),
              isScrollable: true ,
              onTap: (index){
              selectedIndex = index;
              setState(() {

              });
              },
              dividerColor: Colors.transparent,
               indicatorColor: Theme.of(context).splashColor,
              tabAlignment: TabAlignment.start,
            ),
            Expanded(
                child: NewsWidget(source: widget.sourcesList[selectedIndex])
            ),
          ],
        )
    );
  }
}
