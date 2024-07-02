import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learngetx/home_screen.dart';
import 'package:learngetx/screen_one.dart';
import 'package:learngetx/statemanagement/counter_screen.dart';
import 'package:learngetx/switchbutton/switch_button_screen.dart';
import 'package:learngetx/utils/languages.dart';

import 'favourites/favourite_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const FavouriteScreen(),
      translations: Languages(),
      locale: const Locale('en', 'US'),
      getPages: [
        GetPage(name: '/', page: () => const FavouriteScreen()),
        GetPage(name: '/screen', page: () => ScreenOne())
      ],
    );
  }
}
