import 'package:MD_Shorts/application/auth/sign_in/sign_in_bloc.dart';
import 'package:MD_Shorts/application/auth/sign_up/sign_up_bloc.dart';
import 'package:MD_Shorts/application/profile/bloc/profile_bloc.dart';
import 'package:MD_Shorts/application/profile/profile_form/bloc/profile_form_bloc.dart';
import 'package:MD_Shorts/injection.dart';
import 'package:MD_Shorts/presentation/routes/routes.gr.dart';
import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:auto_route/auto_route.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';
import 'package:country_picker/country_picker.dart';

final textController = new TextEditingController();

class ProfileFormPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController controller = TextEditingController();
  ProfileFormPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            context.router.popAndPush(const ProfilePageRoute());
          },
        ),
      ),
      body: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => getIt<ProfileFormBloc>(),
          ),
          BlocProvider(
            create: (context) => getIt<ProfileBloc>()
              ..add(
                const ProfileEvent.watchAllStarted(),
              ),
          ),
        ],
        child: ProfileForm(
          formKey: _formKey,
        ),
      ),
    );
  }
}

class ProfileForm extends StatelessWidget {
  const ProfileForm({
    Key? key,
    required GlobalKey<FormState> formKey,
  })  : _formKey = formKey,
        super(key: key);
  final GlobalKey<FormState> _formKey;
  double widthGetMethod(BuildContext context) {
    return MediaQuery.of(context).size.width > 768
        ? 768
        : MediaQuery.of(context).size.width;
  }

