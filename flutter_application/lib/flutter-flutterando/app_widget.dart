import 'package:flutter/material.dart';
import 'package:namer_app/flutter-flutterando/app_controller.dart';
import 'package:namer_app/flutter-flutterando/home_page.dart';
import 'package:namer_app/flutter-flutterando/login_page.dart';

class AppWidget extends StatelessWidget {
  final String title;

  const AppWidget({required Key key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
            primarySwatch: Colors.red, 
            brightness: AppController.instance.isDartTheme ? Brightness.dark : Brightness.light,
            ),
            initialRoute: '/',
         // home: LoginPage2(),
          routes: {
            '/': (context) => LoginPage2(),
            '/home': (context) => HomePage(),
          }
        );
      },
    );
  }
}
