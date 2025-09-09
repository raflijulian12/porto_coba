import 'package:flutter/material.dart';
import '../ziyad/home/ziyad_home_page.dart';
import '../cepew/home/cepew_home_page.dart';

class AppRoutes {
  static const String ziyadHome = '/ziyad_home';
  static const String cepewHome = '/cepew_home';

  static Map<String, WidgetBuilder> routes = {
    ziyadHome: (context) => const ZiyadHomePage(),
    cepewHome: (context) => const CepewHomePage(),
  };
}