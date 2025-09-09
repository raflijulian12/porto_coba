import 'package:flutter/material.dart';
import 'package:poto_coba_bersama/nadila/widget/lala_documentation.dart';
import 'package:poto_coba_bersama/nadila/widget/lala_sertificate.dart';
import 'package:poto_coba_bersama/routes/app_routes.dart';
import '../../wiget/navbar_bottom.dart';

class LalaSertificateAndDocumentation extends StatelessWidget {
  const LalaSertificateAndDocumentation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sertificate'),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LalaSertificateGrid(),
            SizedBox(height: 32),
            LalaDocumentation(),
          ],
        ),
      ),
      bottomNavigationBar: NavbarBottom(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.badge),
            label: 'Sertificate',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: 1,
        onTap: (index) {
          if (index == 0) {
            Navigator.pushReplacementNamed(context, AppRoutes.lalaHome);
          } else if (index == 2) {
            Navigator.pushReplacementNamed(context, AppRoutes.lalaProfile);
          }
        },
      ),
    );
  }
}
