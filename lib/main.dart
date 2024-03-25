import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:localization_demo/core/app_localizations.dart';
import 'package:localization_demo/page/home_page.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(
      supportedLocales: const [AppLocalizations.khLocale,AppLocalizations.cnLocale,AppLocalizations.engLocale],
      path: AppLocalizations.translationFilePath,
      saveLocale: true,
      fallbackLocale: AppLocalizations.engLocale,
      startLocale: AppLocalizations.engLocale,
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: context.locale,
      supportedLocales: context.supportedLocales,
      localizationsDelegates: context.localizationDelegates,
      title: 'Localization Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  const HomePage(),
    );
  }
}

