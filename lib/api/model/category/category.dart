import 'package:flutter/cupertino.dart';
import 'package:news_app/l10n/app_localizations.dart';
import 'package:news_app/providers/lang_provider.dart';
import 'package:news_app/utils/assets_manager.dart';

class Category {
  String id;
  String title;
  String imagePath;

  Category({required this.title,required this.id,required this.imagePath});

  static List<Category> getCategoriesList(bool isDark,BuildContext context){

    return [
      Category(
          title: 'General',
          id: AppLocalizations.of(context)!.general,
          imagePath: isDark ? AssetsManager.general
              :AssetsManager.generalDark
      ),
      Category(
          title: "Business",
        id: AppLocalizations.of(context)!.business,
          imagePath: isDark ? AssetsManager.business
              :AssetsManager.businessDark,),
      Category(
          title: 'Sports',
          id: AppLocalizations.of(context)!.sports,
          imagePath: isDark ? AssetsManager.sport
              :AssetsManager.sportDark),
      Category(
          title: 'Technology',
          id: AppLocalizations.of(context)!.technology,
          imagePath: isDark ? AssetsManager.technology
              :AssetsManager.technologyDark),
      Category(
          title: "Entertainment",
          id: AppLocalizations.of(context)!.entertainment,
          imagePath: isDark ? AssetsManager.entertainment
              :AssetsManager.entertainmentDark),
      Category(
          title: 'Health',
          id: AppLocalizations.of(context)!.health,
          imagePath: isDark ? AssetsManager.health
              :AssetsManager.healthDark),
      Category(
          title: 'Science',
          id: AppLocalizations.of(context)!.science,
          imagePath: isDark ? AssetsManager.science
              :AssetsManager.scienceDark),
    ];
  }
}