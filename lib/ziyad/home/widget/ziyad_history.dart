import 'package:flutter/material.dart';
import 'package:poto_coba_bersama/wiget/history.dart';


class ZiyadHistoryPage extends StatelessWidget {
  const ZiyadHistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final educations = [
      EducationData(year: '2014-2019', school: 'SDN Bangka 3'),
      EducationData(year: '2019-2022', school: 'SMPN 6 Bogor'),
      EducationData(year: '2022-Now', school: 'SMK Wikrama Bogor'),
    ];
    final experiences = [
      ExperienceData(
        title: 'Pengalaman PKL',
        details: [
          'Periode: 13 Januari – 26 Juni 2025',
          'Tempat: PT Solusi Aplikasi Integrasi',
          'Posisi: Data Engineer',
          'Aktivitas: Mengonversi hasil ekstraksi menjadi data terstruktur dalam format JSON.',
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
