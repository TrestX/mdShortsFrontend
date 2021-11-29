import 'package:MD_Shorts/application/category/categories_bloc.dart';
import 'package:MD_Shorts/application/news/news_search/bloc/news_search_bloc.dart';
import 'package:MD_Shorts/application/news/news_search_form/bloc/newssearchform_bloc.dart';
import 'package:MD_Shorts/application/news/news_watcher/news_watcher_dart_bloc.dart';
import 'package:MD_Shorts/injection.dart';
import 'package:MD_Shorts/presentation/home/mobile/search_screen/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MultiBlocProvider(
        providers: [
          BlocProvider<NewsWatcherDartBloc>(
            create: (context) => getIt<NewsWatcherDartBloc>()
              ..add(
                const NewsWatcherDartEvent.watchAllGlobalStarted(),
              ),
          ),
          BlocProvider<NewsSearchBloc>(
            create: (context) => getIt<NewsSearchBloc>()
              ..add(
                const NewsSearchEvent.watchAllStarted("guidelines"),
              ),
          ),
          BlocProvider<NewssearchformBloc>(
            create: (context) => getIt<NewssearchformBloc>(),
          ),
          BlocProvider(
            create: (context) => getIt<CategoriesBloc>()
              ..add(const CategoriesEvent.watchAllStarted("")),
          ),
        ],
        child: const SearchScreen(),
      ),
    );
  }
}
