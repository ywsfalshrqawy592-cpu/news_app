import 'package:flutter/material.dart';
import 'package:news_app/api/model/sources/Sources.dart';

class SourceName extends StatelessWidget {
  Sources source;
   bool isSelected;
   SourceName({super.key,required this.source,required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return  Text(
      source.name??'',
      style: isSelected ? Theme.of(context).textTheme.displayMedium
          : Theme.of(context).textTheme.displaySmall
    );
  }
}
