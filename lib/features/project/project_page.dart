import 'package:flutter/material.dart';
import '../../core/constants/app_colors.dart';
import '../../core/widgets/section_title.dart';

class ProjectPage extends StatelessWidget {
  const ProjectPage({super.key});

  final List<Map<String, String>> projects = const [
    {
      'title': 'Playwright Automation Framework',
      'description':
          'Scalable UI automation framework with Page Object Model, used across 28+ projects.',
      'tech': 'Playwright, TypeScript, Cucumber',
    },
    {
      'title': 'CI/CD Pipeline with GitHub Actions',
      'description':
          'Automated test execution with cron jobs and parallel testing.',
      'tech': 'GitHub Actions, Cron Jobs, Parallel Execution',
    },
    {
      'title': 'API Testing Suite',
      'description':
          'Comprehensive API testing using Playwright APIRequestContext.',
      'tech': 'Playwright, REST API, JSON',
    },
    {
      'title': 'Mobile Test Automation',
      'description':
          'End-to-end mobile testing from APK/IPA to Play Store.',
      'tech': 'Appium, Android, iOS',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Projects'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SectionTitle(
              title: 'Featured Projects',
              subtitle: 'Some of my best work in test automation',
            ),
            const SizedBox(height: 16),
            ...projects.map((project) => _buildProjectCard(project)),
          ],
        ),
      ),
    );
  }

  Widget _buildProjectCard(Map<String, String> project) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              project['title']!,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              project['description']!,
              style: TextStyle(
                color: Colors.grey[600],
                height: 1.4,
              ),
            ),
            const SizedBox(height: 12),
            Wrap(
              spacing: 8,
              children: project['tech']!.split(', ').map((tech) {
                return Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.primary.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    tech,
                    style: TextStyle(
                      fontSize: 11,
                      color: AppColors.primary,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}