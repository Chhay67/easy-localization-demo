import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:localization_demo/core/app_localizations.dart';

import '../core/locale_keys.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.welcome_name.tr(args: ['Guys'])),
      ),
      body: Column(
        children: [
          Center(child: Text(tr(LocaleKeys.hello),style:const  TextStyle(fontSize: 20),)),
          const SizedBox(height: 20,),
          ElevatedButton(onPressed: (){
            context.setLocale(AppLocalizations.khLocale);
          }, child: const Text('Translate to khmer')),
          ElevatedButton(onPressed: (){
            context.setLocale(AppLocalizations.engLocale);
          }, child: const Text('Translate to English')),
          ElevatedButton(onPressed: (){
            context.setLocale(AppLocalizations.cnLocale);
          }, child: const Text('Translate to China')),

        ],
      ),
    );
  }
}
