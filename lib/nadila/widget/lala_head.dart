import 'package:flutter/material.dart';
import 'package:poto_coba_bersama/wiget/navbar_headr.dart';

class LalaHead extends StatelessWidget implements PreferredSizeWidget {
  const LalaHead({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(160);

  @override
  Widget build(BuildContext context) {
    return NavbarHeader(
      imagePath: 'assets/nadila/nadila.png',
      name: 'Nadila',
      role: 'Frotnend Developer',
    );
  }
}
