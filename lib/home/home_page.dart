import 'package:flutter/material.dart';
import '../ziyad/home/ziyad_home_page.dart';
import '../cepew/home/cepew_home_page.dart';
import '../nadila/home/nadila_home_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ZiyadHomePage()),
                );
              },
              child: const Text('Halaman Ziyad'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CepewHomePage()),
                );
              },
              child: const Text('Halaman Cepew'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const NadilaHomePage()),
                );
              },
              child: const Text('Halaman Nadila'),
            ),
          ],
        ),
      ),
    );
  }
}
