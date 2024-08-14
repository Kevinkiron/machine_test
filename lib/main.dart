import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:swift_service/bottom_nav.dart';

import 'src/onboarding/onboarding_view.dart';
import 'src/splash_view/splash_view.dart';
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
    return MultiBlocProvider(
      providers: blocProviderList,
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(useMaterial3: true),
        home: login ? const SplashView() : OnboardingView(),
      ),
    );
  }
}
