import 'package:MD_Shorts/application/news/news_form/news_form_bloc.dart';
import 'package:MD_Shorts/application/updatenews/bloc/updatenews_bloc.dart';
import 'package:MD_Shorts/domain/news/news.dart';
import 'package:MD_Shorts/presentation/home/mobile/widget/news_display.dart';
import 'package:MD_Shorts/presentation/routes/routes.gr.dart';
import 'package:MD_Shorts/shared_preferences/profile_shared_preference.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_analytics/firebase_analytics.dart';

class NewsList extends StatelessWidget {
  final List<News> news;
  const NewsList({Key? key, required this.news}) : super(key: key);
  Widget newsCard(int index) {
    return NewsCard(
      newsID: news[index].id.getOrCrash(),
      imgUrl: news[index].urlToImage,
      primaryText: news[index].title,
      secondaryText: news[index].description,
      sourceName: news[index].sourceName,
      author: news[index].author,
      publishedAt: news[index].publishedAt,
      url: news[index].url,
    );
  }

  @override
  Widget build(BuildContext context) {
    context
        .read<NewsFormBloc>()
        .add(NewsFormEvent.changeEntryTime(DateTime.now()));
    return BlocBuilder<NewsFormBloc, NewsFormState>(
      builder: (context, state) {
        return Stack(
          fit: StackFit.expand,
          children: [
            PageView.builder(
              allowImplicitScrolling: false,
              onPageChanged: (page) async {
                final timeSpent =
                    DateTime.now().difference(state.entryTime).inSeconds;

                context.read<UpdatenewsBloc>().add(UpdatenewsEvent.updateNews(
                    news[page - 1].id.getOrCrash(),
                    "Read",
                    news[page - 1].url,
                    state.urlClicked,
                    timeSpent,
                    DateTime.now().toString()));
                context
                    .read<NewsFormBloc>()
                    .add(NewsFormEvent.changeLastIndex(page));
                context
                    .read<NewsFormBloc>()
                    .add(NewsFormEvent.changeEntryTime(DateTime.now()));
                context
                    .read<NewsFormBloc>()
                    .add(const NewsFormEvent.changeUrlClicked(false));
                await FirebaseAnalytics()
                    .logEvent(name: 'view_news', parameters: {
                  'news_id': news[page - 1].id.getOrCrash().toString(),
                  'url_clicked': state.urlClicked.toString(),
                  "timeSpent": timeSpent.toString(),
                  "readat": DateTime.now().toString(),
                  "author": news[page - 1].author.toString(),
                  "sourceName": news[page - 1].sourceName.toString(),
                });
                var email = await ProfileNotifier().getEmail();
                if (email == "" && page > 2) {
                  logInDialog(context);
                }
              },
              itemCount: news.length,
              scrollDirection: Axis.vertical,
              itemBuilder: (_, index) {
                return newsCard(index);
              },
            ),
          ],
        );
      },
    );
  }

  void logInDialog(BuildContext context) {
    showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: const Color(0xFF015397),
          title: const Text(
            'Login or register to read this article',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 27,
            ),
          ),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                const Text(
                  'If you do not have a Log in, please register to be part of a big community, experience premium content and stay informed about exclusive professional events.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                    fontSize: 15,
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: ElevatedButton(
                        onPressed: () => context.router
                            .popAndPush(const CategoryPageRoute()),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey[300],
                          minimumSize: Size(
                              MediaQuery.of(context).size.width > 500
                                  ? MediaQuery.of(context).size.width * 0.5
                                  : MediaQuery.of(context).size.width * 0.7,
                              40),
                        ),
                        child: const Text("Sign up",
                            style: TextStyle(
                                color: Color(0xFF015397),
                                fontSize: 16,
                                fontWeight: FontWeight.bold))),
                  ),
                ),
                Center(
                  child: TextButton(
                    onPressed: () =>
                        context.router.popAndPush(LoginPageRoute()),
                    child: const Text(
                      "Already a member? Sign in",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
