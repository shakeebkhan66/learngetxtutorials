import "package:flutter/material.dart";
import "package:get/get.dart";

class ResponsiveConceptScreen extends StatelessWidget {
  const ResponsiveConceptScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * .3,
              width: MediaQuery.of(context).size.width * .8,
              color: Colors.deepPurpleAccent,
            ),
            const SizedBox(height: 20,),
            Container(
              height: Get.height * .1,
              width: Get.width * .8,
              color: Colors.green,
            ),
            const SizedBox(height: 20,),
            Container(
              height: Get.height * .4,
              width: Get.width * .8,
              color: Colors.orange,
            ),
          ],
        ),
      ),
    );
  }
}
