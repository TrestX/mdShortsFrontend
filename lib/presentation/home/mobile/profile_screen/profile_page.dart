import 'package:MD_Shorts/application/profile/bloc/profile_bloc.dart';
import 'package:MD_Shorts/injection.dart';
import 'package:MD_Shorts/presentation/home/mobile/profile_screen/profile_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:MD_Shorts/presentation/routes/routes.gr.dart';
import 'package:auto_route/auto_route.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaWidth = widthGetMethod(context);
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 14.0),
          child: Text("Edit Profile"),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            size: 30,
            color: Color(0xFF015397),
          ),
          onPressed: () {
            if (kIsWeb) {
              context.router.navigate(const HomePageRoute());
            } else {
              context.router.navigate(CustomBottomNavigationBarRoute());
            }
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.edit,
              size: 30,
              color: Color(0xFF015397),
            ),
            onPressed: () {
              context.router.popAndPush(ProfileFormPageRoute());
            },
          )
        ],
      ),
      body: Center(
        child: SizedBox(
          width: mediaWidth,
          child: MediaQuery.of(context).size.width > 768
              ? Card(
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.07),
                  child: Content(mediaWidth: mediaWidth),
                )
              : Content(mediaWidth: mediaWidth),
        ),
      ),
    );
  }

  double widthGetMethod(BuildContext context) {
    return MediaQuery.of(context).size.width > 768
        ? 768
        : MediaQuery.of(context).size.width;
  }
}

class Content extends StatelessWidget {
  final double mediaWidth;
  const Content({Key? key, required this.mediaWidth}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaWidth = widthGetMethod(context);
    return Scaffold(
      body: BlocProvider(
        create: (context) =>
            getIt<ProfileBloc>()..add(const ProfileEvent.watchAllStarted()),
        child: BlocBuilder<ProfileBloc, ProfileState>(
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
              loadSuccess: (userProfile) => ProfileScreen(
                  mediaWidth: mediaWidth, profile: userProfile.profile),
              loadFailure: (_) => Container(),
            );
          },
        ),
      ),
    );
  }

  double widthGetMethod(BuildContext context) {
    return MediaQuery.of(context).size.width > 768
        ? 768
        : MediaQuery.of(context).size.width;
  }
}
