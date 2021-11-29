import 'package:MD_Shorts/application/auth/sign_in/sign_in_bloc.dart';
import 'package:MD_Shorts/application/auth/sign_up/sign_up_bloc.dart';
import 'package:MD_Shorts/presentation/routes/routes.gr.dart';
import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:auto_route/auto_route.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';
import 'package:firebase_analytics/firebase_analytics.dart';



class SignUpContent extends StatelessWidget {
  SignUpContent({
    Key? key,
    required this.mediaWidth,
    required GlobalKey<FormState> formKey,
    required this.number,
    required this.categories,
    required this.controller,
  })  : _formKey = formKey,
        super(key: key);

  final double mediaWidth;
  final GlobalKey<FormState> _formKey;
  final PhoneNumber number;
  final TextEditingController controller;
  final List<String> categories;
  FirebaseAnalytics analytics = FirebaseAnalytics();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpBloc, SignUpState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () => {},
          (either) => either.fold(
              (failure) => FlushbarHelper.createError(
                      message: failure.map(
                    cancelledByUser: (_) => 'Cancelled',
                    serverError: (_) => 'Server error',
                    emailAlreadyRegistered: (_) => 'Email already exist',
                    emailNotRegistered: (_) => 'Invalid credentials',
                    emailNotVerified: (_) => 'Email not verified',
                    invalidCredentails: (_) => 'Invalid credentials',
                  )),
              (_) => context.router
                  .navigate(const PhoneVerificationScreenRoute())),
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
                              top: MediaQuery.of(context).size.height * 0.13),
                          child: SignUpCardContent(
                              formKey: _formKey,
                              mediaWidth: mediaWidth,
                              number: number,
                              categories: categories,
                              controller: controller),
                        )
                      : SignUpCardContent(
                          formKey: _formKey,
                          mediaWidth: mediaWidth,
                          number: number,
                          categories: categories,
                          controller: controller),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class SignUpCardContent extends StatelessWidget {
  const SignUpCardContent({
    Key? key,
    required GlobalKey<FormState> formKey,
    required this.mediaWidth,
    required this.number,
    required this.categories,
    required this.controller,
  })  : _formKey = formKey,
        super(key: key);

  final GlobalKey<FormState> _formKey;
  final double mediaWidth;
  final PhoneNumber number;
  final TextEditingController controller;
  final List<String> categories;

  static List<String> specialities = [
    "Allergist",
    "Anesthesiologist",
    "Cardiologist",
    "Chiropractor",
    "Dentist",
    "Dermatologist",
    "Fertility specialist",
    "Gynecologist",
    "Massage therapist",
    "Midwife",
    "Naturopath",
    "Neurologist",
    "Obstetrician",
    "Occupational therapist",
    "Oncologist",
    "Ophthalmologist",
    "Pediatrician",
    "Physical therapist",
    "Podiatrist",
    "Psychiatrist",
    "Radiologist",
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: mediaWidth > 750
            ? const EdgeInsets.only(left: 150, right: 150, top: 70, bottom: 70)
            : const EdgeInsets.only(
                top: 30,
                left: 40,
                right: 40,
                bottom: 20,
              ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Sign up",
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
                  context.router.navigate(LoginPageRoute());
                },
                child: RichText(
                  text: const TextSpan(children: <TextSpan>[
                    TextSpan(
                      text: 'Already a member? ',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                    ),
                    TextSpan(
                      text: 'Sign in',
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
                  ? MediaQuery.of(context).size.height * 0.55
                  : MediaQuery.of(context).size.height * 0.75,
              child: BlocBuilder<SignUpBloc, SignUpState>(
                builder: (context, state) {
                  String cureentSelected = "";
                  context
                      .read<SignUpBloc>()
                      .add(SignUpEvent.changeCategories(categories));
                  return SingleChildScrollView(
                    child: Form(
                      autovalidateMode: state.showErrorMessages
                          ? AutovalidateMode.always
                          : AutovalidateMode.disabled,
                      key: _formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.only(bottom: 10),
                                      child: Text(
                                        "First Name*",
                                        textAlign: TextAlign.start,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 10),
                                      child: TextFormField(
                                        decoration: const InputDecoration(
                                          border: OutlineInputBorder(),
                                          isDense: true, // Added this
                                          contentPadding: EdgeInsets.all(8),
                                        ),
                                        onChanged: (value) => context
                                            .read<SignUpBloc>()
                                            .add(SignUpEvent.changeFirstName(
                                                value)),
                                        validator: (value) => context
                                            .read<SignUpBloc>()
                                            .state
                                            .firstName
                                            .value
                                            .fold(
                                              (f) => f.maybeMap(
                                                empty: (_) =>
                                                    'Firstname should not be empty',
                                                orElse: () => null,
                                              ),
                                              (_) => null,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Flexible(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.only(bottom: 10),
                                      child: Text(
                                        "Last Name*",
                                        textAlign: TextAlign.start,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 0),
                                      child: TextFormField(
                                        decoration: const InputDecoration(
                                          border: OutlineInputBorder(),
                                          isDense: true, // Added this
                                          contentPadding: EdgeInsets.all(8),
                                        ),
                                        onChanged: (value) => context
                                            .read<SignUpBloc>()
                                            .add(SignUpEvent.changeLastName(
                                                value)),
                                        validator: (value) => context
                                            .read<SignUpBloc>()
                                            .state
                                            .lastName
                                            .value
                                            .fold(
                                              (f) => f.maybeMap(
                                                empty: (_) =>
                                                    'Lastname should not be empty',
                                                orElse: () => null,
                                              ),
                                              (_) => null,
                                            ),
                                      ),
                                    ),
                                  ],
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
                                    contentPadding: EdgeInsets.all(8),
                                  ),
                                  onChanged: (value) => context
                                      .read<SignUpBloc>()
                                      .add(SignUpEvent.changeEmail(value)),
                                  validator: (value) => context
                                      .read<SignUpBloc>()
                                      .state
                                      .email
                                      .value
                                      .fold(
                                        (f) => f.maybeMap(
                                          invalidUserName: (_) =>
                                              'Invalid email',
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
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: InternationalPhoneNumberInput(
                              onInputChanged: (PhoneNumber number) {
                                context.read<SignUpBloc>().add(
                                    SignUpEvent.changePhoneNumber(
                                        number.phoneNumber!));
                                context.read<SignUpBloc>().add(
                                    SignUpEvent.changeCountry(number.isoCode!));
                              },
                              onSaved: (PhoneNumber number) {
                                context.read<SignUpBloc>().add(
                                    SignUpEvent.changePhoneNumber(
                                        number.phoneNumber!));
                                context.read<SignUpBloc>().add(
                                    SignUpEvent.changeCountry(number.isoCode!));
                              },
                              selectorConfig: const SelectorConfig(
                                selectorType:
                                    PhoneInputSelectorType.BOTTOM_SHEET,
                              ),
                              ignoreBlank: false,
                              autoValidateMode:
                                  AutovalidateMode.onUserInteraction,
                              selectorTextStyle:
                                  const TextStyle(color: Colors.black),
                              initialValue: number,
                              textFieldController: controller,
                              formatInput: false,
                              keyboardType:
                                  const TextInputType.numberWithOptions(
                                      signed: true, decimal: true),
                              inputDecoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                isDense: true, // Added this
                                contentPadding: EdgeInsets.all(8),
                              ),
                              inputBorder: const OutlineInputBorder(),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Flexible(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.only(bottom: 10),
                                      child: Text(
                                        "Speciality*",
                                        textAlign: TextAlign.start,
                                      ),
                                    ),
                                    Container(
                                      padding:
                                          const EdgeInsets.only(bottom: 10),
                                      child: DropdownButtonFormField<String>(
                                        items: specialities.map((value) {
                                          return DropdownMenuItem<String>(
                                            value: value,
                                            child: Text(value),
                                          );
                                        }).toList(),
                                        decoration: const InputDecoration(
                                          border: OutlineInputBorder(),
                                          isDense: true, // Added this
                                          contentPadding: EdgeInsets.all(8),
                                        ),
                                        hint: const Text(
                                          "Please choose a Speciality",
                                        ),
                                        onChanged: (value) {
                                          context.read<SignUpBloc>().add(
                                              SignUpEvent.changeSpeciality(
                                                  ([value!])));
                                          cureentSelected = value;
                                        },
                                        validator: (_) => context
                                            .read<SignUpBloc>()
                                            .state
                                            .specialities
                                            .value
                                            .fold(
                                              (f) => f.maybeMap(
                                                empty: (_) =>
                                                    'Select an specialities',
                                                orElse: () => null,
                                              ),
                                              (_) => null,
                                            ),
                                      ),
                                    )
                                  ],
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
                                  "Create Password*",
                                  textAlign: TextAlign.start,
                                ),
                              ),
                              SizedBox(
                                width: mediaWidth,
                                child: TextFormField(
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                    isDense: true, // Added this
                                    contentPadding: EdgeInsets.all(8),
                                  ),
                                  obscureText: true,
                                  onChanged: (value) => context
                                      .read<SignUpBloc>()
                                      .add(SignUpEvent.changePassword(value)),
                                  validator: (value) => context
                                      .read<SignUpBloc>()
                                      .state
                                      .password
                                      .value
                                      .fold(
                                        (f) => f.maybeMap(
                                          shortLength: (_) =>
                                              'Password should be greater than 8 characters',
                                          dontContainDigit: (_) =>
                                              'Password should be contain a digit',
                                          dontContainLower: (_) =>
                                              'Password should be contain a lower case character',
                                          dontContainUpper: (_) =>
                                              'Password should be contain a upper case character',
                                          empty: (_) =>
                                              'Password should be greater than 8 characters.It should contain a lower case character. aupper case character and a digit',
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
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: ElevatedButton(
                                onPressed: () => {
                                      context
                                          .read<SignUpBloc>()
                                          .add(const SignUpEvent.signUp())
                                    },
                                style: ElevatedButton.styleFrom(
                                  primary: const Color(0xFF015397),
                                  minimumSize: const Size.fromHeight(
                                    40,
                                  ),
                                ),
                                child: const Text("Sign up",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold))),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Wrap(
                            children: [
                              Checkbox(
                                onChanged: (val) => context
                                    .read<SignUpBloc>()
                                    .add(SignUpEvent.termAndCondition()),
                                value: state.termAndCondition,
                              ),
                              TextButton(
                                  style: TextButton.styleFrom(
                                      maximumSize: Size.fromWidth(
                                          MediaQuery.of(context).size.width >
                                                  750
                                              ? mediaWidth * 0.55
                                              : mediaWidth * 0.6)),
                                  onPressed: () => context
                                      .read<SignUpBloc>()
                                      .add(SignUpEvent.termAndCondition()),
                                  child: RichText(
                                    text: const TextSpan(children: <TextSpan>[
                                      TextSpan(
                                        text:
                                            "By creating account you agree to the terns of user and our ",
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      TextSpan(
                                        text: 'privacy policy',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF015397),
                                        ),
                                      )
                                    ]),
                                    textAlign: TextAlign.start,
                                  )),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
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
