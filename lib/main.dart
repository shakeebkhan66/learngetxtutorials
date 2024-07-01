import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learngetx/home_screen.dart';
import 'package:learngetx/screen_one.dart';

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
      home: const ResponsiveConceptScreen(),
      getPages: [
        GetPage(name: '/', page: () => const ResponsiveConceptScreen()),
        GetPage(name: '/screen', page: () => ScreenOne())
      ],
    );
  }
}
