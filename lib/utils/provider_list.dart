import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swift_service/data/data_source/home_datasource.dart';
import 'package:swift_service/data/data_source/login_datatsource.dart';
import 'package:swift_service/data/repository/home_repo.dart';
import 'package:swift_service/data/repository/login_repo.dart';

import '../bloc/authentication_bloc/authentication_bloc.dart';
import '../bloc/bottom_nav_bloc/bottom_nav_bloc.dart';
import '../bloc/cleaning_bloc/cleaning_bloc.dart';
import '../bloc/home_bloc/home_bloc.dart';
import '../bloc/splash_bloc/splash_bloc.dart';
import 'package:provider/single_child_widget.dart';

import '../data/api_service.dart';

final APIHelper apiHelper = APIHelper();

List<SingleChildWidget> blocProviderList = [
  BlocProvider(
    create: (context) => BottomNavBloc(),
  ),
  BlocProvider(
    create: (context) => HomeBloc(
        getBannerRepository: GetBannerRepository(
            getBannerDataSource: GetBannerDataSource(apiHelper)))
      ..add(StartBannerSlider()),
  ),
  BlocProvider(
    create: (context) => SplashBloc()..add(const NaviagteToApp()),
  ),
  BlocProvider(
    create: (context) => CleaningBloc(),
  ),
  BlocProvider(
    create: (context) => AuthenticationBloc(
        loginRepository:
            LoginRepository(loginDataSource: LoginDataSource(apiHelper))),
  ),
];
