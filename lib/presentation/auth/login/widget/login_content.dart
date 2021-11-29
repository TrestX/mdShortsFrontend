import 'package:MD_Shorts/application/auth/sign_in/sign_in_bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:MD_Shorts/presentation/routes/routes.gr.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:another_flushbar/flushbar_helper.dart';

class LoginContent extends StatelessWidget {
  const LoginContent({
    Key? key,
    required this.mediaWidth,
    required GlobalKey<FormState> formKey,
  })  : _formKey = formKey,
        super(key: key);

  final double mediaWidth;
  final GlobalKey<FormState> _formKey;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInBloc, SignInState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
            (failure) {
              FlushbarHelper.createError(
                message: failure.map(
                  cancelledByUser: (_) => 'Cancelled',
                  serverError: (_) => 'Server error',
                  emailAlreadyRegistered: (_) => 'Invalid credentials',
                  emailNotRegistered: (_) => 'Invalid credentials',
                  emailNotVerified: (_) => 'Email not verified',
                  invalidCredentails: (_) => 'Invalid credentials',
                ),
              ).show(context);
            },
            (_) {
              context.router.navigate(const HomePageRoute());
            },
          ),
        );
      },
      builder: (context, state) {
        return SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: SizedBox(
                    width: mediaWidth,
                    child: MediaQuery.of(context).size.width > 768
                        ? Card(
                            margin: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.13,
                                bottom:
                                    MediaQuery.of(context).size.height * 0.13),
                            child: LoginCardContent(
                                formKey: _formKey, mediaWidth: mediaWidth),
                          )
                        : LoginCardContent(
                            formKey: _formKey, mediaWidth: mediaWidth),
                  ),
                ),
              ]),
        );
      },
    );
  }
}

class LoginCardContent extends StatelessWidget {
  const LoginCardContent({
    Key? key,
    required GlobalKey<FormState> formKey,
    required this.mediaWidth,
  })  : _formKey = formKey,
        super(key: key);

  final GlobalKey<FormState> _formKey;
  final double mediaWidth;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: mediaWidth > 750
          ? const EdgeInsets.all(110)
          : const EdgeInsets.all(70),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: mediaWidth > 750
                  ? MediaQuery.of(context).size.height * 0.05
                  : MediaQuery.of(context).size.height * 0.20,
              child: Center(
                  child: Image.asset(
                'assets/images/md_shorts.png',
                width: 200,
              )),
            ),
            const Text(
              "Sign in",
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF015397)),
            ),
            TextButton(
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                ),
                onPressed: () {
                  context.router.navigate(const CategoryPageRoute());
                },
                child: RichText(
                  text: const TextSpan(children: <TextSpan>[
                    TextSpan(
                      text: 'Not registered? ',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                    ),
                    TextSpan(
                      text: 'Sign up',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF015397),
                      ),
                    )
                  ]),
                  textAlign: TextAlign.start,
                )),
            SizedBox(
              height: mediaWidth > 750
                  ? MediaQuery.of(context).size.height * 0.29
                  : MediaQuery.of(context).size.height * 0.48,
              child: BlocBuilder<SignInBloc, SignInState>(
                builder: (context, state) {
                  return Form(
                    autovalidateMode: state.showErrorMessages != null
                        ? AutovalidateMode.always
                        : AutovalidateMode.disabled,
                    key: _formKey,
                    child: ListView(
                      padding: EdgeInsets.zero,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(bottom: 10),
                              child: Text(
                                "Email*",
                                textAlign: TextAlign.start,
                              ),
                            ),
                            SizedBox(
                              width: mediaWidth,
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  isDense: true, // Added this
                                  contentPadding: EdgeInsets.all(12),
                                ),
                                onChanged: (value) => context
                                    .read<SignInBloc>()
                                    .add(SignInEvent.changeEmail(value)),
                                validator: (value) => context
                                    .read<SignInBloc>()
                                    .state
                                    .email
                                    .value
                                    .fold(
                                      (f) => f.maybeMap(
                                        invalidUserName: (_) => 'Invalid email',
                                        shortLength: (_) =>
                                            'Email should be greater than 3 characters',
                                        orElse: () => null,
                                      ),
                                      (_) => null,
                                    ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(bottom: 10),
                              child: Text(
                                "Password*",
                                textAlign: TextAlign.start,
                              ),
                            ),
                            SizedBox(
                              width: mediaWidth,
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  isDense: true, // Added this
                                  contentPadding: EdgeInsets.all(12),
                                ),
                                obscureText: true,
                                onChanged: (value) => context
                                    .read<SignInBloc>()
                                    .add(SignInEvent.changePassword(value)),
                                validator: (_) => context
                                    .read<SignInBloc>()
                                    .state
                                    .password
                                    .value
                                    .fold(
                                      (f) => f.maybeMap(
                                        shortPassword: (_) =>
                                            'Password should be greater than 8 characters',
                                        orElse: () => null,
                                      ),
                                      (_) => null,
                                    ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 24,
                              child: Checkbox(
                                onChanged: (value) => context
                                    .read<SignInBloc>()
                                    .add(SignInEvent.rememberMe(value)),
                                value:
                                    context.read<SignInBloc>().state.rememberMe,
                              ),
                            ),
                            RichText(
                              text: const TextSpan(children: <TextSpan>[
                                TextSpan(
                                  text: 'Remember me',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF015397),
                                  ),
                                )
                              ]),
                              textAlign: TextAlign.start,
                            ),
                          ],
                        ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: ElevatedButton(
                                onPressed: () => context.read<SignInBloc>().add(
                                    const SignInEvent
                                        .loginWithUserNamePassword()),
                                style: ElevatedButton.styleFrom(
                                  primary: const Color(0xFF015397),
                                  minimumSize: Size(
                                      MediaQuery.of(context).size.width > 500
                                          ? mediaWidth * 0.5
                                          : mediaWidth,
                                      40),
                                ),
                                child: const Text("Sign in",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold))),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                                onPressed: () {
                                  context.router
                                      .navigate(const HomePageRoute());
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.grey[300],
                                  shape: const StadiumBorder(),
                                ),
                                child: const Text(
                                  'Skip',
                                  style: TextStyle(color: Colors.black),
                                )),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
