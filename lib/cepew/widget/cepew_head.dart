import 'package:flutter/material.dart';
import '../../wiget/navbar_headr.dart';

class CepewHead extends StatelessWidget implements PreferredSizeWidget {
  const CepewHead({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(160);

  @override
  Widget build(BuildContext context) {
    return NavbarHeader(
      imagePath: 'assets/cepew/cepew.png',
      name: 'Cepew',
      role: 'Android Developer',
    );
  }
}
