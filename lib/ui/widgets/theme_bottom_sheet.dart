import 'package:flutter/material.dart';
import 'package:news_app/l10n/app_localizations.dart';
import 'package:news_app/providers/theme_provider.dart';
import 'package:news_app/utils/app_colors.dart';
import 'package:news_app/utils/app_fonts.dart';
import 'package:provider/provider.dart';

class ThemeBottomSheet extends StatelessWidget {
  const ThemeBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var themeProv = Provider.of<ThemeProvider>(context);
    return Padding(
      padding:  EdgeInsets.symmetric(
          horizontal: width*0.04,
          vertical: height*0.04
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        spacing: height*0.04,
        children: [
          InkWell(
            onTap: (){
              themeProv.changeTheme(ThemeMode.dark);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(AppLocalizations.of(context)!.dark,style: AppFonts.mid24Black(),),
                themeProv.isDark()?
                Icon(Icons.check,color: AppColors.black,size: 40)
                     : Text('')
              ],
            ),
          ),
          InkWell(
            onTap: (){
              themeProv.changeTheme(ThemeMode.light);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(AppLocalizations.of(context)!.light,style: AppFonts.mid24Black(),),
                themeProv.isDark()?
                  Text('')
                     :Icon(Icons.check,color: AppColors.black,size: 40)
              ],
            ),
          )
        ],
      ),
    );
  }
}
