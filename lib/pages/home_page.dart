import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_translate/core/translation/translation_keys.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(TranslateKey.titleApp.tr()),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(TranslateKey.welcome.trParams({'name': 'Enzo'})),
            Text(
              TranslateKey.userListTitleSimple.trPlural(1),
            ),
            Text(
              TranslateKey.userListTitleSimple.trPlural(2),
            ),
            Text(
              TranslateKey.userListTitle.trPluralParams(
                {'total': '5'},
                2,
              ),
            ),
            Text(
              TranslateKey.userListTitle.trPluralParams(
                {'total': '1'},
                1,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Get.updateLocale(Locale('en', 'US'));
              },
              child: Text('Alterar US'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.updateLocale(Locale('pt', 'BR'));
              },
              child: Text('Alterar BR'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.updateLocale(Locale('es', 'ES'));
              },
              child: Text('Alterar ES'),
            ),
          ],
        ),
      ),
    );
  }
}
