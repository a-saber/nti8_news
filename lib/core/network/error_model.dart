import 'package:dio/dio.dart';

class ErrorModel {

  late String message;
  ErrorModel(this.message);

  ErrorModel.detect(Object e){
    if (e is DioException) {
      var errorResponse = e.response?.data as Map<String, dynamic>;
      message = errorResponse['message'];
      print(message);
    } else {
      message = 'Sorry, there is an issue\nTry again later';
      print(e.toString());
    }
  }

}