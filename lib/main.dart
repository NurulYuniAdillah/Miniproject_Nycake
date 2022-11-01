import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nycake/splash.dart';
import 'package:nycake/login.dart';
import 'package:nycake/register.dart';
import 'package:nycake/home.dart';
import 'package:nycake/screen/nycake_detail.dart';
import 'package:nycake/screen/nycake_page.dart';
import 'package:nycake/widget/navbar_widget.dart';

import 'data/cake.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const Splash(),
          routes: {
            'register': (context) => Register(),
            'login': (context) => Login(),
            'home' : (context) => Home(),
          },
        );
      },
    );
  }
}