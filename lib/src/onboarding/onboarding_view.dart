import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:swift_service/src/authentication_view/widgets/app_button.dart';
import 'package:swift_service/utils/styles/text_styles.dart';
import 'package:swift_service/utils/theme/app_colors.dart';

class OnboardingView extends StatelessWidget {
  OnboardingView({super.key});

  final PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: controller,
      children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/onboard.png'),
              fit: BoxFit.fitHeight,
              alignment: Alignment.centerRight,
            ),
          ),
          child: Container(
            height: 100,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.transparent,
                  Color(0xFF003144),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                KStyles().light(
                    text: 'skip',
                    size: 15,
                    overflow: TextOverflow.visible,
                    textAlign: TextAlign.center,
                    color: AppColors.white),
                Column(
                  children: [
                    KStyles().med(
                        text: 'Best Solution\n For Your Needs',
                        size: 31,
                        overflow: TextOverflow.visible,
                        textAlign: TextAlign.center,
                        color: AppColors.white),
                    KStyles().light(
                        text:
                            '"Now it is very easy to find your home Services. We have a lot of workers very experienced"',
                        size: 15,
                        overflow: TextOverflow.visible,
                        textAlign: TextAlign.center,
                        color: AppColors.white),
                    SmoothPageIndicator(
                      controller: controller,
                      count: 2,
                    ),
                    const AppButton(),
                  ],
                ),
              ],
            ),
          ),
        ),
        Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/onboard.png'),
              fit: BoxFit.fitHeight,
              alignment: Alignment.centerRight,
            ),
          ),
          child: Container(
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.transparent,
                  Color(0xFF003144),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
