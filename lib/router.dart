import 'package:caspersoft/pages/about.dart';
import 'package:caspersoft/pages/blog.dart';
import 'package:caspersoft/pages/contact.dart';
import 'package:caspersoft/pages/landing.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

class FRouter {
  static final FluroRouter router = FluroRouter();

  static final Handler _landingPageHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, dynamic> params) =>
          const Landing());

  static final Handler _aboutPageHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, dynamic> params) =>
          const About());
  static final Handler _contactPageHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, dynamic> params) =>
          const Contact());
  static final Handler _blogPageHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, dynamic> params) =>
          const Blog());

  static void setupRouter(){
    router.define('/', handler: _landingPageHandler);
    router.define('/About', handler: _aboutPageHandler);
    router.define('/Contact', handler: _contactPageHandler);
    router.define('/Blog', handler: _blogPageHandler);
  }

}
