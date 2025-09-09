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
          color: const Color(0xE65B7BF8), // #5B7BF8 90%
          image: 'assets/images/flutter_logo.png',
          title: 'Flutter (utama):',
          desc: 'Integrasi API, form, kamera, manajemen state',
        ),
        SkillData(
          color: const Color(0xE65B7BF8), // #5B7BF8 90%
          image: 'assets/images/figma_logo.png',
          title: 'Mendesain UI/UX',
          desc: 'aplikasi mobile & web dasar',
        ),
        SkillData(
          color: const Color(0xE65B7BF8), // #5B7BF8 90%
          image: 'assets/images/react_logo.png',
          title: 'Membuat web front-end',
          desc: 'dasar',
        ),
      ],
    );
  }
}