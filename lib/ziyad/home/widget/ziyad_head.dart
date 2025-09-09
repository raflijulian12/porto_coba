import 'package:flutter/material.dart';
import 'package:poto_coba_bersama/wiget/navbar_headr.dart';

class ZiyadHead extends StatelessWidget implements PreferredSizeWidget {
  const ZiyadHead({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(160);

  @override
  Widget build(BuildContext context) {
    return NavbarHeader(
      imagePath: 'assets/images/cepew.png',
      name: 'Fernanda Ziyad',
      role: 'UI/UX',
    );
  }
}
