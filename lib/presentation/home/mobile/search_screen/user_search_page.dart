import 'package:MD_Shorts/application/news/news_search/bloc/news_search_bloc.dart';
import 'package:MD_Shorts/application/news/news_search_form/bloc/newssearchform_bloc.dart';
import 'package:MD_Shorts/application/news/news_watcher/news_watcher_dart_bloc.dart';
import 'package:MD_Shorts/domain/news/news.dart';
import 'package:MD_Shorts/presentation/core/custom_bottom_navigation_bar.dart';
import 'package:MD_Shorts/presentation/home/mobile/search_screen/home_page_sidebar.dart';
import 'package:MD_Shorts/presentation/home/mobile/search_screen/search_list.dart';
import 'package:MD_Shorts/presentation/routes/routes.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class UserSearchScreen extends StatelessWidget {
  final String search;
  const UserSearchScreen({Key? key, required this.search}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Scaffold(
          body: BlocBuilder<NewssearchformBloc, NewssearchformState>(
            builder: (context, state) {
              context
                  .read<NewssearchformBloc>()
                  .add(NewssearchformEvent.changeSearch(search));
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
                          child: TextFormField(
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30))),
                              isDense: true, // Added this
                              contentPadding: EdgeInsets.all(8),
                              prefixIcon: Icon(Icons.search),
                              hintText: "Search for news",
                            ),
                            initialValue: search,
                            onChanged: (value) {
                              context
                                  .read<NewssearchformBloc>()
                                  .add(NewssearchformEvent.changeSearch(value));
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
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.70,
                      child: BlocBuilder<NewsSearchBloc, NewsSearchState>(
                        builder: (context, state) {
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
                            loadSuccess: (newsData) => newsData.news.isNotEmpty
                                ? SearchList(news: newsData.news)
                                : ListView(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.2,
                                            left: 10,
                                            right: 10),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.network(
                                                "https://img.icons8.com/external-kiranshastry-lineal-kiranshastry/100/000000/external-file-advertising-kiranshastry-lineal-kiranshastry-1.png"),
                                            const Text(
                                              "No results found",
                                              style: TextStyle(
                                                fontSize: 15,
                                              ),
                                            ),
                                            Text(
                                              "Try adjusting your search to find what you're looking for",
                                              textAlign: TextAlign.justify,
                                              style: TextStyle(
                                                color: Colors.grey[400],
                                                fontSize: 10,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                            loadFailure: (_) => Container(),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
