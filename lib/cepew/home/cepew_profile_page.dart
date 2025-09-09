import 'package:flutter/material.dart';
import 'package:poto_coba_bersama/wiget/navbar_bottom.dart';
import '../../wiget/profile.dart';
import '../widget/cepew_profile.dart';

class CepewProfilePage extends StatelessWidget {
  const CepewProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final profile = CepewProfileData.defaultProfile;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Profile(
          name: profile.name,
          job: profile.job,
          address: profile.address,
          birthPlaceDate: profile.birthPlaceDate,
          gender: profile.gender,
          nationality: profile.nationality,
          status: profile.status,
          phone: profile.phone,
          email: profile.email,
          linkIn: profile.linkIn,
          github: profile.github,
          imageAsset: profile.imageAsset,
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
        currentIndex: 2,
        onTap: (index) {
          if (index == 0) {
            Navigator.pushReplacementNamed(context, '/cepew_home');
          } else if (index == 1) {
            Navigator.pushReplacementNamed(context, '/cepew_sertificate');
          }
        },
      ),
    );
  }
}
