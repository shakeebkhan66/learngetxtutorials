import 'package:flutter/material.dart';
import 'package:learngetx/mvvmstructure/data/app_exceptions.dart';
import 'package:learngetx/mvvmstructure/utils/utils.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Utils.toastMessage("Saad Hashmani");
          Utils.toastMessageCenter("Comsats University Multan");
          // throw InternetException(" Google Hashmi");
        },
      ),
    );
  }
}
