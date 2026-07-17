import 'package:nti8_news/core/network/error_model.dart';

import '../../../data/models/search_response.dart';

abstract class SearchState {}
class SearchInitState extends SearchState{}

class SearchLoadingState extends SearchState{}
class SearchSuccessState extends SearchState{
  SearchResponseModel response;
  SearchSuccessState(this.response);
}
class SearchErrorState extends SearchState{
  ErrorModel errorModel;
  SearchErrorState(this.errorModel);
}
