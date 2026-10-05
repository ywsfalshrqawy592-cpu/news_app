import 'package:flutter/material.dart';
import 'package:news_app/utils/app_colors.dart';

class DividerItem extends StatelessWidget {
  const DividerItem({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Divider(
      color: AppColors.white,
      thickness: 2,
      indent: width*0.06,
      endIndent: width*0.06,
    );
  }
}
