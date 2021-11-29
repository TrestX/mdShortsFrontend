import 'package:MD_Shorts/shared_preferences/profile_shared_preference.dart';
import 'package:flutter/material.dart';
import 'package:MD_Shorts/presentation/routes/routes.gr.dart';
import 'package:flutter/foundation.dart';
import 'package:auto_route/auto_route.dart';

class HomePageSideBar extends StatelessWidget {
  const HomePageSideBar({
    Key? key,
  }) : super(key: key);
  Future<List> getUserData() async {
    var firstName = await ProfileNotifier.instance.getFirstName();
    var lastName = await ProfileNotifier.instance.getLastName();
    var email = await ProfileNotifier.instance.getEmail();
    var photo = await ProfileNotifier.instance.getAvatarUrl();
    return Future.value(
        [firstName, lastName, email, photo]); // return your response
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
            return ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(25.0),
                bottomLeft: Radius.circular(25.0),
              ),
              child: Drawer(
                elevation: 16.0,
                child: userdata.data != null && userdata.data![2] != ""
                    ? Column(
                        children: <Widget>[
                          UserAccountsDrawerHeader(
                            decoration: const BoxDecoration(
                              color: Color(0x00000000),
                            ),
                            accountName: Text(
                              "Mr. "
                              '${userdata.data != null ? userdata.data![0] : "John"}'
                              ' ${userdata.data != null ? userdata.data![1] : "Doe"}',
                              style: const TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF015397),
                              ),
                            ),
                            accountEmail: Text(
                              '${userdata.data != null ? userdata.data![2] : " "}',
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                                color: Color(0xFF015397),
                              ),
                            ),
                            currentAccountPicture: CircleAvatar(
                              backgroundColor: Colors.white,
                              backgroundImage: NetworkImage(
                                  '${userdata.data != null && userdata.data![3] != null && userdata.data![3] != "" ? userdata.data![3] : "https://headshots-inc.com/wp-content/uploads/2020/12/Blog-Images.jpg"}'),
                            ),
                            otherAccountsPictures: <Widget>[],
                          ),
                          ListTile(
                            title: const Text("Profile"),
                            onTap: () {
                              context.router.navigate(const ProfilePageRoute());
                            },
                            leading: const Icon(Icons.person_outline),
                          ),
                          const Divider(
                            height: 0.1,
                          ),
                          ListTile(
                            title: const Text("Interests"),
                            onTap: () {
                              context.router
                                  .navigate(const InterestPageRoute());
                            },
                            leading: const Icon(Icons.favorite_border),
                          ),
                          ListTile(
                            title: const Text("Notification"),
                            onTap: () {
                              context.router
                                  .navigate(const NotificationScreenRoute());
                            },
                            leading: const Icon(Icons.notifications_none),
                          ),
                          ListTile(
                            title: const Text("Settings"),
                            onTap: () {
                              context.router
                                  .navigate(const SettingScreenRoute());
                            },
                            leading: const Icon(Icons.settings),
                          ),
                          const ListTile(
                            title: Text("Privacy Policy"),
                            leading: Icon(Icons.lock),
                          ),
                          const ListTile(
                            title: Text("Help"),
                            leading: Icon(Icons.help_outline),
                          ),
                          ListTile(
                            title: const Text("Logout"),
                            onTap: () {
                              ProfileNotifier().setProfile(
                                  "", "", "", "", "", "", "", [], "");
                              context.router.navigate(LoginPageRoute());
                            },
                            leading: const Icon(Icons.logout),
                          )
                        ],
                      )
                    : Center(
                        child: TextButton(
                            onPressed: () {
                              context.router.navigate(LoginPageRoute());
                            },
                            child: const Text("Click Here to login")),
                      ),
              ),
            );
          }
        }
      },
    );
  }
}
