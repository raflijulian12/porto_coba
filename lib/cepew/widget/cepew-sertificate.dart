import 'package:flutter/material.dart';

class CepewSertificateGrid extends StatelessWidget {
  const CepewSertificateGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> sertifImages = [
      'assets/cepew/dicoding1.png',
      'assets/cepew/dicoding2.png',
      'assets/cepew/unity.png',
      'assets/cepew/igenia.png',
      'assets/cepew/monsom.png',
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
            color: Colors.blue[100],
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
