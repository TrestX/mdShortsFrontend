// ignore_for_file: unnecessary_const

import 'package:MD_Shorts/application/auth/sign_in/sign_in_bloc.dart';
import 'package:MD_Shorts/presentation/auth/login/widget/login_content.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../injection.dart';

class LoginPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController controller = TextEditingController();

  LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaWidth = widthGetMethod(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        toolbarHeight: 0,
      ),
      body: BlocProvider(
        create: (context) => getIt<SignInBloc>(),
        child: LoginContent(mediaWidth: mediaWidth, formKey: _formKey),
      ),
    );
  }

  double widthGetMethod(BuildContext context) {
    return MediaQuery.of(context).size.width > 768
        ? 768
        : MediaQuery.of(context).size.width;
  }
}
