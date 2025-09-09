import 'package:flutter/material.dart';
import '../../wiget/navbar_headr.dart';

class NadilaHomePage extends StatelessWidget {
  const NadilaHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NavbarHeader(
        imagePath: 'assets/images/nadila.jpg', // ganti sesuai asset foto nadila
        name: 'Nadila',
        role: 'Android Developer',
      ),
      body: Center(
        child: Text('Selamat datang di halaman Nadila!'),
      ),
    );
  }
}
