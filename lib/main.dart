import 'package:flutter/material.dart';
import 'package:sms/screen/home.dart';
import 'package:sms/widgets/appbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(brightness: Brightness.dark),
      home: const MyHomePage(),
    );
  }
}
