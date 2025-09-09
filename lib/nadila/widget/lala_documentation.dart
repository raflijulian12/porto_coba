import 'package:flutter/material.dart';
import 'package:poto_coba_bersama/wiget/documentation.dart';

class LalaDocumentation extends StatelessWidget {
  const LalaDocumentation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<ProjectDocumentation> projects = [
      ProjectDocumentation(
        image: 'assets/images/absen.png',
        icon: 'assets/images/icon_absen.png',
        title: 'Aplikasi Absen Guru',
        subtitle: 'SMK WIKRAMA BOGOR',
      ),
      ProjectDocumentation(
        image: 'assets/images/resep.png',
        icon: 'assets/images/icon_resep.png',
        title: 'Aplikasi Resep Masakan,',
        subtitle: 'aplikasi pribadi',
      ),
    ];
    return Documentation(projects: projects);
  }
}

