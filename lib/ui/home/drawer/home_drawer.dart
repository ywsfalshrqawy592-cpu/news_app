// import 'package:flutter/material.dart';
// import 'package:news_app/l10n/app_localizations.dart';
// import 'package:news_app/ui/widgets/config_item.dart';
// import 'package:news_app/ui/widgets/divider.dart';
// import 'package:news_app/ui/widgets/drawer_item.dart';
// import 'package:news_app/ui/widgets/language_bottom_sheet.dart';
// import 'package:news_app/ui/widgets/theme_bottom_sheet.dart';
// import 'package:news_app/utils/app_colors.dart';
// import 'package:news_app/utils/app_fonts.dart';
// import 'package:news_app/utils/app_routes.dart';
// import 'package:news_app/utils/assets_manager.dart';
//
// class HomeDrawer extends StatefulWidget {
//   const HomeDrawer({super.key});
//
//   @override
//   State<HomeDrawer> createState() => _HomeDrawerState();
// }
//
// class _HomeDrawerState extends State<HomeDrawer> {
//   @override
//   Widget build(BuildContext context) {
//     var height=MediaQuery.of(context).size.height;
//     var width=MediaQuery.of(context).size.width;
//     return Column(
//       spacing: height*0.02,
//       children: [
//         Container(
//           alignment: Alignment.center,
//           height: height*0.20,
//           color:  AppColors.white,
//           child: Text('News App', style: AppFonts.bold24black()),
//         ),
//         InkWell(
//           onTap: (){
//
//           },
//           child: DrawerItem(
//               text: AppLocalizations.of(context)!.go_to_home,
//               icon: Image.asset(AssetsManager.homeIcon)
//           ),
//         ),
//         DividerItem(),
//         DrawerItem(
//             text: AppLocalizations.of(context)!.theme,
//             icon: Image.asset(AssetsManager.themeIcon)
//         ),
//         InkWell(
//           onTap: (){
//             //todo: show Theme bottom sheet
//             _showThemeBottomSheet();
//           },
//             child: ConfigItem(text: AppLocalizations.of(context)!.dark,onPressed: (){},)
//         ),
//         DividerItem(),
//         DrawerItem(
//             text: AppLocalizations.of(context)!.language,
//             icon: Image.asset(AssetsManager.langIcon)
//         ),
//         InkWell(
//           onTap: (){
//             //todo: show language bottom sheet
//             _showLanguageBottomSheet();
//           },
//             child: ConfigItem(text: AppLocalizations.of(context)!.english,onPressed: (){} ,)
//         ),
//       ],
//     );
//   }
//   void _showLanguageBottomSheet() {
//     showModalBottomSheet(
//         context: context,
//         builder: (context)=>LanguageBottomSheet()
//     );
//   }
//   void _showThemeBottomSheet() {
//     showModalBottomSheet(
//         context: context,
//         builder: (context)=>ThemeBottomSheet()
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:news_app/l10n/app_localizations.dart';
import 'package:news_app/ui/widgets/config_item.dart';
import 'package:news_app/ui/widgets/divider.dart';
import 'package:news_app/ui/widgets/drawer_item.dart';
import 'package:news_app/ui/widgets/language_bottom_sheet.dart';
import 'package:news_app/ui/widgets/theme_bottom_sheet.dart';
import 'package:news_app/utils/app_colors.dart';
import 'package:news_app/utils/app_fonts.dart';
import 'package:news_app/utils/assets_manager.dart';

class HomeDrawer extends StatefulWidget {
  final VoidCallback onGoHome;

  const HomeDrawer({
    super.key,
    required this.onGoHome,
  });

  @override
  State<HomeDrawer> createState() => _HomeDrawerState();
}

class _HomeDrawerState extends State<HomeDrawer> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Column(
      spacing: height * 0.02,
      children: [
        Container(
          alignment: Alignment.center,
          height: height * 0.20,
          color: AppColors.white,
          child: Text(
            'News App',
            style: AppFonts.bold24black(),
          ),
        ),

        InkWell(
          onTap: () {
            Navigator.pop(context);
            widget.onGoHome();
          },
          child: DrawerItem(
            text: AppLocalizations.of(context)!.go_to_home,
            icon: Image.asset(AssetsManager.homeIcon),
          ),
        ),

        DividerItem(),

        DrawerItem(
          text: AppLocalizations.of(context)!.theme,
          icon: Image.asset(AssetsManager.themeIcon),
        ),

        InkWell(
          onTap: () {
            _showThemeBottomSheet();
          },
          child: ConfigItem(
            text: AppLocalizations.of(context)!.dark,
            onPressed: () {},
          ),
        ),

        DividerItem(),

        DrawerItem(
          text: AppLocalizations.of(context)!.language,
          icon: Image.asset(AssetsManager.langIcon),
        ),

        InkWell(
          onTap: () {
            _showLanguageBottomSheet();
          },
          child: ConfigItem(
            text: AppLocalizations.of(context)!.english,
            onPressed: () {},
          ),
        ),
      ],
    );
  }

  void _showLanguageBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) => LanguageBottomSheet(),
    );
  }

  void _showThemeBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) => ThemeBottomSheet(),
    );
  }
}
