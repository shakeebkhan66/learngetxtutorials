import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImageController extends GetxController{

  RxString imagePath = ''.obs;

  Future getImage(ImageSource source) async{
    final ImagePicker picker = ImagePicker();
    final image = await picker.pickImage(source: source);
    if(image != null){
      imagePath.value = image.path.toString();
    }
  }
}