import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learngetx/home_screen.dart';
import 'package:learngetx/screen_one.dart';
import 'package:learngetx/utils/languages.dart';
import 'change_language_screen.dart';
import 'learnresponsiveness_concept_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ChangeLanguage(),
      translations: Languages(),
      locale: const Locale('en', 'US'),
      getPages: [
        GetPage(name: '/', page: () => const ChangeLanguage()),
        GetPage(name: '/screen', page: () => ScreenOne())
      ],
    );
  }
}
