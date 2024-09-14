import 'package:flutter/material.dart';

main() {
  runApp(AppWidget(title: 'Flutter',));
}

class AppWidget extends StatelessWidget {
  final String title;

  const AppWidget({required Key key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'Flutterando',
          textDirection: TextDirection.ltr,
          style: TextStyle(color: Colors.white, fontSize: 20.0),
        ),
      ),
    );
  }
}
