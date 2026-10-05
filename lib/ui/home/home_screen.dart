import 'package:flutter/material.dart';
import 'package:news_app/api/model/category/category.dart';
import 'package:news_app/l10n/app_localizations.dart';
import 'package:news_app/ui/home/category_details/category_details.dart';
import 'package:news_app/ui/home/category_fragment/category_fragment.dart';
import 'package:news_app/ui/home/drawer/home_drawer.dart';
import 'package:news_app/utils/app_colors.dart';

class HomeScreen extends StatefulWidget {
   const HomeScreen({super.key,});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          iconTheme: IconThemeData(
            color: Theme.of(context).splashColor
          ),
        title: Text(
          AppLocalizations.of(context)!.home,
          style: Theme.of(context).textTheme.displaySmall!.copyWith(fontSize: 20),),
        centerTitle: true,
        actions: [
          Icon(Icons.search_rounded,color: Theme.of(context).splashColor,),
        ]
      ),
      drawer: Drawer(

        backgroundColor: AppColors.black,
        child: HomeDrawer(
        onGoHome: _goHome,
      ),
      ),
      body: _selectedCategory == null?
          CategoryFragment(onCategoryItemClick: _onCategoryItemClick,)
                : CategoryDetails(category: _selectedCategory!,)
    );
  }
  Category? _selectedCategory;
  void _onCategoryItemClick(Category newCategory){
    _selectedCategory=newCategory;
    setState(() {

    });
  }

  void _goHome() {
    setState(() {
      _selectedCategory = null;
    });
  }
}