  @override
  Widget build(BuildContext context) {
    var mediaWidth = widthGetMethod(context);
    return BlocConsumer<ProfileFormBloc, ProfileFormState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () => {},
          (either) => either.fold(
              (failure) => FlushbarHelper.createError(
                      message: failure.map(
                    cancelledByUser: (_) => 'Cancelled',
                    serverError: (_) => 'Server error',
                  )),
              (_) => context.router.popAndPush(const ProfilePageRoute())),
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
                          child: ProfileCardContent(
                              formKey: _formKey, mediaWidth: mediaWidth),
                        )
                      : ProfileCardContent(
                          formKey: _formKey,
                          mediaWidth: mediaWidth,
                        ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class ProfileCardContent extends StatelessWidget {
  const ProfileCardContent({
    Key? key,
    required GlobalKey<FormState> formKey,
    required this.mediaWidth,
  })  : _formKey = formKey,
        super(key: key);

  final GlobalKey<FormState> _formKey;
  final double mediaWidth;

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
    return Padding(
      padding: mediaWidth > 750
          ? const EdgeInsets.only(left: 150, right: 150, top: 70, bottom: 70)
          : const EdgeInsets.only(
              top: 30,
              left: 40,
              right: 40,
              bottom: 20,
            ),
      child: BlocBuilder<ProfileBloc, ProfileState>(
        builder: (profileContext, profileState) {
          return profileState.map(
            initial: (_) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
            loadFailure: (_) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Edit Profile",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF015397)),
                  ),
                  SizedBox(
                    height: mediaWidth > 750
                        ? MediaQuery.of(context).size.height * 0.55
                        : MediaQuery.of(context).size.height * 0.85,
                    child: BlocBuilder<ProfileFormBloc, ProfileFormState>(
                      builder: (context, state) {
                        String cureentSelected = "";
                        return Form(
                          key: _formKey,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.only(bottom: 7),
                                          child: Text(
                                            "First Name",
                                            textAlign: TextAlign.start,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 10),
                                          child: TextFormField(
                                            decoration: const InputDecoration(
                                              border: OutlineInputBorder(),
                                              isDense: true, // Added this
                                              contentPadding: EdgeInsets.all(8),
                                            ),
                                            onChanged: (value) => context
                                                .read<ProfileFormBloc>()
                                                .add(ProfileFormEvent
                                                    .changeFirstName(value)),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Flexible(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.only(bottom: 7),
                                          child: Text(
                                            "Last Name",
                                            textAlign: TextAlign.start,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 0),
                                          child: TextFormField(
                                            decoration: const InputDecoration(
                                              border: OutlineInputBorder(),
                                              isDense: true, // Added this
                                              contentPadding: EdgeInsets.all(8),
                                            ),
                                            onChanged: (value) => context
                                                .read<ProfileFormBloc>()
                                                .add(ProfileFormEvent
                                                    .changeLastName(value)),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Flexible(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.only(bottom: 7),
                                          child: Text(
                                            "Speciality",
                                            textAlign: TextAlign.start,
                                          ),
                                        ),
                                        Container(
                                          padding:
                                              const EdgeInsets.only(bottom: 7),
                                          child:
                                              DropdownButtonFormField<String>(
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
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                            onChanged: (value) {
                                              context
                                                  .read<ProfileFormBloc>()
                                                  .add(ProfileFormEvent
                                                      .changeSpeciality(
                                                          ([value!])));
                                              cureentSelected = value;
                                            },
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(bottom: 7),
                                    child: Text(
                                      "Designation",
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
                                          .read<ProfileFormBloc>()
                                          .add(ProfileFormEvent
                                              .changeDesignation(value)),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(bottom: 7),
                                    child: Text(
                                      "Address",
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
                                          .read<ProfileFormBloc>()
                                          .add(ProfileFormEvent.changeAddress(
                                              value)),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.only(bottom: 7),
                                          child: Text(
                                            "City",
                                            textAlign: TextAlign.start,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 10),
                                          child: TextFormField(
                                            decoration: const InputDecoration(
                                              border: OutlineInputBorder(),
                                              isDense: true, // Added this
                                              contentPadding: EdgeInsets.all(8),
                                            ),
                                            onChanged: (value) => context
                                                .read<ProfileFormBloc>()
                                                .add(
                                                    ProfileFormEvent.changeCity(
                                                        value)),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Flexible(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.only(bottom: 7),
                                          child: Text(
                                            "State",
                                            textAlign: TextAlign.start,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 0),
                                          child: TextFormField(
                                            decoration: const InputDecoration(
                                              border: OutlineInputBorder(),
                                              isDense: true, // Added this
                                              contentPadding: EdgeInsets.all(8),
                                            ),
                                            onChanged: (value) => context
                                                .read<ProfileFormBloc>()
                                                .add(ProfileFormEvent
                                                    .changeState(value)),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.only(bottom: 7),
                                          child: Text(
                                            "Country",
                                            textAlign: TextAlign.start,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 10),
                                          child: TextFormField(
                                            controller: textController,
                                            decoration: const InputDecoration(
                                              border: OutlineInputBorder(),
                                              isDense: true, // Added this
                                              contentPadding: EdgeInsets.all(8),
                                            ),
                                            onTap: () => {
                                              showCountryPicker(
                                                context: context,
                                                showPhoneCode:
                                                    false, // optional. Shows phone code before the country name.
                                                onSelect: (Country country) {
                                                  textController.text =
                                                      country.name;
                                                  context
                                                      .read<ProfileFormBloc>()
                                                      .add(ProfileFormEvent
                                                          .changeCountry(
                                                              country.name));
                                                  // textController.value = country.displayName as TextEditingValue;
                                                },
                                              )
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Flexible(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.only(bottom: 7),
                                          child: Text(
                                            "Pin Code",
                                            textAlign: TextAlign.start,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 0),
                                          child: TextFormField(
                                            decoration: const InputDecoration(
                                              border: OutlineInputBorder(),
                                              isDense: true, // Added this
                                              contentPadding: EdgeInsets.all(8),
                                            ),
                                            onChanged: (value) => context
                                                .read<ProfileFormBloc>()
                                                .add(ProfileFormEvent.changePin(
                                                    value)),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(bottom: 7),
                                    child: Text(
                                      "About",
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                  SizedBox(
                                    width: mediaWidth,
                                    child: TextFormField(
                                      decoration: const InputDecoration(
                                        border: OutlineInputBorder(),
                                        contentPadding: EdgeInsets.all(8),
                                      ),
                                      onChanged: (value) => context
                                          .read<ProfileFormBloc>()
                                          .add(ProfileFormEvent.changeAbout(
                                              value)),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: ElevatedButton(
                                    onPressed: () => context
                                        .read<ProfileFormBloc>()
                                        .add(const ProfileFormEvent
                                            .saveProfile()),
                                    style: ElevatedButton.styleFrom(
                                      primary: const Color(0xFF015397),
                                      minimumSize: const Size.fromHeight(
                                        50,
                                      ),
                                    ),
                                    child: const Text("Save Details",
                                        style: TextStyle(
                                            fontSize: 24,
                                            fontWeight: FontWeight.bold))),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  )
                ],
              );
            },
            loadInProgress: (_) => const Center(
              child: CircularProgressIndicator(),
            ),
            loadSuccess: (value) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: mediaWidth > 750
                        ? MediaQuery.of(context).size.height * 0.55
                        : MediaQuery.of(context).size.height * 0.85,
                    child: BlocBuilder<ProfileFormBloc, ProfileFormState>(
                      builder: (context, state) {
                        String cureentSelected = "";
                        return Form(
                          key: _formKey,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.only(bottom: 7),
                                          child: Text(
                                            "First Name",
                                            textAlign: TextAlign.start,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 10),
                                          child: TextFormField(
                                            decoration: const InputDecoration(
                                              border: OutlineInputBorder(),
                                              isDense: true, // Added this
                                              contentPadding: EdgeInsets.all(8),
                                            ),
                                            initialValue:
                                                value.profile.firstName,
                                            onChanged: (value) => context
                                                .read<ProfileFormBloc>()
                                                .add(ProfileFormEvent
                                                    .changeFirstName(value)),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Flexible(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.only(bottom: 7),
                                          child: Text(
                                            "Last Name",
                                            textAlign: TextAlign.start,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 0),
                                          child: TextFormField(
                                            decoration: const InputDecoration(
                                              border: OutlineInputBorder(),
                                              isDense: true, // Added this
                                              contentPadding: EdgeInsets.all(8),
                                            ),
                                            initialValue:
                                                value.profile.lastName,
                                            onChanged: (value) => context
                                                .read<ProfileFormBloc>()
                                                .add(ProfileFormEvent
                                                    .changeLastName(value)),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Flexible(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.only(bottom: 7),
                                          child: Text(
                                            "Speciality",
                                            textAlign: TextAlign.start,
                                          ),
                                        ),
                                        Container(
                                          padding:
                                              const EdgeInsets.only(bottom: 7),
                                          child:
                                              DropdownButtonFormField<String>(
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
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                            value: state.speciality.isNotEmpty
                                                ? state.speciality.first
                                                : value.profile.speciality
                                                    .getOrCrash()
                                                    .first,
                                            onChanged: (value) {
                                              context
                                                  .read<ProfileFormBloc>()
                                                  .add(ProfileFormEvent
                                                      .changeSpeciality(
                                                          ([value!])));
                                              cureentSelected = value;
                                            },
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(bottom: 7),
                                    child: Text(
                                      "Designation",
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
                                      initialValue: value.profile.designation,
                                      onChanged: (value) => context
                                          .read<ProfileFormBloc>()
                                          .add(ProfileFormEvent
                                              .changeDesignation(value)),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(bottom: 7),
                                    child: Text(
                                      "Address",
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
                                      initialValue: value.profile.address != {}
                                          ? value.profile.address['address']
                                          : "",
                                      onChanged: (value) => context
                                          .read<ProfileFormBloc>()
                                          .add(ProfileFormEvent.changeAddress(
                                              value)),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.only(bottom: 7),
                                          child: Text(
                                            "City",
                                            textAlign: TextAlign.start,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 10),
                                          child: TextFormField(
                                            decoration: const InputDecoration(
                                              border: OutlineInputBorder(),
                                              isDense: true, // Added this
                                              contentPadding: EdgeInsets.all(8),
                                            ),
                                            initialValue:
                                                value.profile.address['city'],
                                            onChanged: (value) => context
                                                .read<ProfileFormBloc>()
                                                .add(
                                                    ProfileFormEvent.changeCity(
                                                        value)),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Flexible(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.only(bottom: 7),
                                          child: Text(
                                            "State",
                                            textAlign: TextAlign.start,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 0),
                                          child: TextFormField(
                                            decoration: const InputDecoration(
                                              border: OutlineInputBorder(),
                                              isDense: true, // Added this
                                              contentPadding: EdgeInsets.all(8),
                                            ),
                                            initialValue:
                                                value.profile.address['state'],
                                            onChanged: (value) => context
                                                .read<ProfileFormBloc>()
                                                .add(ProfileFormEvent
                                                    .changeState(value)),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.only(bottom: 7),
                                          child: Text(
                                            "Country",
                                            textAlign: TextAlign.start,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 10),
                                          child: TextFormField(
                                            controller: textController,
                                            decoration: const InputDecoration(
                                              border: OutlineInputBorder(),
                                              isDense: true, // Added this
                                              contentPadding: EdgeInsets.all(8),
                                            ),
                                            // initialValue: value.profile.address['country'],
                                            onTap: () => {
                                              showCountryPicker(
                                                context: context,
                                                showPhoneCode:
                                                    false, // optional. Shows phone code before the country name.
                                                onSelect: (Country country) {
                                                  textController.text =
                                                      country.name;
                                                  context
                                                      .read<ProfileFormBloc>()
                                                      .add(ProfileFormEvent
                                                          .changeCountry(
                                                              country.name));
                                                },
                                              )
                                            },
                                            onChanged: (value) => context
                                                .read<ProfileFormBloc>()
                                                .add(ProfileFormEvent
                                                    .changeCountry(value)),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Flexible(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.only(bottom: 7),
                                          child: Text(
                                            "Pin Code",
                                            textAlign: TextAlign.start,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 0),
                                          child: TextFormField(
                                            decoration: const InputDecoration(
                                              border: OutlineInputBorder(),
                                              isDense: true, // Added this
                                              contentPadding: EdgeInsets.all(8),
                                            ),
                                            initialValue:
                                                value.profile.address['pin'],
                                            onChanged: (value) => context
                                                .read<ProfileFormBloc>()
                                                .add(ProfileFormEvent.changePin(
                                                    value)),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(bottom: 7),
                                    child: Text(
                                      "About",
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                  SizedBox(
                                    width: mediaWidth,
                                    child: TextFormField(
                                      decoration: const InputDecoration(
                                        border: OutlineInputBorder(),
                                        contentPadding: EdgeInsets.all(8),
                                      ),
                                      initialValue: value.profile.about,
                                      onChanged: (value) => context
                                          .read<ProfileFormBloc>()
                                          .add(ProfileFormEvent.changeAbout(
                                              value)),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: ElevatedButton(
                                    onPressed: () => context
                                        .read<ProfileFormBloc>()
                                        .add(const ProfileFormEvent
                                            .saveProfile()),
                                    style: ElevatedButton.styleFrom(
                                      primary: const Color(0xFF015397),
                                      minimumSize: const Size.fromHeight(
                                        50,
                                      ),
                                    ),
                                    child: const Text("Save Details",
                                        style: TextStyle(
                                            fontSize: 24,
                                            fontWeight: FontWeight.bold))),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  )
                ],
              );
            },
          );
        },
      ),
    );
  }
}
