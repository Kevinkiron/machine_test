import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:swift_service/src/authentication_view/login_view.dart';
import 'package:swift_service/utils/common_widgets/app_button.dart';
import 'package:swift_service/utils/app_images.dart';
import 'package:swift_service/utils/global_extension.dart';
import 'package:swift_service/utils/styles/text_styles.dart';
import 'package:swift_service/utils/theme/app_colors.dart';

class OnboardingView extends StatelessWidget {
  OnboardingView({super.key});

  final PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller,
        children: [
          _onboardScreen1(context),
          _onboardScreen2(context),
        ],
      ),
    );
  }

  Container _onboardScreen2(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppImages.onboard2),
          fit: BoxFit.fitHeight,
          alignment: Alignment.center,
        ),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
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
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            KStyles().reg(
                text: 'Are You Looking For\n Home Service',
                size: 31,
                overflow: TextOverflow.visible,
                textAlign: TextAlign.center,
                color: AppColors.white),
            20.height,
            KStyles().light(
                text:
                    '"Now it is very easy to find your home Services. We have a lot of workers very experienced"',
                size: 15,
                overflow: TextOverflow.visible,
                textAlign: TextAlign.center,
                color: AppColors.white),
            30.height,
            _pageIndicator(),
            30.height,
            AppButton(
              text: 'Get Started',
              onTap: () async {
                final prefs = await SharedPreferences.getInstance();
                prefs.setBool('login', true);
                if (context.mounted) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginView()),
                  );
                }
              },
            ),
            20.height,
          ],
        ),
      ),
    );
  }

  SmoothPageIndicator _pageIndicator() {
    return SmoothPageIndicator(
      controller: controller,
      count: 2,
      effect: CustomizableEffect(
        activeDotDecoration: DotDecoration(
          width: 15,
          height: 15,
          dotBorder: DotBorder(color: AppColors.primary, padding: 5),
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(50),
        ),
        dotDecoration: DotDecoration(
          width: 15,
          height: 15,
          color: Colors.grey,
          borderRadius: BorderRadius.circular(50),
        ),
      ),
    );
  }

  Container _onboardScreen1(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppImages.onboard),
          fit: BoxFit.fitHeight,
          alignment: Alignment.centerRight,
        ),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
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
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextButton(
                onPressed: () async {
                  final prefs = await SharedPreferences.getInstance();
                  prefs.setBool('login', true);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginView()),
                  );
                },
                child: Container(
                  width: 60,
                  height: 30,
                  decoration: BoxDecoration(
                      border: Border.all(color: AppColors.white),
                      borderRadius: BorderRadius.circular(25)),
                  child: Center(
                    child: KStyles().reg(
                        text: 'Skip',
                        size: 15,
                        overflow: TextOverflow.visible,
                        textAlign: TextAlign.center,
                        color: AppColors.white),
                  ),
                )),
            Column(
              children: [
                KStyles().reg(
                    text: 'Best Solution\n For Your Needs',
                    size: 31,
                    overflow: TextOverflow.visible,
                    textAlign: TextAlign.center,
                    color: AppColors.white),
                20.height,
                KStyles().light(
                    text:
                        '"Now it is very easy to find your home Services. We have a lot of workers very experienced"',
                    size: 15,
                    overflow: TextOverflow.visible,
                    textAlign: TextAlign.center,
                    color: AppColors.white),
                30.height,
                _pageIndicator(),
                30.height,
                AppButton(
                  text: 'Continue',
                  onTap: () {
                    controller.nextPage(
                        duration: Duration(seconds: 1),
                        curve: Curves.easeInCirc);
                  },
                ),
                20.height,
              ],
            ),
          ],
        ),
      ),
    );
  }
}
