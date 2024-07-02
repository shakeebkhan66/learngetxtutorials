import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learngetx/switchbutton/switch_controller.dart';

class SwitchButtonScreen extends StatefulWidget {
  const SwitchButtonScreen({super.key});

  @override
  State<SwitchButtonScreen> createState() => _SwitchButtonScreenState();
}

class _SwitchButtonScreenState extends State<SwitchButtonScreen> {
  SwitchController switchController = Get.put(SwitchController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Switch Button",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Notifications",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                ),
                Obx(
                  () => Switch(
                    value: switchController.notifications.value,
                    onChanged: (value) {
                      switchController.switchChanger(value);
                    },
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
