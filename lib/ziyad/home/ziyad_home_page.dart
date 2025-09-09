import 'package:flutter/material.dart';
import 'package:poto_coba_bersama/cepew/widget/cepew_about_me.dart';
import 'package:poto_coba_bersama/cepew/widget/cepew_skill.dart';
import 'package:poto_coba_bersama/cepew/widget/cepew_history.dart';
import 'package:poto_coba_bersama/ziyad/home/widget/ziyad_head.dart';


class ZiyadHomePage extends StatelessWidget {
  const ZiyadHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ZiyadHead(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CepewAboutMe(),
              const SizedBox(height: 16),
              const CepewSkill(),
              const SizedBox(height: 16),
              CepewHistoryPage(),
              // ...widget lain jika ada...
            ],
          ),
        ),
      ),
    );
  }
}