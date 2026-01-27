import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import '../widgets/social_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Future<void> _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 48.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hi, I’m',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  fontSize: 18,
                  fontFamily: 'FiraCode', // Monospace feel for "Hi"
                ),
              ),
              const SizedBox(height: 16),
              Text(
                'Orlando Flores Teomitzi.',
                style: TextStyle(
                  color: const Color(0xFFccd6f6),
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'I build things for the web.',
                style: TextStyle(
                  color: const Color(0xFF8892b0),
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 24),
              Text(
                'I am an engineer focused on technological innovation, driven by a desire to understand how systems work and to develop solutions that combine efficiency, functionality, and value for users.',
                style: TextStyle(
                  color: const Color(0xFF8892b0),
                  fontSize: 18,
                  height: 1.5,
                ),
              ),
              const SizedBox(height: 48),
              Wrap(
                spacing: 16,
                runSpacing: 16,
                children: [
                  SocialButton(
                    icon: FontAwesomeIcons.github,
                    label: 'GitHub',
                    onPressed: () => _launchUrl('https://github.com/orfloresti'),
                  ),
                  SocialButton(
                    icon: FontAwesomeIcons.linkedinIn,
                    label: 'LinkedIn',
                    onPressed: () => _launchUrl('https://www.linkedin.com/in/orfloresti/?locale=en_US'),
                  ),
                  SocialButton(
                    icon: FontAwesomeIcons.twitter,
                    label: 'Twitter',
                    onPressed: () => _launchUrl('https://x.com/orfloresti'),
                  ),
                  SocialButton(
                    icon: FontAwesomeIcons.blog,
                    label: 'Blog',
                    onPressed: () => _launchUrl('https://orfloresti.dev/posts'),
                  ),
                ],
              ),
              const SizedBox(height: 48),
              OutlinedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/about');
                },
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Theme.of(context).colorScheme.primary),
                  padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text(
                  'More About Me',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
