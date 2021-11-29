import 'package:MD_Shorts/application/news/news_form/news_form_bloc.dart';
import 'package:MD_Shorts/application/news/news_search/bloc/news_search_bloc.dart';
import 'package:MD_Shorts/application/news/news_search_form/bloc/newssearchform_bloc.dart';
import 'package:MD_Shorts/application/news/news_watcher/news_watcher_dart_bloc.dart';
import 'package:MD_Shorts/domain/news/news.dart';
import 'package:MD_Shorts/injection.dart';
import 'package:MD_Shorts/presentation/home/mobile/search_screen/search_screen.dart';
import 'package:MD_Shorts/presentation/home/mobile/search_screen/user_search_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserSearchPage extends StatelessWidget {
  final String search;
  const UserSearchPage({Key? key, required this.search}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MultiBlocProvider(
        providers: [
          BlocProvider<NewsSearchBloc>(
            create: (context) => getIt<NewsSearchBloc>()
              ..add(
                NewsSearchEvent.watchAllStarted(search),
              ),
          ),
          BlocProvider<NewssearchformBloc>(
            create: (context) => getIt<NewssearchformBloc>(),
          ),
        ],
        child: UserSearchScreen(search: search),
      ),
    );
  }
}
