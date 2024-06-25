import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("GetX Basic"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.snackbar("Shakeeb Sun", "Please subscribe to my youtube channel",
              colorText: Colors.white,
              backgroundColor: Colors.deepPurpleAccent.shade200,
              snackPosition: SnackPosition.BOTTOM,
              icon: const Icon(
                Icons.notifications,
                color: Colors.white,
              ),
              shouldIconPulse: true,
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              margin: const EdgeInsets.only(right: 15, left: 15, bottom: 40),
              borderRadius: 20,
              borderWidth: 4,
              borderColor: Colors.white,
              barBlur: 2.0,
              overlayBlur: 5.0,
              showProgressIndicator: true,
              progressIndicatorBackgroundColor: Colors.green,
              leftBarIndicatorColor: Colors.orange,
              snackStyle: SnackStyle.FLOATING, onTap: (snap) {
            print("Hello Sir, Welcome to my channel");
          },
              boxShadows: [
                const BoxShadow(
                  color: Colors.deepPurpleAccent,
                  blurRadius: 5.0,
                )
              ],
              // Will be used when titleText is null or not exist.
              snackbarStatus: (snackBarStatus){},
              mainButton: TextButton(
                  onPressed: () {
                    print("This is the text of main button");
                  },
                  child: const Text("Main Button")));
        },
        child: const Icon(
          Icons.touch_app,
          color: Colors.white,
        ),
      ),
    );
  }
}
