import 'package:caspersoft/pages/about.dart';
import 'package:caspersoft/pages/landing.dart';
import 'package:caspersoft/router.dart';
import 'package:flutter/material.dart';
import 'package:seo_renderer/helpers/renderer_state.dart';
import 'package:seo_renderer/helpers/robot_detector_vm.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
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
    return RobotDetector(
      debug: true,
      child: MaterialApp(
        theme: ThemeData(primaryColor: Color(0xff101010),brightness: Brightness.dark),
        initialRoute: '/',
        onGenerateRoute: FRouter.router.generator,
        navigatorObservers: [ seoRouteObserver ],
      ),
    );
  }
}

