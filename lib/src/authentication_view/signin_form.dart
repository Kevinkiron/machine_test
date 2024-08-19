import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:go_router/go_router.dart';
import 'package:swift_service/bloc/authentication_bloc/authentication_bloc.dart';
import 'package:swift_service/routes/routes_constants.dart';
import 'package:swift_service/utils/common_widgets/app_button.dart';
import 'package:swift_service/utils/app_images.dart';
import 'package:swift_service/utils/global_extension.dart';

import '../../utils/styles/text_styles.dart';
import '../../utils/theme/app_colors.dart';

class SigninForm extends StatelessWidget {
  final String phoneNumber;
  SigninForm({super.key, required this.phoneNumber});
  final TextEditingController name = TextEditingController();
  final TextEditingController lastName = TextEditingController();
  final TextEditingController email = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: _appbar(context),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: BlocConsumer<AuthenticationBloc, AuthenticationState>(
          listener: (context, state) {
            if (state.status == Status.success) {
              return _showPopup(context);
            }
          },
          builder: (context, state) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      KStyles().med(
                        text: 'Let’s know more \nabout you',
                        size: 31,
                        overflow: TextOverflow.visible,
                      ),
                      20.height,
                      KStyles().reg(
                        text: 'Provide Basic information to setup your account',
                        size: 14,
                        overflow: TextOverflow.visible,
                      ),
                      30.height,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          KStyles().reg(
                            text: 'Name',
                            size: 14,
                            overflow: TextOverflow.visible,
                          ),
                          5.height,
                          Row(
                            children: [
                              Expanded(
                                  child: _textfieldCommon(
                                      hintext: 'First Name', controller: name)),
                              20.width,
                              Expanded(
                                  child: _textfieldCommon(
                                      hintext: 'Last Name',
                                      controller: lastName)),
                            ],
                          ),
                        ],
                      ),
                      20.height,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          KStyles().reg(
                            text: 'Email Address',
                            size: 14,
                            overflow: TextOverflow.visible,
                          ),
                          5.height,
                          _textfieldCommon(
                              hintext: 'Enter your email address',
                              controller: email)
                        ],
                      ),
                    ],
                  ),
                ),
                state.load
                    ? const SpinKitPianoWave(
                        color: AppColors.primary,
                        size: 30,
                      )
                    : AppButton(
                        text: 'Finish Setup',
                        onTap: () {
                          context.read<AuthenticationBloc>().add(SigUpEvent(
                              number: phoneNumber,
                              context: context,
                              name: name.text,
                              lastName: lastName.text,
                              email: email.text));
                          // _showPopup(context);
                        },
                      ),
                5.height,
              ],
            );
          },
        ),
      ),
    );
  }

  AppBar _appbar(BuildContext context) {
    return AppBar(
      surfaceTintColor: AppColors.white,
      shadowColor: AppColors.black,
      elevation: 2,
      backgroundColor: AppColors.white,
      leading: GestureDetector(
          onTap: () {
            context.pop(context);
          },
          child: const Icon(Icons.arrow_back_ios_sharp)),
      title: KStyles().med(text: 'Get Started', size: 16),
      centerTitle: true,
    );
  }

  TextFormField _textfieldCommon(
      {required String hintext, TextEditingController? controller}) {
    return TextFormField(
      controller: controller,
      onFieldSubmitted: (value) {},
      decoration: InputDecoration(
        hintText: hintext,
        hintStyle: KStyles().reg(text: '', size: 16, color: Colors.grey).style,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Colors.grey.withOpacity(0.1),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Colors.grey.withOpacity(0.4),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Color(0xFF14b4ca),
          ),
        ),
      ),
    );
  }

  void _showPopup(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        Future.delayed(const Duration(seconds: 2), () {
          if (context.mounted) {
            context.pop();
          }
          if (context.mounted) {
            context.go(RoutesConstants.homeRoute);
          }
        });
        return AlertDialog(
          backgroundColor: AppColors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFFecf8f4),
                ),
                child: Image.asset(
                  AppImages.signInPopUp,
                  height: 60,
                  width: 60,
                ),
              ),
              20.height,
              Text(
                'Congratulations!',
                style: KStyles()
                    .med(text: '', size: 24, color: Colors.black)
                    .style,
              ),
              10.height,
              Text(
                'Your swift service account has been created successfully!',
                style: KStyles()
                    .reg(text: '', size: 14, color: Colors.black54)
                    .style,
                textAlign: TextAlign.center,
              ),
              20.height,
            ],
          ),
        );
      },
    );
  }
}
