// import 'package:flutter/material.dart';
// import 'package:news_app/api/model/category/category.dart';
// import 'package:news_app/l10n/app_localizations.dart';
// import 'package:news_app/utils/app_colors.dart';
// import 'package:news_app/utils/assets_manager.dart';
//
// class CategoryItem extends StatelessWidget {
//   Category category;
//   int index;
//    CategoryItem({super.key,required this.category,required this.index });
//
//   @override
//   Widget build(BuildContext context) {
//     var height = MediaQuery.of(context).size.height;
//     var width = MediaQuery.of(context).size.width;
//     var isEven = (index % 2 == 0);
//     return Stack(
//       alignment: isEven ? AlignmentDirectional.bottomEnd:
//           AlignmentDirectional.bottomStart ,
//       children: [
//         ClipRRect(
//           borderRadius: BorderRadius.circular(24),
//             child: Image.asset(category.imagePath)
//         ),
//         Column(
//           spacing: height*0.05,
//           children: [
//             Text(
//                 category.id,style: Theme.of(context).textTheme.displayLarge,
//             ),
//             Container(
//               margin: EdgeInsets.symmetric(
//                   horizontal: width*0.04,
//                   vertical: height*0.02
//               ),
//               padding: EdgeInsetsDirectional.only(
//                 start: isEven ? width*0.04 : 0,
//                 end: !isEven ? width*0.04 : 0,
//               ),
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(35),
//                 color: AppColors.grey,
//               ),
//
//               child: _rowBuilder(isEven, context,width),
//             )
//           ],
//         )
//       ],
//     );
//   }
//   Row _rowBuilder(bool isEven,context,width){
//     if(isEven){
//       return Row(
//         spacing: width*0.02,
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Text(AppLocalizations.of(context)!.viewAll,style: Theme.of(context).textTheme.bodyLarge,),
//           CircleAvatar(
//             backgroundColor: Theme.of(context).primaryColor,
//             child: Icon(Icons.arrow_forward_ios_outlined,
//               size: 25,
//               color: Theme.of(context).splashColor,
//             ),)
//         ],
//       );
//     }
//     else{
//       return Row(
//         spacing: width*0.02,
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           CircleAvatar(
//             backgroundColor: Theme.of(context).primaryColor,
//             child: Icon(Icons.arrow_back_ios_outlined,
//               size: 25,
//               color: Theme.of(context).splashColor,
//             ),),
//           Text(AppLocalizations.of(context)!.viewAll,style: Theme.of(context).textTheme.bodyLarge,),
//         ],
//       );
//     }
//   }
// }
// import 'package:flutter/material.dart';
// import 'package:news_app/api/model/category/category.dart';
// import 'package:news_app/l10n/app_localizations.dart';
// import 'package:news_app/utils/app_colors.dart';
//
// class CategoryItem extends StatelessWidget {
//   Category category;
//   int index;
//
//   CategoryItem({
//     super.key,
//     required this.category,
//     required this.index,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     var height = MediaQuery.of(context).size.height;
//     var width = MediaQuery.of(context).size.width;
//
//     var isEven = (index % 2 == 0);
//
//     return Stack(
//       alignment: isEven
//           ? Alignment.bottomRight
//           : Alignment.bottomLeft,
//       children: [
//         ClipRRect(
//           borderRadius: BorderRadius.circular(24),
//           child: Image.asset(
//             category.imagePath,
//           ),
//         ),
//
//         Column(
//           spacing: height * 0.05,
//           children: [
//             Text(
//               category.id,
//               style: Theme.of(context).textTheme.displayLarge,
//             ),
//
//             Container(
//               margin: EdgeInsets.symmetric(
//                 horizontal: width * 0.04,
//                 vertical: height * 0.02,
//               ),
//
//               padding: EdgeInsets.only(
//                 left: isEven ? width * 0.04 : 0,
//                 right: !isEven ? width * 0.04 : 0,
//               ),
//
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(35),
//                 color: AppColors.grey,
//               ),
//
//               child: _rowBuilder(
//                 isEven,
//                 context,
//                 width,
//               ),
//             ),
//           ],
//         ),
//       ],
//     );
//   }
//
//   Row _rowBuilder(
//       bool isEven,
//       BuildContext context,
//       double width,
//       ) {
//     if (isEven) {
//       return Row(
//         spacing: width * 0.02,
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Text(
//             AppLocalizations.of(context)!.viewAll,
//             style: Theme.of(context).textTheme.bodyLarge,
//           ),
//
//           CircleAvatar(
//             backgroundColor: Theme.of(context).primaryColor,
//             child: Icon(
//               Icons.arrow_forward_ios_outlined,
//               size: 25,
//               color: Theme.of(context).splashColor,
//             ),
//           ),
//         ],
//       );
//     } else {
//       return Row(
//         spacing: width * 0.02,
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           CircleAvatar(
//             backgroundColor: Theme.of(context).primaryColor,
//             child: Icon(
//               Icons.arrow_back_ios_outlined,
//               size: 25,
//               color: Theme.of(context).splashColor,
//             ),
//           ),
//
//           Text(
//             AppLocalizations.of(context)!.viewAll,
//             style: Theme.of(context).textTheme.bodyLarge,
//           ),
//         ],
//       );
//     }
//   }
// }
// import 'package:flutter/material.dart';
// import 'package:news_app/api/model/category/category.dart';
// import 'package:news_app/l10n/app_localizations.dart';
// import 'package:news_app/utils/app_colors.dart';
//
// class CategoryItem extends StatelessWidget {
//   Category category;
//   int index;
//
//   CategoryItem({super.key, required this.category, required this.index});
//
//   @override
//   Widget build(BuildContext context) {
//     var height = MediaQuery.of(context).size.height;
//     var width = MediaQuery.of(context).size.width;
//
//     var isEven = index % 2 == 0;
//
//     return Stack(
//       alignment: isEven ? Alignment.bottomRight : Alignment.bottomLeft,
//       children: [
//         ClipRRect(
//           borderRadius: BorderRadius.circular(24),
//           child: Image.asset(category.imagePath),
//         ),
//
//         Column(
//           spacing: height * 0.05,
//           children: [
//             Text(category.id, style: Theme.of(context).textTheme.displayLarge),
//
//             Container(
//               margin: EdgeInsets.symmetric(
//                 horizontal: width * 0.04,
//                 vertical: height * 0.02,
//               ),
//               padding: EdgeInsets.only(
//                 left: isEven ? width * 0.04 : 0,
//                 right: !isEven ? width * 0.04 : 0,
//               ),
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(35),
//                 color: AppColors.grey,
//               ),
//               child: _rowBuilder(isEven, context, width),
//             ),
//           ],
//         ),
//       ],
//     );
//   }
//
//   //   Row _rowBuilder(
//   //       bool isEven,
//   //       BuildContext context,
//   //       double width,
//   //       ) {
//   //     if (isEven) {
//   //       return Row(
//   //         mainAxisSize: MainAxisSize.min,
//   //         children: [
//   //           Text(
//   //             AppLocalizations.of(context)!.viewAll,
//   //             style: Theme.of(context).textTheme.bodyLarge,
//   //           ),
//   //
//   //           SizedBox(width: width * 0.02),
//   //
//   //           CircleAvatar(
//   //             backgroundColor: Theme.of(context).primaryColor,
//   //             child: Icon(
//   //               Icons.arrow_forward_ios_outlined,
//   //               size: 25,
//   //               color: Theme.of(context).splashColor,
//   //             ),
//   //           ),
//   //         ],
//   //       );
//   //     } else {
//   //       return Row(
//   //         mainAxisSize: MainAxisSize.min,
//   //         children: [
//   //           CircleAvatar(
//   //             backgroundColor: Theme.of(context).primaryColor,
//   //             child: Icon(
//   //               Icons.arrow_back_ios_outlined,
//   //               size: 25,
//   //               color: Theme.of(context).splashColor,
//   //             ),
//   //           ),
//   //
//   //           SizedBox(width: width * 0.02),
//   //
//   //           Text(
//   //             AppLocalizations.of(context)!.viewAll,
//   //             style: Theme.of(context).textTheme.bodyLarge,
//   //           ),
//   //         ],
//   //       );
//   //     }
//   //   }
//   // }
//   //   Row _rowBuilder(bool isEven, BuildContext context, double width) {
//   //     return Row(
//   //       mainAxisSize: MainAxisSize.min,
//   //       textDirection: isEven ? TextDirection.ltr : TextDirection.rtl,
//   //       children: [
//   //         Text(
//   //           AppLocalizations.of(context)!.viewAll,
//   //           style: Theme.of(context).textTheme.bodyLarge,
//   //         ),
//   //
//   //         SizedBox(width: width * 0.02),
//   //
//   //         CircleAvatar(
//   //           backgroundColor: Theme.of(context).primaryColor,
//   //           child: Icon(
//   //             isEven
//   //                 ? Icons.arrow_forward_ios_outlined
//   //                 : Icons.arrow_back_ios_outlined,
//   //             size: 25,
//   //             color: Theme.of(context).splashColor,
//   //           ),
//   //         ),
//   //       ],
//   //     );
//   //   }
//   // }
//   Row _rowBuilder(bool isEven, BuildContext context, double width) {
//     if (isEven) {
//       return Row(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Text(
//             AppLocalizations.of(context)!.viewAll,
//             style: Theme.of(context).textTheme.bodyLarge,
//           ),
//
//           SizedBox(width: width * 0.02),
//
//           CircleAvatar(
//             backgroundColor: Theme.of(context).primaryColor,
//             child: Icon(
//               Icons.arrow_forward_ios_outlined,
//               size: 25,
//               color: Theme.of(context).splashColor,
//             ),
//           ),
//         ],
//       );
//     } else {
//       return Row(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           CircleAvatar(
//             backgroundColor: Theme.of(context).primaryColor,
//             child: Icon(
//               Icons.arrow_back_ios_outlined,
//               size: 25,
//               color: Theme.of(context).splashColor,
//             ),
//           ),
//
//           SizedBox(width: width * 0.02),
//
//           Text(
//             AppLocalizations.of(context)!.viewAll,
//             style: Theme.of(context).textTheme.bodyLarge,
//           ),
//         ],
//       );
//     }
//   }
// }
import 'package:flutter/material.dart';
import 'package:news_app/api/model/category/category.dart';
import 'package:news_app/l10n/app_localizations.dart';
import 'package:news_app/utils/app_colors.dart';

class CategoryItem extends StatelessWidget {
  Category category;
  int index;

  CategoryItem({
    super.key,
    required this.category,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    final isEven = index % 2 == 0;

    return Stack(
      alignment: isEven
          ? Alignment.bottomRight
          : Alignment.bottomLeft,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(24),
          child: Image.asset(
            category.imagePath,
          ),
        ),

        Column(
          spacing: height * 0.05,
          children: [
            Text(
              category.id,
              style: Theme.of(context).textTheme.displayLarge,
            ),

            Container(
              margin: EdgeInsets.symmetric(
                horizontal: width * 0.04,
                vertical: height * 0.02,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: width * 0.02,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35),
                color: AppColors.grey,
              ),
              child: _rowBuilder(
                isEven,
                context,
                width,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _rowBuilder(
      bool isEven,
      BuildContext context,
      double width,
      ) {
    final isArabic =
        Localizations.localeOf(context).languageCode == 'ar';

    final text = Text(
      AppLocalizations.of(context)!.viewAll,
      style: Theme.of(context).textTheme.bodyLarge,
    );

    final arrow = CircleAvatar(
      backgroundColor: Theme.of(context).primaryColor,
      child: Icon(
        isEven
            ? Icons.arrow_forward_ios_outlined
            : Icons.arrow_back_ios_outlined,
        size: 25,
        color: Theme.of(context).splashColor,
      ),
    );

    final gap = SizedBox(
      width: width * 0.02,
    );

    // الكارت الأول
    if (isEven) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        textDirection: TextDirection.ltr,
        children: isArabic
            ? [
          arrow,
          gap,
          text,
        ]
            : [
          text,
          gap,
          arrow,
        ],
      );
    }

    // الكارت الثاني
    return Row(
      mainAxisSize: MainAxisSize.min,
      textDirection: TextDirection.ltr,
      children: isArabic
          ? [
        text,
        gap,
        arrow,
      ]
          : [
        arrow,
        gap,
        text,
      ],
    );
  }
}