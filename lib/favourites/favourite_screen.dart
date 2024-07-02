import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learngetx/favourites/favourite_controller.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  FavouriteController favouriteController = Get.put(FavouriteController());

  List<String> carsNameList = ["Bentlay", "Aston Martin", "Ford Mastang", "Porche", "Nisstan GTR"];
  List<String> selectedTempFruitList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Favourite Item List",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 10),
        itemCount: favouriteController.carsNameList.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            color: Colors.deepPurpleAccent.withOpacity(.2),
            child: ListTile(
                // onTap: () {
                //   if (selectedTempFruitList.contains(carsNameList[index].toString())) {
                //     selectedTempFruitList.remove(carsNameList[index].toString());
                //     setState(() {});
                //   } else {
                //     selectedTempFruitList.add(carsNameList[index].toString());
                //     setState(() {});
                //   }
                // },
                onTap: () {
                  if (favouriteController.selectedTempFruitList
                      .contains(favouriteController.carsNameList[index].toString())) {
                    favouriteController.selectedTempFruitList
                        .remove(favouriteController.carsNameList[index].toString());
                    // setState(() {});
                  } else {
                    favouriteController.selectedTempFruitList.add(favouriteController.carsNameList[index].toString());
                    // setState(() {});
                  }
                },
                title: Text(
                  carsNameList[index],
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                trailing: Obx(
                  () => Icon(Icons.heart_broken,
                      color: favouriteController.selectedTempFruitList
                              .contains(favouriteController.carsNameList[index].toString())
                          ? Colors.deepPurpleAccent
                          : Colors.white),
                )),
          );
        },
      ),
    );
  }
}
