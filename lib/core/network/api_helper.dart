import 'package:dio/dio.dart';

import 'end_points.dart';

String apiKey = '836086f05b344448a16dd41ee51c6320';

class ApiHelper {
  Dio dio = Dio(BaseOptions(
      baseUrl: EndPoints.baseUrl,
    queryParameters: {
        'apiKey': apiKey
    }
  ));


}