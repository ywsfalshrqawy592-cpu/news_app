 import 'package:flutter/material.dart';
import 'package:news_app/utils/app_fonts.dart';

class DrawerItem extends StatelessWidget {
   Widget icon;
   String text;
    DrawerItem({super.key,required this.text,required this.icon});

   @override
   Widget build(BuildContext context) {
     var height=MediaQuery.of(context).size.height;
     var width=MediaQuery.of(context).size.width;
     return Padding(
       padding:  EdgeInsets.symmetric(horizontal: width*0.04),
       child: Row(
         spacing: width*0.04,
         children: [
           icon,
           Text(text,style: AppFonts.bold20White(),)
         ],
       ),
     );
   }
 }
