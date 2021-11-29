import 'package:MD_Shorts/application/news/news_form/news_form_bloc.dart';
import 'package:MD_Shorts/application/news/news_watcher/news_watcher_dart_bloc.dart';
import 'package:MD_Shorts/injection.dart';
import 'package:MD_Shorts/presentation/home/web/widgets/news_web_list.dart';
import 'package:MD_Shorts/shared_preferences/profile_shared_preference.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:MD_Shorts/presentation/routes/routes.gr.dart';
import 'package:flutter/foundation.dart';
import 'package:auto_route/auto_route.dart';

class NewsWeb extends StatelessWidget {
  const NewsWeb({Key? key}) : super(key: key);
  Future<List> getUserData() async {
    var firstName = await ProfileNotifier.instance.getFirstName();
    var lastName = await ProfileNotifier.instance.getLastName();
    var email = await ProfileNotifier.instance.getEmail();
    return Future.value([firstName, lastName, email]); // return your response
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List>(
      future: getUserData(), // function where you call your api
      builder: (BuildContext context, AsyncSnapshot<List> userdata) {
        // AsyncSnapshot<Your object type>
        if (userdata.connectionState == ConnectionState.waiting) {
          return const Center(child: Text('loading...'));
        } else {
          if (userdata.hasError) {
            return Center(child: Text('Error: ${userdata.error}'));
          } else {
            return Scaffold(
              body: MultiBlocProvider(
                providers: [
                  BlocProvider<NewsWatcherDartBloc>(
                    create: (context) => getIt<NewsWatcherDartBloc>()
                      ..add(
                        const NewsWatcherDartEvent.watchAllStarted(),
                      ),
                  ),
                  BlocProvider<NewsFormBloc>(
                    create: (context) => getIt<NewsFormBloc>()
                      ..add(
                        const NewsFormEvent.initialized(),
                      ),
                  ),
                ],
                child: BlocBuilder<NewsWatcherDartBloc, NewsWatcherDartState>(
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
                      loadSuccess: (productValue) => Scaffold(
                        appBar: AppBar(
                          backgroundColor: Colors.transparent,
                          toolbarHeight: 90,
                          title: Center(
                              child: Image.asset(
                            'assets/images/md_shorts.png',
                            width: 150,
                          )),
                          centerTitle: true,
                          leadingWidth: 100,
                          iconTheme: const IconThemeData(
                            color: Color(0xFF015397),
                          ),
                        ),
                        drawer: Theme(
                          data: Theme.of(context).copyWith(
                            canvasColor: Colors
                                .black87, //This will change the drawer background to blue.
                            //other styles
                          ),
                          child: Drawer(
                            // Add a ListView to the drawer. This ensures the user can scroll
                            // through the options in the drawer if there isn't enough vertical
                            // space to fit everything.
                            child: userdata.data != null &&
                                    userdata.data![2] != ""
                                ? ListView(
                                    // Important: Remove any padding from the ListView.
                                    padding: EdgeInsets.zero,
                                    children: [
                                      DrawerHeader(
                                          decoration: const BoxDecoration(
                                            color: Color(0x00000000),
                                          ),
                                          child: Wrap(children: [
                                            const Padding(
                                              padding:
                                                  EdgeInsets.only(top: 10.0),
                                              child: CircleAvatar(
                                                radius: 58,
                                                backgroundColor: Colors.white,
                                                backgroundImage: NetworkImage(
                                                    'https://headshots-inc.com/wp-content/uploads/2020/12/Blog-Images.jpg'),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 10.0),
                                              child: Text(
                                                "Mr. "
                                                '${userdata.data != null ? userdata.data![0] : " "}'
                                                ' ${userdata.data != null ? userdata.data![1] : " "}',
                                                style: const TextStyle(
                                                  fontSize: 22,
                                                  fontWeight: FontWeight.bold,
                                                  color: Color(0xFF015397),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 10.0),
                                              child: Text(
                                                '${userdata.data != null ? userdata.data![2] : " "}',
                                                style: const TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.normal,
                                                  color: Color(0xFF015397),
                                                ),
                                              ),
                                            ),
                                          ])),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 45.0),
                                        child: Wrap(
                                          children: [
                                            ListTile(
                                              title: const Text(
                                                'Profile',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                              onTap: () {
                                                context.router.navigate(
                                                    const ProfilePageRoute());
                                              },
                                              leading: const Icon(
                                                Icons.person_outline,
                                                color: Colors.white,
                                              ),
                                            ),
                                            ListTile(
                                              title: const Text(
                                                'Interests',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                              onTap: () {
                                                context.router.navigate(
                                                    const InterestPageRoute());
                                              },
                                              leading: const Icon(
                                                Icons.favorite_border,
                                                color: Colors.white,
                                              ),
                                            ),
                                            ListTile(
                                              title: const Text(
                                                'Notifications',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                              onTap: () {
                                                context.router.navigate(
                                                    const NotificationScreenRoute());
                                              },
                                              leading: const Icon(
                                                Icons.notifications_none,
                                                color: Colors.white,
                                              ),
                                            ),
                                            ListTile(
                                              title: const Text(
                                                'Settings',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                              onTap: () {
                                                context.router.navigate(
                                                    const SettingScreenRoute());
                                              },
                                              leading: const Icon(
                                                Icons.settings,
                                                color: Colors.white,
                                              ),
                                            ),
                                            ListTile(
                                              title: const Text(
                                                'Privacy Policy',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                              onTap: () {
                                                // Update the state of the app.
                                                // ...
                                              },
                                              leading: const Icon(
                                                Icons.lock,
                                                color: Colors.white,
                                              ),
                                            ),
                                            ListTile(
                                              title: const Text(
                                                'Help',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                              onTap: () {
                                                // Update the state of the app.
                                                // ...
                                              },
                                              leading: const Icon(
                                                Icons.help_outline,
                                                color: Colors.white,
                                              ),
                                            ),
                                            ListTile(
                                              title: const Text(
                                                'Logout',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                              onTap: () {
                                                ProfileNotifier().setProfile(
                                                    "",
                                                    "",
                                                    "",
                                                    "",
                                                    "",
                                                    "",
                                                    "",
                                                    [],
                                                    "");
                                                context.router.popAndPush(
                                                    LoginPageRoute());
                                              },
                                              leading: const Icon(
                                                Icons.logout,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  )
                                : Center(
                                    child: TextButton(
                                        onPressed: () {
                                          context.router
                                              .navigate(LoginPageRoute());
                                        },
                                        child:
                                            const Text("Click Here to login")),
                                  ),
                          ),
                        ),
                        body: NewsWebList(
                          news: productValue.news,
                          widthNew: widthGetMethod(context),
                        ),
                      ),
                      loadFailure: (_) => Container(),
                    );
                  },
                ),
              ),
            );
          }
          ;
        }
        ;
      },
    );
  }

  double widthGetMethod(BuildContext context) {
    return MediaQuery.of(context).size.width > 1012
        ? 1012
        : MediaQuery.of(context).size.width;
  }
}
