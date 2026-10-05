import 'package:flutter/material.dart';
import 'package:news_app/api/model/category/category.dart';
import 'package:news_app/l10n/app_localizations.dart';
import 'package:news_app/providers/theme_provider.dart';
import 'package:news_app/ui/home/category_fragment/category_fragment.dart';
import 'package:news_app/ui/widgets/category_item.dart';
import 'package:provider/provider.dart';

typedef OnCategoryItemClick = void Function(Category);
class CategoryFragment extends StatelessWidget {
   CategoryFragment({super.key,required this.onCategoryItemClick});
   List<Category> categories = [];
   OnCategoryItemClick onCategoryItemClick;
  @override
  Widget build(BuildContext context) {
    var themeProv = Provider.of<ThemeProvider>(context);
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    categories = Category.getCategoriesList(themeProv.isDark(),context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width*0.04,vertical: height*0.02),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: height*0.02,
        children: [
          Text(
            AppLocalizations.of(context)!.good_morning_here,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          Expanded(
              child: ListView.separated(
                  itemBuilder: (context,index){
                    return InkWell(
                      onTap: (){
                        onCategoryItemClick(categories[index]);
                      },
                      child: CategoryItem(
                        category: categories[index],
                        index: index,
                      ),
                    );
                  },
                  separatorBuilder: (context,index){
                    return SizedBox(height: height*0.02,);
                  },
                  itemCount: categories.length
              )
          )
        ],
      ),
    );
  }
}
