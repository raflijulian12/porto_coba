import 'package:flutter/material.dart';
import '../../wiget/skill.dart';

class CepewSkill extends StatelessWidget {
  const CepewSkill({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SkillWidget(
      title: 'Keahlian selain Flutter',
      skills: [
        SkillData(
          color: Colors.pink[100]!,
          image: 'assets/flutter.png',
          title: 'Flutter (utama):',
          desc: 'Membuat aplikasi Android\nIntegrasi API, form, kamera, hingga manajemen state',
        ),
        SkillData(
          color: Colors.pink[200]!,
          image: 'assets/figma.png',
          title: 'Mendesain UI/UX',
          desc: 'aplikasi mobile & web dasar',
        ),
        SkillData(
          color: Colors.blue[200]!,
          image: 'assets/react.png',
          title: 'Membuat web front-end',
          desc: 'dasar',
        ),
        SkillData(
          color: Colors.blue[300]!,
          image: 'assets/laravel.png',
          title: 'Membuat API & sistem',
          desc: 'back-end sederhana',
        ),
        SkillData(
          color: Colors.blue[300]!,
          image: 'assets/laravel.png',
          title: 'Membuat API & sistem',
          desc: 'sasadsadadadadadad',
        ),
      ],
    );
  }
}