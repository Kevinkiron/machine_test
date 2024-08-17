import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../bottom_nav.dart';
import '../src/authentication_view/login_otp_view.dart';
import '../src/authentication_view/login_view.dart';
import '../src/authentication_view/signin_form.dart';
import '../src/authentication_view/signup_view.dart';
import 'package:swift_service/data/models/structure_categorey_model.dart/structure_all_categories.dart';

import '../src/cleaning_specialist_view/cleaning_specialist_view.dart';
import '../src/onboarding/onboarding_view.dart';
import '../src/splash_view/splash_view.dart';
import 'routes_constants.dart';

class MyRouter {
  /// The route configuration.
  static final GlobalKey<NavigatorState> _rootNavKey =
      GlobalKey<NavigatorState>();
  static final router = GoRouter(
      navigatorKey: _rootNavKey,
      initialLocation: RoutesConstants.initialPath,
      debugLogDiagnostics: true,
      routes: [
        //*----(Initial view)
        GoRoute(
          path: RoutesConstants.initialPath,
          name: RoutesConstants.initialRoute,
          builder: (context, state) => const SplashView(),
        ),
        GoRoute(
          path: RoutesConstants.loginPath,
          name: RoutesConstants.loginRoute,
          builder: (context, state) => LoginView(),
        ),
        GoRoute(
          path: RoutesConstants.onboardingPath,
          name: RoutesConstants.onboardinRoute,
          builder: (context, state) => OnboardingView(),
        ),
        GoRoute(
          path: RoutesConstants.otpPath,
          name: RoutesConstants.otpRoute,
          builder: (context, state) {
            final phoneNumber = state.extra as String;
            return LoginOtpView(
              number: phoneNumber,
            );
          },
        ),
        GoRoute(
          path: RoutesConstants.homePath,
          name: RoutesConstants.homeRoute,
          builder: (context, state) => BottomNav(),
        ),
        GoRoute(
          path: RoutesConstants.signUpPath,
          name: RoutesConstants.signUpRoute,
          builder: (context, state) => SignupView(),
        ),
        GoRoute(
          path: RoutesConstants.signFormPath,
          name: RoutesConstants.signFormRoute,
          builder: (context, state) {
            final number = state.extra as String;

            return SigninForm(
              phoneNumber: number,
            );
          },
        ),
        GoRoute(
          onExit: (context, state) => false,
          path: RoutesConstants.cleaningPath,
          name: RoutesConstants.cleaningRoute,
          builder: (context, state) {
            final List<dynamic> extras = state.extra as List<dynamic>;

            final List<Service> services = extras[0] as List<Service>;

            final String name = extras[1] as String;
            return CleaningSpecialistView(
              serviceList: services,
              name: name,
            );
          },
        ),
      ]);
}
