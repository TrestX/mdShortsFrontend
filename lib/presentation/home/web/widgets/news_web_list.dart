import 'package:MD_Shorts/application/news/news_form/news_form_bloc.dart';
import 'package:MD_Shorts/domain/news/news.dart';
import 'package:MD_Shorts/presentation/home/web/widgets/news_web_display.dart';
import 'package:MD_Shorts/presentation/routes/routes.gr.dart';
import 'package:MD_Shorts/shared_preferences/profile_shared_preference.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewsWebList extends StatelessWidget {
  final List<News> news;
  final double widthNew;
  NewsWebList({Key? key, required this.news, required this.widthNew})
      : super(key: key);
  Widget newsCard(int index) {
    return NewsWebDisplay(
      imgUrl: news[index].urlToImage,
      primaryText: news[index].title,
      secondaryText: news[index].description,
      sourceName: news[index].sourceName,
      author: news[index].author,
      publishedAt: news[index].publishedAt,
      url: news[index].url,
    );
  }

  final ScrollController _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    _scrollController.addListener(() async {
      var email = await ProfileNotifier().getEmail();
      if (email == "") {
        logInDialog(context);
      }
    });
    return BlocBuilder<NewsFormBloc, NewsFormState>(
      builder: (context, state) {
        return Center(
          child: SizedBox(
            width: widthNew,
            child: MediaQuery.of(context).size.width > 1012
                ? Container(
                    margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.01,
                      bottom: MediaQuery.of(context).size.height * 0.01,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListView.builder(
                        itemCount: news.length,
                        scrollDirection: Axis.vertical,
                        controller: _scrollController,
                        itemBuilder: (_, index) {
                          return newsCard(index);
                        },
                      ),
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListView.builder(
                      itemCount: news.length,
                      controller: _scrollController,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (_, index) {
                        return newsCard(index);
                      },
                    ),
                  ),
          ),
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
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            backgroundColor: const Color(0xFF015397),
            title: const Text(
              'Login or register to more articles',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 27,
              ),
            ),
            content: Builder(builder: (context) {
              var width = MediaQuery.of(context).size.width;
              return SizedBox(
                width: width > 1000
                    ? 0.1
                    : width > 700
                        ? width * 0.2
                        : 0.5,
                child: SingleChildScrollView(
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
                      const SizedBox(
                        height: 10,
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
                                        ? MediaQuery.of(context).size.width *
                                            0.3
                                        : MediaQuery.of(context).size.width *
                                            0.7,
                                    40),
                              ),
                              child: const Text("Sign up",
                                  style: TextStyle(
                                      color: Color(0xFF015397),
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold))),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: TextButton(
                          onPressed: () =>
                              context.router.popAndPush(LoginPageRoute()),
                          child: const Text(
                            "Already a member? Sign in",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }));
      },
    );
  }
}
