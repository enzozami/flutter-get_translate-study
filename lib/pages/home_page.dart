import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('title_app'.tr),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('welcome'.trParams({'name': 'Enzo'})),
            Text(
              'user_list_title_simple'.trPlural(
                'user_list_title_simple_plutal',
                1,
              ),
            ),
            Text(
              'user_list_title'.trPluralParams(
                'user_list_title_plural',
                1,
                {
                  'total': '1',
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Get.updateLocale(Locale('en', 'US'));
                },
                child: Text('Alterar US')),
            ElevatedButton(
                onPressed: () {
                  Get.updateLocale(Locale('pt', 'BR'));
                },
                child: Text('Alterar BR')),
          ],
        ),
      ),
    );
  }
}
