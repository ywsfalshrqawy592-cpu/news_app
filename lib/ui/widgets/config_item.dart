import 'package:flutter/material.dart';
import 'package:news_app/utils/app_colors.dart';
import 'package:news_app/utils/app_fonts.dart';

class ConfigItem extends StatelessWidget {
  String text;
  VoidCallback onPressed;
   ConfigItem({super.key,required this.text,required this.onPressed});

  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.all(width*0.01),
      margin: EdgeInsets.symmetric(horizontal: width*0.02),
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.white,
        ),
        borderRadius: BorderRadius.circular(16)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text,style: AppFonts.bold20White(),),
          IconButton(
            icon: Icon(Icons.arrow_drop_down_outlined),
            onPressed: onPressed,
            color: AppColors.white,
            iconSize: 25,
          )
        ],
      ),
    );
  }
}
