import 'package:get/get_navigation/src/root/internacionalization.dart';

class Languages extends Translations{

  @override
  Map<String, Map<String, String>> get keys => {
    'en_Us': {
      'message': 'What is your name?',
      'name': 'Jonathan Wick'
    },
    'ur_PK': {
      'message': 'آپ کا نام کیا ہے؟',
      'name': 'جوناتھن وِک'
    },
    'sr_RS': {
      'message': 'Како се зовеш?',
      'name': 'Јонатхан Вицк'
    }
  };
}