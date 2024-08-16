import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:go_router/go_router.dart';
import 'package:swift_service/routes/routes_constants.dart';
import 'package:swift_service/utils/common_widgets/snack_bar_custom.dart';
import 'package:swift_service/utils/global_extension.dart';
import 'package:swift_service/utils/styles/text_styles.dart';
import 'package:swift_service/utils/theme/app_colors.dart';

import '../../bloc/authentication_bloc/authentication_bloc.dart';
import '../../utils/app_images.dart';
import '../../utils/common_widgets/app_button.dart';
import 'widgets/custom_textfield.dart';

class SignupView extends StatelessWidget {
  SignupView({super.key});
  final TextEditingController signinNumber = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF14b4ca),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: IntrinsicHeight(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Image.asset(
                        AppImages.signUpLogo,
                        fit: BoxFit.contain,
                        width: 200,
                        height: 200,
                      ),
                    ),
                    Expanded(
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
                        child: BlocBuilder<AuthenticationBloc,
                            AuthenticationState>(
                          builder: (context, state) {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                15.height,
                                KStyles().med(
                                  text: 'Welcome to Swift Service!',
                                  size: 30,
                                  height: 1.2,
                                  overflow: TextOverflow.visible,
                                ),
                                10.height,
                                KStyles().light(
                                  text: 'Sign up to simplify your services.',
                                  size: 14,
                                ),
                                20.height,
                                KStyles()
                                    .reg(text: 'Enter phone number', size: 14),
                                10.height,
                                CustomTextfield(
                                  controller: signinNumber,
                                  onSubmit: (value) {
                                    if (signinNumber.text.isNotEmpty) {
                                      context.pushNamed(
                                        RoutesConstants.signFormPath,
                                        extra: signinNumber.text,
                                      );
                                    } else {
                                      customErrorSnackBar(context,
                                          message: 'Enter Number');
                                    }
                                  },
                                ),
                                30.height,
                                state.load
                                    ? const SpinKitPianoWave(
                                        color: AppColors.primary,
                                        size: 30,
                                      )
                                    : AppButton(
                                        text: 'Receive Verification Code',
                                        onTap: () {
                                          if (signinNumber.text.isNotEmpty) {
                                            context.pushNamed(
                                              RoutesConstants.signFormPath,
                                              extra: signinNumber.text,
                                            );
                                          } else {
                                            customErrorSnackBar(context,
                                                message: 'Enter Number');
                                          }
                                        },
                                      ),
                                20.height,
                                Center(
                                  child: RichText(
                                      text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'Already a member?',
                                        style: KStyles()
                                            .reg(
                                                text: '',
                                                size: 16,
                                                color: Colors.grey)
                                            .style,
                                      ),
                                      WidgetSpan(child: 7.width),
                                      TextSpan(
                                          text: 'Signin',
                                          style: KStyles()
                                              .reg(
                                                  text: '',
                                                  size: 16,
                                                  color: AppColors.primary)
                                              .style,
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () {
                                              context.goNamed(
                                                  RoutesConstants.loginRoute);
                                            }),
                                    ],
                                  )),
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
