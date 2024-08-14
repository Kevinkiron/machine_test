import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'src/onboarding/onboarding_view.dart';
import 'src/splash_view/splash_view.dart';
import 'utils/global_extension.dart';
import 'utils/provider_list.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  final login = prefs.getBool('login') ?? false;
  runApp(MyApp(login: login));
}

class MyApp extends StatelessWidget {
  final bool login;
  const MyApp({super.key, required this.login});

  @override
  Widget build(BuildContext context) {
    Constants.width = MediaQuery.of(context).size.width;
    Constants.height = MediaQuery.of(context).size.height;
    return MultiBlocProvider(
      providers: blocProviderList,
      child: Platform.isIOS
          ? CupertinoApp(
              title: 'Swift Service',
              debugShowCheckedModeBanner: false,
              home: login ? const SplashView() : OnboardingView(),
            )
          : MaterialApp(
              title: 'Swift Service',
              debugShowCheckedModeBanner: false,
              theme: ThemeData(useMaterial3: true),
              home: login ? const SplashView() : OnboardingView(),
            ),
    );
  }
}
