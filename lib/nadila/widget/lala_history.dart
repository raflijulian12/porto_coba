import 'package:flutter/material.dart';
import 'package:poto_coba_bersama/wiget/history.dart';


class LalaHistoryPage extends StatelessWidget {
  const LalaHistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final educations = [
      EducationData(year: '2014-2019', school: 'SDN SELAAWI'),
      EducationData(year: '2019-2022', school: 'SMPN 1 CARINGIN'),
      EducationData(year: '2022-2025', school: 'SMK WIKRAMA BOGOR'),
    ];
    final experiences = [
      ExperienceData(
        title: 'Pengalaman PKL',
        details: [
          'Periode: 13 Januari – 13 Juni 2024',
          'Tempat: PT Wanteknologi',
          'Posisi: Fullstack Developer (Laravel)',
          'Aktivitas: Membuat website menggunakan Laravel dan Tailwind CSS',
        ],
      ),
      ExperienceData(
        title: 'Proyek yang Pernah Dibuat',
        details: [
          'Limar Property (Laravel)',
          'Montecarlo(Laravel)',
          'Intern Base (Laravel)',
        ],
      ),
    ];
    return HistoryWidget(
      educations: educations,
      experiences: experiences,
    );
  }
}
