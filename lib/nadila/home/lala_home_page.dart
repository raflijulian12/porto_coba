import 'package:flutter/material.dart';
import '../widget/lala_head.dart';
import '../widget/lala_about_me.dart';
import '../widget/lala_skill.dart';
import '../widget/lala_history.dart';
import '../../wiget/navbar_bottom.dart';
import '../../routes/app_routes.dart';

class NadilaHomePage extends StatelessWidget {
  const NadilaHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const LalaHead(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              LalaAboutMe(),
              SizedBox(height: 16),
              CepewSkill(),
              SizedBox(height: 16),
              LalaHistoryPage(),
            ],
          ),
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
        currentIndex: 0,
        onTap: (index) {
          if (index == 1) {
            Navigator.pushReplacementNamed(context, AppRoutes.lalaSertificate);
          } else if (index == 2) {
            Navigator.pushReplacementNamed(context, '/lala_profile');
          }
        },
      ),
    );
  }
}
