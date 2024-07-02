import 'package:get/get.dart';

class SwitchController extends GetxController{
  RxBool notifications = false.obs;

  switchChanger(bool value){
    notifications.value = value;
  }
}