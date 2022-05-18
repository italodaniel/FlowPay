import 'package:flowpay/modules/barcode_scanner/barcode_scanner_page.dart';
import 'package:flowpay/modules/home/home_page.dart';
import 'package:flowpay/modules/splash/splash_page.dart';
import 'package:flowpay/shared/models/user_model.dart';
import 'package:flutter/material.dart';

import 'modules/login/login_page.dart';
import 'shared/themes/app_colors.dart';

class AppWidget extends StatelessWidget {
  //AppWidget(){
  //  SystemChrome.setPreferredOrientations({
  //    DeviceOrientation.portraitDown,
  //    DeviceOrientation.portraitUp,
  //   });
  //}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flow Pay',
      theme: ThemeData(
          primarySwatch: Colors.orange, primaryColor: AppColors.primary),
      initialRoute: "/splash",
      routes: {
        "/splash": (context) => SplashPage(),
        "/home": (context) => HomePage(
              user: ModalRoute.of(context)!.settings.arguments as UserModel,
            ),
        "/login": (context) => LoginPage(),
        "/barcode_scanner": (context) => BarcodeScannerPage()
      },
    );
  }
}
