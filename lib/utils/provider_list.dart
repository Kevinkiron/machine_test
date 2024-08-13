import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/bottom_nav_bloc/bottom_nav_bloc.dart';
import '../bloc/home_bloc/home_bloc.dart';
import '../bloc/splash_bloc/splash_bloc.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> blocProviderList = [
  BlocProvider(
    create: (context) => BottomNavBloc(),
  ),
  BlocProvider(
    create: (context) => HomeBloc()..add(StartBannerSlider()),
  ),
  BlocProvider(
    create: (context) => SplashBloc()..add(const NaviagteToApp()),
  ),
];
