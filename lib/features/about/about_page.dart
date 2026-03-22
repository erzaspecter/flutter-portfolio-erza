import 'package:flutter/material.dart';
import '../../core/constants/app_strings.dart';
import '../../core/widgets/section_title.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.aboutTitle),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SectionTitle(title: 'Who Am I?'),
            Text(
              AppStrings.aboutDescription,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 24),

            const SectionTitle(title: 'Skills'),
            const SizedBox(height: 16),
            Wrap(
              spacing: 12,
              runSpacing: 12,
              children: [
                _buildSkillChip('Playwright'),
                _buildSkillChip('TypeScript'),
                _buildSkillChip('Flutter'),
                _buildSkillChip('Java'),
                _buildSkillChip('CI/CD'),
                _buildSkillChip('API Testing'),
                _buildSkillChip('GitHub Actions'),
                _buildSkillChip('PostgreSQL'),
              ],
            ),
            const SizedBox(height: 24),

            const SectionTitle(title: 'Experience'),
            const SizedBox(height: 16),
            _buildExperienceItem(
              'QA Automation Engineer',
              'MODENA · 2024 - Present',
              'Built automation framework from scratch using Playwright',
            ),
            _buildExperienceItem(
              'QA Engineer',
              'LG CNS · 2024',
              'Core Tax Administration System (CTAS)',
            ),
            _buildExperienceItem(
              'Technical QA Engineer',
              'Adira Finance · 2020 - 2023',
              'Enterprise system testing and automation',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSkillChip(String skill) {
    return Chip(
      label: Text(skill),
      backgroundColor: Colors.blue.shade50,
    );
  }

  Widget _buildExperienceItem(String title, String period, String description) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          Text(
            period,
            style: TextStyle(
              color: Colors.grey[600],
              fontSize: 12,
            ),
          ),
          const SizedBox(height: 4),
          Text(description),
          const Divider(height: 16),
        ],
      ),
    );
  }
}