import 'package:get/get.dart';

class FavouriteController extends GetxController {
  RxList<String> carsNameList = ["Bentlay", "Aston Martin", "Ford Mastang", "Porche", "Nisstan GTR"].obs;
  RxList selectedTempFruitList = [].obs;

  addToFav(String value) {
    selectedTempFruitList.add(value);
  }

  removeToFav(String value) {
    selectedTempFruitList.remove(value);
  }
}
