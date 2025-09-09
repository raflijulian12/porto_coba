import 'package:flutter/material.dart';
import 'package:poto_coba_bersama/wiget/about_me.dart';

class LalaAboutMe extends StatelessWidget {
  const LalaAboutMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AboutMeWidget(
      name: 'Nadila Oktaviana Putri',
      role: 'Pelajar & Frontend Developer',
      description:
          'Seorang pelajar SMK yang sedang mendalami dunia pengembangan perangkat lunak, khususnya di bidang front-end. Saya memiliki ketertarikan untuk terus belajar, berinovasi, dan mengembangkan kemampuan dalam dunia teknologi.',
      stats: const [
        {
          'icon': '⭐',
          'value': '5+',
          'label': 'Project sekolah & pribadi yang sudah dikerjakan'
        },
        {
          'icon': '💡',
          'value': '5+',
          'label': 'Bidang teknologi yang dipelajari (Flutter, React, css, html, dan php)'
        },
        {
          'icon': '⏳',
          'value': '2+',
          'label': 'Tahun belajar & pengalaman di dunia pemrogramman'
        },
      ],
    );
  }
}
