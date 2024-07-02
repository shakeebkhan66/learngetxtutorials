import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learngetx/pickimage/image_controller.dart';

class PickImageScreen extends StatefulWidget {
  const PickImageScreen({super.key});

  @override
  State<PickImageScreen> createState() => _PickImageScreenState();
}

class _PickImageScreenState extends State<PickImageScreen> {
  ImageController imageController = Get.put(ImageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Pick Image",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Obx(
              () => CircleAvatar(
                radius: Get.height * .10,
                backgroundImage: imageController.imagePath.isNotEmpty
                    ? FileImage(
                        File(
                          imageController.imagePath.toString(),
                        ),
                      )
                    : null,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            TextButton(
              onPressed: () {
                imageController.getImage();
              },
              child: const Text(
                "Pick Image",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
