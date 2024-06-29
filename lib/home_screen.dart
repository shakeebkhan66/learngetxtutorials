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
      body: Column(
        children: [
          Card(
            elevation: 3,
            clipBehavior: Clip.antiAlias,
            child: ListTile(
              title: const Text("GetX Dialog Alert"),
              subtitle: const Text("DialogBox alert with GetX"),
              onTap: () {
                Get.defaultDialog(
                  title: "Delete Chat",
                  middleText: "Are you sure you want to delete it?",
                  titlePadding: const EdgeInsets.only(top: 20),
                  contentPadding: const EdgeInsets.all(20),
                  confirmTextColor: Colors.green,
                  buttonColor: Colors.red,
                  backgroundColor: Colors.orange.shade50,
                  confirm: TextButton(
                      onPressed: () {
                        Get.back();
                      },
                      child: const Text("Ok")),
                  cancel: TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text("Cancel")),
                );
              },
            ),
          ),
          Card(
            elevation: 3,
            clipBehavior: Clip.antiAlias,
            child: ListTile(
              title: const Text("GetX Bottom Sheet"),
              subtitle: const Text("Bottom sheet with GetX"),
              onTap: () {
                Get.bottomSheet(Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    children: [
                      ListTile(
                        leading: const Icon(Icons.light_mode),
                        title: const Text("Light Theme"),
                        onTap: () {
                          Get.changeTheme(ThemeData.light());
                          Get.back();
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.dark_mode),
                        title: const Text("Dark Theme"),
                        onTap: () {
                          Get.changeTheme(ThemeData.dark());
                          Get.back();
                        },
                      )
                    ],
                  ),
                ));
              },
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: InkWell(
                onTap: () {
                  // Get.to(ScreenOne(name: "Shakeeb Ahmed Khan",));
                  Get.toNamed("/screen");
                },
                child: const Text(
                  "Go to next screen",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
          )
        ],
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
              snackbarStatus: (snackBarStatus) {},
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
