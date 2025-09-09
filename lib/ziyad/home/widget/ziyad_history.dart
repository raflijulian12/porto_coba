import 'package:flutter/material.dart';
import 'package:poto_coba_bersama/wiget/history.dart';


class CepewHistoryPage extends StatelessWidget {
  const CepewHistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final educations = [
      EducationData(year: '2014-2019', school: 'SDN CEPEW 01'),
      EducationData(year: '2019-2022', school: 'SMP CEPEW JAYA'),
      EducationData(year: '2022-2025', school: 'SMK CEPEW TEKNOLOGI'),
    ];
    final experiences = [
      ExperienceData(
        title: 'Pengalaman PKL',
        details: [
          'Periode: 10 Januari – 10 Juni 2024',
          'Tempat: PT Cepew Digital Nusantara',
          'Posisi: Mobile Developer',
          'Aktivitas: Mengembangkan aplikasi mobile berbasis Flutter',
        ],
      ),
      ExperienceData(
        title: 'Proyek yang Pernah Dibuat',
        details: [
          'Aplikasi Absensi Siswa (Flutter)',
          'Aplikasi Catatan Harian',
          'Desain UI/UX aplikasi toko online di Figma',
        ],
      ),
    ];
    return HistoryWidget(
      educations: educations,
      experiences: experiences,
    );
  }
}
