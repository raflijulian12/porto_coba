import 'package:flutter/material.dart';
import '../../wiget/about_me.dart';

class CepewAboutMe extends StatelessWidget {
  const CepewAboutMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AboutMeWidget(
      name: 'Muhamad Rafli Julian',
      role: 'Pelajar & Mobile Developer',
      description:
          'Seorang pelajar SMK yang sedang mendalami dunia pengembangan aplikasi mobile, khususnya di bidang Flutter. Saya memiliki ketertarikan untuk terus belajar, berinovasi, dan mengembangkan kemampuan dalam dunia teknologi.',
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
