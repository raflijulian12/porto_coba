import 'package:flutter/material.dart';
import 'package:poto_coba_bersama/ziyad/home/widget/ziyad_about_me.dart';
import 'package:poto_coba_bersama/ziyad/home/widget/ziyad_head.dart';
import 'package:poto_coba_bersama/ziyad/home/widget/ziyad_history.dart';
import 'package:poto_coba_bersama/ziyad/home/widget/ziyad_skill.dart';


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
              const ZiyadAboutMe(),
              const SizedBox(height: 16),
              const ZiyadSkill(),
              const SizedBox(height: 16),
              ZiyadHistoryPage(),
              // ...widget lain jika ada...
            ],
          ),
        ),
      ),
    );
  }
}