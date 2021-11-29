import 'package:MD_Shorts/application/util/verifyemail/bloc/verifyemail_bloc.dart';
import 'package:MD_Shorts/injection.dart';
import 'package:MD_Shorts/presentation/home/web/verify_screen/verify_email_screen.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VerifyPage extends StatelessWidget {
  final String? token; 
  const VerifyPage({Key? key,  @PathParam('id') required this.token}) : super(key: key);  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => getIt<VerifyemailBloc>()
              ..add(VerifyemailEvent.watchAllStarted(token)),
          ),
        ],
        child: BlocBuilder<VerifyemailBloc, VerifyemailState>(
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
              loadSuccess: (productValue) => const VerifyEmail(
                  message: "done",
              ),
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
