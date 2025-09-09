import 'package:flutter/material.dart';

class SkillData {
  final Color color;
  final String image;
  final String title;
  final String desc;

  SkillData({
    required this.color,
    required this.image,
    required this.title,
    required this.desc,
  });
}

class SkillWidget extends StatelessWidget {
  final String title;
  final List<SkillData> skills;

  const SkillWidget({
    Key? key,
    required this.title,
    required this.skills,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0, bottom: 12),
          child: Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
        GridView.count(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: 1,
          padding: const EdgeInsets.all(8),
          children: skills.map((skill) => _SkillBox(skill: skill)).toList(),
        ),
      ],
    );
  }
}

class _SkillBox extends StatelessWidget {
  final SkillData skill;
  const _SkillBox({required this.skill});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: skill.color,
        borderRadius: BorderRadius.circular(24),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 56,
            height: 56,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Center(
              child: Image.asset(skill.image, width: 36, height: 36),
            ),
          ),
          const SizedBox(height: 12),
          Text(
            skill.title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 12,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 6),
          Expanded(
            child: Text(
              skill.desc,
              style: const TextStyle(fontSize: 10),
              softWrap: true,
              overflow: TextOverflow.visible,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}