import 'package:flutter/material.dart';
import 'package:get_translate/core/translation/translation_keys.dart';
import 'package:get_translate/pages/home_page.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      translations: TranslationKeys(),
      // locale: Locale('pt', 'BR'),
      locale: Locale('en', 'US'),
      fallbackLocale: Locale('pt', 'BR'),
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple)),
      getPages: [
        GetPage(
          name: '/',
          page: () => HomePage(),
        ),
      ],
    );
  }
}
