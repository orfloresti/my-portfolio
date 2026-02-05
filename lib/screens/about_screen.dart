import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Me'),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xFF569CD6)),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Who am I?',
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'I am an engineer focused on technological innovation, driven by a desire to understand how systems work and to develop solutions that combine efficiency, functionality, and value for users.',
              style: TextStyle(fontSize: 16, height: 1.6),
            ),
            const SizedBox(height: 16),
            const Text(
              'I began my journey with a bachelor’s degree in electronics, which gave me a strong foundation in problem-solving and systems thinking. Over time, I discovered my passion for software development — a perfect blend of creativity, logic, and the opportunity to build solutions that truly help people.',
              style: TextStyle(fontSize: 16, height: 1.6),
            ),
            const SizedBox(height: 16),
            const Text(
              'I’m self-taught in most of the technologies I use today and constantly exploring new tools and frameworks to stay sharp and inspired. I enjoy sharing what I learn — whether through mentoring, collaborating on projects, or simply exchanging ideas with other curious minds.',
              style: TextStyle(fontSize: 16, height: 1.6),
            ),
            const SizedBox(height: 32),
            Text(
              'My Tech Stack',
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: const [
                _SkillChip(label: 'React.js'),
                _SkillChip(label: 'Angular'),
                _SkillChip(label: 'TypeScript'),
                _SkillChip(label: 'Node.js'),
                _SkillChip(label: 'AWS'),
                _SkillChip(label: 'Python'),
                _SkillChip(label: 'PostgreSQL'),
                _SkillChip(label: 'Flutter'),
              ],
            ),
            const SizedBox(height: 32),
            Text(
              'Outside of Coding',
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'When I’m not coding, you’ll probably find me reading about new tech trends, playing chess, or spending time with my family.',
              style: TextStyle(fontSize: 16, height: 1.6),
            ),
          ],
        ),
      ),
    );
  }
}

class _SkillChip extends StatelessWidget {
  final String label;

  const _SkillChip({required this.label});

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(label),
      backgroundColor: Colors.transparent,
      side: const BorderSide(color: Color(0xFF569CD6)),
      labelStyle: const TextStyle(color: Color(0xFF569CD6)),
    );
  }
}
