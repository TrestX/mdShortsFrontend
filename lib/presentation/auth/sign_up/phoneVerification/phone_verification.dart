import 'package:MD_Shorts/application/otp/bloc/otpreq_bloc.dart';
import 'package:MD_Shorts/application/otp/form/otp_bloc.dart';
import 'package:MD_Shorts/presentation/routes/routes.gr.dart';
import 'package:MD_Shorts/shared_preferences/profile_shared_preference.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PhoneVerification extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  PhoneVerification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaWidth = widthGetMethod(context);
    return Scaffold(
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
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: MediaQuery.of(context).size.width > 768
                ? const EdgeInsets.all(200.0)
                : const EdgeInsets.all(40.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Verification",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF015397)),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Enter a code we just sent you on your registered mobile number.",
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 200,
                  child: BlocBuilder<OtpBloc, OtpState>(
                    builder: (context, state) {
                      return Form(
                        child: PinCodeTextField(
                            appContext: context,
                            length: 4,
                            pinTheme: PinTheme(
                              shape: PinCodeFieldShape.box,
                              borderRadius: BorderRadius.circular(5),
                              inactiveColor: Colors.black,
                              fieldHeight: 40,
                              fieldWidth: 40,
                              activeFillColor: Colors.white,
                            ),
                            cursorColor: Colors.black,
                            onChanged: (val) => {
                                  context
                                      .read<OtpBloc>()
                                      .add(OtpEvent.changeOtp(val)),
                                }),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text("Didn't receive any code?"),
                TextButton(
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    onPressed: () async {
                      context
                          .read<OtpreqBloc>()
                          .add(const OtpreqEvent.resendOtp());
                    },
                    child: RichText(
                      text: const TextSpan(children: <TextSpan>[
                        TextSpan(
                          text: 'RESEND',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF015397),
                          ),
                        )
                      ]),
                      textAlign: TextAlign.start,
                    )),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: BlocBuilder<OtpBloc, OtpState>(
                    builder: (context, state) {
                      return ElevatedButton(
                          onPressed: () => {
                                                                                
                                context.read<OtpreqBloc>().add(
                                    OtpreqEvent.verifyOtp(state.otp)),

                              },
                          style: ElevatedButton.styleFrom(
                            primary: const Color(0xFF015397),
                            minimumSize: Size(
                                MediaQuery.of(context).size.width > 500
                                    ? mediaWidth * 0.5
                                    : mediaWidth,
                                60),
                          ),
                          child: const Text("Verify",
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold)));
                    },
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
