import 'package:caspersoft/pages/about.dart';
import 'package:caspersoft/pages/landing.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    themeMode: ThemeMode.dark,
      home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const Landing();
  }
}
