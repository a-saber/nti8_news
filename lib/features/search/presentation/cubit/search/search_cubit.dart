import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nti8_news/features/search/data/repo/search_repo.dart';
import 'package:nti8_news/features/search/presentation/cubit/search/search_state.dart';

class SearchCubit extends Cubit<SearchState>{
  SearchCubit():super(SearchInitState());
  static SearchCubit get(context)=> BlocProvider.of(context);

  SearchRepo repo = SearchRepo();
  var q = TextEditingController();
  search()async{
    emit(SearchLoadingState());
    var result = await repo.search(q: q.text);
    result.fold(
        (errorModel)=> emit(SearchErrorState(errorModel)),
        (response)=> emit(SearchSuccessState(response)),
    );
  }

}