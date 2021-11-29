import 'package:MD_Shorts/application/auth/auth_bloc.dart';
import 'package:MD_Shorts/presentation/routes/routes.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../injection.dart';

class MainWidget extends StatelessWidget {
  MainWidget({Key? key}) : super(key: key);
  final _appRouter = AppRouter();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) =>
              getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
        ),
      ],
      child: MaterialApp.router(
        routeInformationParser: _appRouter.defaultRouteParser(),
        routerDelegate: _appRouter.delegate(),
        title: "Md Shorts",
        theme: ThemeData(
          primarySwatch: Colors.blueGrey,
          fontFamily: 'Montserrat',
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.white,
            titleTextStyle: TextStyle(
              color: Color(0xFF015397),
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
            toolbarTextStyle: TextStyle(
              color: Color(0xFF015397),
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        builder: (context, router) => router!,
      ),
    );
  }
}
