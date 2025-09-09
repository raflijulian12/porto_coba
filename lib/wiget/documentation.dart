import 'package:flutter/material.dart';

class ProjectDocumentation {
  final String image;
  final String icon;
  final String title;
  final String subtitle;
  ProjectDocumentation({
    required this.image,
    required this.icon,
    required this.title,
    required this.subtitle,
  });
}

class Documentation extends StatelessWidget {
  final List<ProjectDocumentation> projects;
  const Documentation({Key? key, required this.projects}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 8.0, bottom: 12),
          child: Text(
            'Hasil Project',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
        ...projects.map((project) => Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: _ProjectCard(project: project),
            )),
      ],
    );
  }
}

class _ProjectCard extends StatelessWidget {
  final ProjectDocumentation project;
  const _ProjectCard({required this.project});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF7ED6DF),
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset(
              project.image,
              height: 120,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Image.asset(project.icon, height: 36),
              const SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      project.title,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      project.subtitle,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
