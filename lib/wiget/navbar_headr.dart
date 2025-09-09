import 'package:flutter/material.dart';

class NavbarHeader extends StatelessWidget implements PreferredSizeWidget {
  final String imagePath;
  final String name;
  final String role;

  const NavbarHeader({
    Key? key,
    required this.imagePath,
    required this.name,
    required this.role,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(160);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Gambar dari parameter di belakang background utama, posisi kiri bawah
        Positioned(
          left: 16,
          bottom: 0,
          child: Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        // Background utama
        Container(
          width: double.infinity,
          height: preferredSize.height,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/head.png'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(24),
              bottomRight: Radius.circular(24),
            ),
          ),
        ),
        // Nama dan role
        Positioned(
          left: 130,
          top: 50,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                role,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
