import 'package:flutter/material.dart';

class HistoryWidget extends StatelessWidget {
  final List<Education> educations;
  final List<Experience> experiences;

  HistoryWidget({required this.educations, required this.experiences});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.school, color: Colors.amber, size: 32),
                  SizedBox(width: 8),
                  Text('Pendidikan', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                ],
              ),
              SizedBox(height: 8),
              ...educations.map((e) => Padding(
                    padding: const EdgeInsets.only(left: 8, bottom: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text('\u2022 ', style: TextStyle(fontSize: 18)),
                            Text(e.year, style: TextStyle(fontWeight: FontWeight.bold)),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 24),
                          child: Text(e.school),
                        ),
                      ],
                    ),
                  )),
              SizedBox(height: 24),
              Row(
                children: [
                  Icon(Icons.workspace_premium, color: Colors.blue, size: 32),
                  SizedBox(width: 8),
                  Text('Pengalaman', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                ],
              ),
              SizedBox(height: 8),
              ...experiences.map((exp) => Padding(
                    padding: const EdgeInsets.only(left: 8, bottom: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('${experiences.indexOf(exp) + 1}.', style: TextStyle(fontWeight: FontWeight.bold)),
                            SizedBox(width: 6),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(exp.title, style: TextStyle(fontWeight: FontWeight.bold)),
                                  ...exp.details.map((d) => Padding(
                                        padding: const EdgeInsets.only(left: 12, top: 2),
                                        child: Text('\u2022 $d', style: TextStyle(fontSize: 14)),
                                      )),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

class Education {
  final String year;
  final String school;

  Education({required this.year, required this.school});
}

class Experience {
  final String title;
  final List<String> details;

  Experience({required this.title, required this.details});
}