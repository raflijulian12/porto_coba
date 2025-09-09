import 'package:flutter/material.dart';
import '../widget/cepew-sertificate.dart';
import '../widget/cepew-documentation.dart';
import '../../wiget/navbar_bottom.dart';

class CepewSertificateAndDocumentation extends StatelessWidget {
  const CepewSertificateAndDocumentation({Key? key}) : super(key: key);

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
            CepewSertificateGrid(),
            SizedBox(height: 32),
            CepewDocumentation(),
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
            Navigator.pushReplacementNamed(context, '/cepew_home');
          } else if (index == 2) {
            Navigator.pushReplacementNamed(context, '/cepew_profile');
          }
        },
      ),
    );
  }
}
