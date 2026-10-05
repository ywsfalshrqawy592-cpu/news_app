import 'package:flutter/material.dart';
import 'package:news_app/ui/home/home_screen.dart';
import 'package:news_app/utils/app_routes.dart';
import 'package:provider/provider.dart';

import 'l10n/app_localizations.dart';
import 'providers/lang_provider.dart';
import 'providers/theme_provider.dart';
import 'utils/theming.dart';

void main(){
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => LangProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => ThemeProvider(),
        ),
      ],
      child: MyApp(),
    ),
  );
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var appLangProv= Provider.of<LangProvider>(context);
    var themeProv = Provider.of<ThemeProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.homeScreen,
      routes: {
        AppRoutes.homeScreen : (context)=>HomeScreen(),
      },
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(appLangProv.locale),
      theme: AppTheme.light,
      themeMode: themeProv.themeMode,
      darkTheme: AppTheme.dark,
    );
  }
}
