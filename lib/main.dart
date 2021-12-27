import 'package:flutter/material.dart';
import 'package:flutter_queryaddressor/pages/home_page.dart';
import 'package:flutter_queryaddressor/pages/login_page.dart';
import 'package:flutter_queryaddressor/utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp(Key? key) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => MyHomePage(),
        MyRoutes.loginRoute: (context) => LoginPage()
      },
    );
  }
}
