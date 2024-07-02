import 'package:flutter/material.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
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
        itemCount: carsNameList.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            color: Colors.deepPurpleAccent.withOpacity(.2),
            child: ListTile(
              onTap: () {
                if (selectedTempFruitList.contains(carsNameList[index].toString())) {
                  selectedTempFruitList.remove(carsNameList[index].toString());
                  setState(() {});
                } else {
                  selectedTempFruitList.add(carsNameList[index].toString());
                  setState(() {});
                }
              },
              title: Text(
                carsNameList[index],
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              trailing: Icon(Icons.heart_broken,
                  color: selectedTempFruitList.contains(carsNameList[index].toString())
                      ? Colors.deepPurpleAccent
                      : Colors.white),
            ),
          );
        },
      ),
    );
  }
}
