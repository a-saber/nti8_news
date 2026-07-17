import 'package:dartz/dartz.dart';
import 'package:nti8_news/core/network/api_helper.dart';
import 'package:nti8_news/core/network/end_points.dart';
import 'package:nti8_news/core/network/error_model.dart';

import '../models/search_response.dart';

class SearchRepo {
  ApiHelper apiHelper = ApiHelper();

  Future<Either<ErrorModel, SearchResponseModel>> search({
    required String q,
    String? category,
    String? country,
  }) async {
    try {
      var result = await apiHelper.dio.get(
        EndPoints.topHeadlines,
        queryParameters: {'q': q, 'category': category, 'country': country},
      );
      var json = result.data as Map<String, dynamic>;
      SearchResponseModel responseModel = SearchResponseModel.fromJson(json);

      return right(responseModel);
    } catch (e) {
      return left(ErrorModel.detect(e));
    }
  }
}
