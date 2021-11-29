import 'package:MD_Shorts/application/auth/sign_up/sign_up_bloc.dart';
import 'package:MD_Shorts/injection.dart';
import 'package:MD_Shorts/presentation/auth/sign_up/widgets/sign_up_widget.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class SignUpPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController controller = TextEditingController();
  final List<String> categories;
  String initialCountry = 'IN';
  PhoneNumber number = PhoneNumber(isoCode: 'IN');
  SignUpPage({Key? key, required this.categories}) : super(key: key);

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
        create: (context) => getIt<SignUpBloc>(),
        child: SignUpContent(
            mediaWidth: mediaWidth,
            formKey: _formKey,
            number: number,
            categories: categories,
            controller: controller),
      ),
    );
  }

  double widthGetMethod(BuildContext context) {
    return MediaQuery.of(context).size.width > 768
        ? 768
        : MediaQuery.of(context).size.width;
  }
}
