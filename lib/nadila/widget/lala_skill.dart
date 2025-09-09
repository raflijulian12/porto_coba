import 'package:flutter/material.dart';
import 'package:poto_coba_bersama/wiget/skill.dart';

class CepewSkill extends StatelessWidget {
  const CepewSkill({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SkillWidget(
      title: 'Keahlian selain Flutter',
      skills: [
        SkillData(
          color: Colors.blue[200]!,
          image: 'assets/images/react_logo.png',
          title: 'Membuat web front-end',
          desc: 'dasar',
        ),
        SkillData(
          color: Colors.blue[300]!,
          image: 'assets/images/laravel_logo.png',
          title: 'Membuat API & sistem',
          desc: 'back-end sederhana',
        ),
      ],
    );
  }
}