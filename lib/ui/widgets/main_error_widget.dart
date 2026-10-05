import 'package:flutter/material.dart';
import 'package:news_app/utils/app_colors.dart';

class MainErrorWidget extends StatelessWidget {
   VoidCallback onPressed;
   MainErrorWidget({super.key,required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Center(
      child:  Column(
        children: [
          Text('Some thing went error'),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.grey
            ),
              onPressed: onPressed,
              child: Text('Try Again')
          )
        ],
      ),
    );
  }
}
