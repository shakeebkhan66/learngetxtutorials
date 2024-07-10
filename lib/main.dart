import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learngetx/screen_one.dart';
import 'package:learngetx/utils/languages.dart';
import 'authentication/login_screen.dart';
import 'mvvmstructure/view/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      translations: Languages(),
      locale: const Locale('en', 'US'),
      getPages: [
        GetPage(name: '/', page: () => const SplashScreen()),
        GetPage(name: '/screen', page: () => ScreenOne())
      ],
    );
  }
}
