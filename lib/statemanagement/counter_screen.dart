import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learngetx/statemanagement/controllers/counter.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  CounterController counterController = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    print("rebuild");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter with State Management"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 40,),
            Obx(
              () => Text(
                "Table of ${counterController.count.value}",
                style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 22),
              ),
            ),
            const SizedBox(height: 20,),
            for (int i = 1; i <= 10; i++)
              Obx(
                () => Center(
                  child: Text(
                    "${counterController.table.value = (counterController.count.value * i)}",
                    style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            const SizedBox(height: 40,),
            Obx(
              () => Center(
                child: Text(
                  "Counter ${counterController.count}",
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                    onPressed: () {
                      counterController.incrementCounter();
                      counterController.tableMaker();
                    },
                    child: const Text(
                      "Increase",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                TextButton(
                    onPressed: () {
                      counterController.decrementCounter();
                      counterController.tableMaker();
                    },
                    child: const Text(
                      "Decrease",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
