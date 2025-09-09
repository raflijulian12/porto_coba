import 'package:flutter/material.dart';
import 'package:poto_coba_bersama/wiget/skill.dart';

class CepewSkill extends StatelessWidget {
  const CepewSkill({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SkillWidget(
      title: 'Keahlian',
      skills: [
        SkillData(
          color: const Color(0xE65B7BF8), // #5B7BF8 90%
          image: 'assets/images/react_logo.png',
          title: 'Membuat web front-end',
          desc: 'dasar',
        ),
        SkillData(
          color: const Color(0xE65B7BF8), // #5B7BF8 90%
          image: 'assets/images/laravel_logo.png',
          title: 'Membuat API & sistem',
          desc: 'back-end sederhana',
        ),
      ],
    );
  }
}