import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learngetx/opacityslider/opacity_controller.dart';

class OpacitySliderScreen extends StatefulWidget {
  const OpacitySliderScreen({super.key});

  @override
  State<OpacitySliderScreen> createState() => _OpacitySliderScreenState();
}

class _OpacitySliderScreenState extends State<OpacitySliderScreen> {
  OpacityController opacityController = Get.put(OpacityController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Opacity Slider",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Obx(() => Center(
            child: Container(
              alignment: Alignment.center,
              height: Get.height * .3,
              width: Get.width * .6,
              color: Colors.green.withOpacity(opacityController.opacity.value),
            ),
          ),),
          const SizedBox(
            height: 20,
          ),
          Obx(
            () => Slider(
              activeColor: Colors.green.withOpacity(opacityController.opacity.value),
              value: opacityController.opacity.value,
              onChanged: (value) {
                opacityController.opacityChanger(value);
              },
            ),
          )
        ],
      ),
    );
  }
}
