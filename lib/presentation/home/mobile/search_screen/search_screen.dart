import 'package:MD_Shorts/application/news/news_search/bloc/news_search_bloc.dart';
import 'package:MD_Shorts/application/news/news_search_form/bloc/newssearchform_bloc.dart';
import 'package:MD_Shorts/application/news/news_watcher/news_watcher_dart_bloc.dart';
import 'package:MD_Shorts/presentation/home/mobile/search_screen/search_list.dart';
import 'package:MD_Shorts/presentation/home/mobile/search_screen/serach_chips.dart';
import 'package:MD_Shorts/presentation/routes/routes.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);
  static const List<String> chips = <String>[
    "Doctor",
    "Doctor",
    "Doctor",
    "Doctor",
    "Doctor",
    "Doctor",
    "Doctor",
    "Doctor",
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Scaffold(
          body: Dismissible(
            resizeDuration: null,
            key: const ValueKey(0),
            onDismissed: (dismissDirection) {
              if (dismissDirection == DismissDirection.endToStart) {
                context.router.popAndPush(const HomePageRoute());
              }
            },
            child: BlocBuilder<NewssearchformBloc, NewssearchformState>(
              builder: (context, state) {
                return Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: ListView(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.964,
                            height: 38,
                            child: TextFormField(
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30))),
                                isDense: true, // Added this
                                contentPadding: EdgeInsets.all(2),
                                prefixIcon: Icon(Icons.search),
                                hintText: "Search for news",
                              ),
                              onChanged: (value) {
                                context.read<NewssearchformBloc>().add(
                                    NewssearchformEvent.changeSearch(value));
                              },
                              onEditingComplete: () {
                                context.router.popAndPush(
                                    CustomBottomNavigationBarRoute(
                                        index: 1, search: state.search));
                              },
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
const SearchScreenChips(),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.7,
                        child: ListView(
                          padding: EdgeInsets.zero,
                          children: const [
                            CommonHomeLists(
                              title: "GLOBAL",
                            ),
                            CommonHomeLists(
                              title: "GUIDELINES",
                            ),
                            CommonHomeLists(
                              title: "GLOBAL",
                            ),
                            CommonHomeLists(
                              title: "GUIDELINES",
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

class CommonHomeLists extends StatelessWidget {
  final String title;
  final blockName;
  final blockState;
  const CommonHomeLists({
    Key? key,
    required this.title,
    this.blockName,
    this.blockState,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.45,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Color(0xFF015397),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                width: 2,
              ),
              const Expanded(
                child: Divider(
                  color: Colors.black,
                  height: 36,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.35,
              child: title == "GLOBAL"
                  ? BlocBuilder<NewsWatcherDartBloc, NewsWatcherDartState>(
                      builder: commonBuilder,
                    )
                  : BlocBuilder<NewsSearchBloc, NewsSearchState>(
                      builder: commonBuilder,
                    ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }

  Widget commonBuilder(context, state) {
    return state.map(
      initial: (_) => Column(
        mainAxisAlignment: MainAxisAlignment.end,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const SizedBox(height: 8),
          const LinearProgressIndicator(),
        ],
      ),
      loadInProgress: (_) => Column(
        mainAxisAlignment: MainAxisAlignment.end,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const SizedBox(height: 8),
          const LinearProgressIndicator(),
        ],
      ),
      loadSuccess: (newsData) => SearchList(news: newsData.news),
      loadFailure: (_) => Container(),
    );
  }
}


