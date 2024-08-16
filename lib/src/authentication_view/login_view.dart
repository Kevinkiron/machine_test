import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:go_router/go_router.dart';
import 'package:swift_service/routes/routes.dart';
import 'package:swift_service/routes/routes_constants.dart';
import 'package:swift_service/src/authentication_view/login_otp_view.dart';
import 'package:swift_service/src/authentication_view/signup_view.dart';
import 'package:swift_service/utils/app_images.dart';
import 'package:swift_service/utils/global_extension.dart';
import 'package:swift_service/utils/styles/text_styles.dart';
import 'package:swift_service/utils/theme/app_colors.dart';

import '../../bloc/authentication_bloc/authentication_bloc.dart';
import '../../utils/common_widgets/app_button.dart';
import 'widgets/custom_textfield.dart';

class LoginView extends StatelessWidget {
  LoginView({
    super.key,
  });
  final TextEditingController number = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF207ec2),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: IntrinsicHeight(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    _logoImage(),
                    _contentTextField(context),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Expanded _contentTextField(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        padding: const EdgeInsets.all(20),
        width: double.infinity,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
          color: Colors.white,
        ),
        child: BlocConsumer<AuthenticationBloc, AuthenticationState>(
          listener: (context, state) {
            if (state.status == Status.success) {
              context.goNamed(
                RoutesConstants.otpPath,
                extra: number.text.trim(),
              );
            }
          },
          builder: (context, state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                15.height,
                KStyles().med(text: 'Welcome back!', size: 30),
                15.height,
                KStyles().light(
                  text: 'Sign in for fast services and new offers.',
                  size: 14,
                ),
                20.height,
                KStyles().reg(text: 'Enter phone number', size: 14),
                10.height,
                CustomTextfield(
                    controller: number,
                    onSubmit: (value) => context.read<AuthenticationBloc>().add(
                        NumberInput(
                            number: number.text.trim(), context: context))),
                30.height,
                state.load
                    ? const SpinKitPianoWave(
                        color: AppColors.primary,
                        size: 30,
                      )
                    : AppButton(
                        text: 'Receive Verification Code',
                        onTap: () {
                          context.read<AuthenticationBloc>().add(NumberInput(
                              number: number.text.trim(), context: context));
                        },
                      ),
                20.height,
                Center(
                  child: RichText(
                      text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Not a member?',
                        style: KStyles()
                            .reg(text: '', size: 16, color: Colors.grey)
                            .style,
                      ),
                      WidgetSpan(child: 7.width),
                      TextSpan(
                          text: 'Signup',
                          style: KStyles()
                              .reg(text: '', size: 16, color: AppColors.primary)
                              .style,
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              context.goNamed(RoutesConstants.signUpRoute);
                            }),
                    ],
                  )),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  Expanded _logoImage() {
    return Expanded(
      flex: 1,
      child: Image.asset(
        AppImages.loginLogo,
        fit: BoxFit.contain,
        width: 200,
        height: 200,
      ),
    );
  }
}
