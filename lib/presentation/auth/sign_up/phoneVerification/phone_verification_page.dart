import 'package:MD_Shorts/application/otp/bloc/otpreq_bloc.dart';
import 'package:MD_Shorts/application/otp/form/otp_bloc.dart';
import 'package:MD_Shorts/application/settings/bloc/settings_bloc.dart';
import 'package:MD_Shorts/application/settings/changepassword/bloc/changepassword_bloc.dart';
import 'package:MD_Shorts/injection.dart';
import 'package:MD_Shorts/presentation/auth/sign_up/phoneVerification/phone_verification.dart';
import 'package:MD_Shorts/presentation/home/mobile/setting_screen/settings_page_screen.dart';
import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:MD_Shorts/presentation/routes/routes.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PhoneVerificationScreen extends StatelessWidget {
  const PhoneVerificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaWidth = widthGetMethod(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        toolbarHeight: 0,
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
          BlocProvider<OtpBloc>(
            create: (context) => getIt<OtpBloc>(),
          ),
          BlocProvider<OtpreqBloc>(
            create: (context) => getIt<OtpreqBloc>(),
          ),
        ],
        child: BlocConsumer<OtpreqBloc, OtpreqState>(
          listener: (context, state) {
            state.otpFailureOrSuccessOption.fold(
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
                (resp) {
                  if (resp.message == "OTP sent successfully") {
                    FlushbarHelper.createSuccess(
                            message: "OTP sent successfully")
                        .show(context);
                  }
                  if (resp.message == "verified") {
                    context.router
                        .navigate(const EmailVerificationScreenRoute());
                  }
                },
              ),
            );
          },
          builder: (context, state) {
            return PhoneVerification();
          },
        ),
      ),
    );
  }
}
