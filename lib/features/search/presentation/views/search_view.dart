import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nti8_news/core/components/default_text_field.dart';
import 'package:nti8_news/features/search/presentation/cubit/search/search_cubit.dart';
import 'package:nti8_news/features/search/presentation/cubit/search/search_state.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchCubit(),
      child: Scaffold(
        appBar: AppBar(title: Text('Search')),
        body: BlocBuilder<SearchCubit, SearchState>(
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  DefaultTextField(
                    controller: SearchCubit.get(context).q,
                    hint: 'Search',
                    onChanged: (value)=> SearchCubit.get(context).search(),
                  ),
                  SizedBox(height: 10,),
                  if(state is SearchSuccessState)
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(state.response.articles!.length.toString()),
                        Expanded(
                          child: ListView.separated(
                            itemBuilder: (context, index)=> Text(state.response.articles?[index].title??''),
                              separatorBuilder: (context, index)=> SizedBox(height: 10,),
                              itemCount: state.response.articles?.length ??0),
                        ),
                      ],
                    ),
                  ),

                  if(state is SearchErrorState)
                    Text(state.errorModel.message),

                  if(state is SearchLoadingState)
                    CircularProgressIndicator()
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
