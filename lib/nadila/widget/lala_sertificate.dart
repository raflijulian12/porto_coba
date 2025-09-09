import 'package:flutter/material.dart';

class LalaSertificateGrid extends StatelessWidget {
  const LalaSertificateGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> sertifImages = [
      'assets/nadila/dicoding_nadila.jpg',
    ];
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: sertifImages.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        childAspectRatio: 1.4,
      ),
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            color: const Color(0xE65B7BF8), // #5B7BF8 90%
            borderRadius: BorderRadius.circular(24),
          ),
          padding: const EdgeInsets.all(8),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset(
              sertifImages[index],
              fit: BoxFit.cover,
            ),
          ),
        );
      },
    );
  }
}
