import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:swift_service/routes/routes.dart';

import 'data/api_service.dart';
import 'utils/global_extension.dart';
import 'utils/provider_list.dart';
import 'utils/string_const.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Constants.width = MediaQuery.of(context).size.width;
    Constants.height = MediaQuery.of(context).size.height;
    return MultiBlocProvider(
      providers: blocProviderList,
      child: Platform.isIOS
          ? CupertinoApp.router(
              title: 'Swift Service',
              debugShowCheckedModeBanner: false,
              routerConfig: MyRouter.router,
            )
          : MaterialApp.router(
              title: 'Swift Service',
              debugShowCheckedModeBanner: false,
              theme: ThemeData(useMaterial3: true),
              routerConfig: MyRouter.router,
            ),
    );
  }
}
