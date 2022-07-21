import 'package:caspersoft/pages/about.dart';
import 'package:caspersoft/pages/landing.dart';
import 'package:caspersoft/router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    FRouter.setupRouter();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Color(0xff101010),brightness: Brightness.dark),
      initialRoute: '/',
      onGenerateRoute: FRouter.router.generator,
    );
  }
}

