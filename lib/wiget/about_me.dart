import 'package:flutter/material.dart';

class AboutMeWidget extends StatelessWidget {
  final String name;
  final String role;
  final String description;
  final List<Map<String, String>> stats;

  const AboutMeWidget({
    Key? key,
    required this.name,
    required this.role,
    required this.description,
    required this.stats,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Tidak ada foto profil
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 8),
                      Text(
                        'About Me',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 8),
                      RichText(
                        text: TextSpan(
                          children: [
                            const TextSpan(
                              text: 'Hallo, ',
                              style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            TextSpan(
                              text: 'saya ',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                            TextSpan(
                              text: name,
                              style: TextStyle(
                                color: Colors.pinkAccent,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            // Deskripsi
            Text(
              description,
              style: const TextStyle(fontSize: 14, color: Colors.black87),
            ),
            const SizedBox(height: 20),
            // Statistik
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: stats.map((stat) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 2),
                child: Row(
                  children: [
                    Text(
                      stat['icon'] ?? '',
                      style: const TextStyle(fontSize: 18, color: Colors.amber, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      stat['value'] ?? '',
                      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.amber),
                    ),
                    const SizedBox(width: 6),
                    Expanded(
                      child: Text(
                        stat['label'] ?? '',
                        style: const TextStyle(fontSize: 14, color: Colors.black87),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              )).toList(),
            ),
          ],
        ),
      ),
    );
  }
}