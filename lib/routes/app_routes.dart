import 'package:flutter/material.dart';
import '../ziyad/home/ziyad_home_page.dart';
import '../cepew/home/cepew_home_page.dart';
import '../cepew/home/cepew_sertificate_and_documentation.dart';
import '../cepew/home/cepew_profile_page.dart';
import '../nadila/home/lala_home_page.dart';
import '../nadila/home/lala_sertificate_and_documentation.dart';
import '../nadila/home/lala_profile_page.dart';

class AppRoutes {
  static const String ziyadHome = '/ziyad_home';
  static const String cepewHome = '/cepew_home';
  static const String cepewSertificate = '/cepew_sertificate';
  static const String cepewProfile = '/cepew_profile';
  static const String lalaHome = '/lala_home';
  static const String lalaSertificate = '/lala_sertificate';
  static const String lalaProfile = '/lala_profile';

  static Map<String, WidgetBuilder> routes = {
    ziyadHome: (context) => const ZiyadHomePage(),
    cepewHome: (context) => const CepewHomePage(),
    cepewSertificate: (context) => const CepewSertificateAndDocumentation(),
    cepewProfile: (context) => const CepewProfilePage(),
    lalaHome: (context) => const NadilaHomePage(),
    lalaSertificate: (context) => const LalaSertificateAndDocumentation(),
    lalaProfile: (context) => const LalaProfilePage(),
  };
}