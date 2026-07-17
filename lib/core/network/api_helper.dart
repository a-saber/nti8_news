import 'package:dio/dio.dart';

import 'end_points.dart';

String? accessToken;
String? refreshToken;

class ApiHelper {
  static Dio dio = Dio(BaseOptions(
      baseUrl: EndPoints.baseUrl
  ));


}