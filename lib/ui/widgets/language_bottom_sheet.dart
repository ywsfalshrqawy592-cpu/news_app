import 'package:flutter/material.dart';
import 'package:news_app/l10n/app_localizations.dart';
import 'package:news_app/providers/lang_provider.dart';
import 'package:news_app/utils/app_colors.dart';
import 'package:news_app/utils/app_fonts.dart';
import 'package:provider/provider.dart';

class LanguageBottomSheet extends StatelessWidget {
  const LanguageBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var appLangProv= Provider.of<LangProvider>(context);
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
              appLangProv.changeLanguage("en");
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(AppLocalizations.of(context)!.english,style: AppFonts.mid24Black(),),
                appLangProv.isEnglish()?
                Icon(Icons.check,color: AppColors.black,size: 40)
                    : Text('')
              ],
            ),
          ),
          InkWell(
            onTap: (){
              appLangProv.changeLanguage("ar");

            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(AppLocalizations.of(context)!.arabic,style: AppFonts.mid24Black(),),
                appLangProv.isArabic()?
                Icon(Icons.check,color: AppColors.black,size: 40)
                    : Text('')
              ],
            ),
          )
        ],
      ),
    );
  }
}
