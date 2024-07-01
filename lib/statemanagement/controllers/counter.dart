import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

class CounterController extends GetxController {
  RxInt count = 1.obs;
  RxInt table = 0.obs;
  RxInt iValue = 1.obs;


  void incrementCounter() {
    count.value++;
  }

  void decrementCounter(){
    count.value--;
  }

  tableMaker(){
    for(int i = 1; i<=10; i++){
      table.value = (count.value * i);
      print("sssssssssss $table");
    }
  }
}
