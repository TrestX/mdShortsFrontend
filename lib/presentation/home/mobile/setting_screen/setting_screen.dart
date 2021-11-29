import 'package:MD_Shorts/application/settings/bloc/settings_bloc.dart';
import 'package:MD_Shorts/application/settings/changepassword/bloc/changepassword_bloc.dart';
import 'package:MD_Shorts/injection.dart';
import 'package:MD_Shorts/presentation/home/mobile/setting_screen/settings_page_screen.dart';
import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:MD_Shorts/presentation/routes/routes.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaWidth = widthGetMethod(context);
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 14.0),
          child: Text(
            "Settings",
          ),
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
    return Scaffold(
      body: MultiBlocProvider(
        providers: [
          BlocProvider<SettingsBloc>(
            create: (context) => getIt<SettingsBloc>(),
          ),
          BlocProvider<ChangepasswordBloc>(
            create: (context) => getIt<ChangepasswordBloc>(),
          ),
        ],
        child: BlocConsumer<SettingsBloc, SettingsState>(
          listener: (context, state) {
            state.settingsFailureOrSuccessOption.fold(
              () {},
              (either) => either.fold(
                (failure) {
                  FlushbarHelper.createError(
                    message: failure.map(
                      cancelledByUser: (_) => 'Cancelled',
                      serverError: (_) => 'An error occured !',
                    ),
                  ).show(context);
                },
                (_) {
                  FlushbarHelper.createSuccess(message: "Updated successfully")
                      .show(context);
                },
              ),
            );
          },
          builder: (context, state) {
            return SettingsScreenPage();
          },
        ),
      ),
    );
  }
}
