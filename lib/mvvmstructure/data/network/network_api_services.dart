import 'dart:io';
import 'package:learngetx/mvvmstructure/data/app_exceptions.dart';
import 'package:learngetx/mvvmstructure/data/network/base_api_services.dart';
import 'package:http/http.dart' as http;

class NetworkApiServices extends BaseApiServices{

  @override
  Future<dynamic> getApi(String url) async{
    try{
     final response = await http.get(Uri.parse(url)).timeout(const Duration(seconds: 10));
    }on SocketException {
      throw InternetException("");
    }on RequestTimeout{
      throw RequestTimeout("");
    }
  }

}