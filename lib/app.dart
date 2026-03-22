import 'package:flutter/material.dart';
import 'core/themes/app_theme.dart';
import 'features/about/about_page.dart';
import 'features/contact/contact_page.dart';
import 'features/home/home_page.dart';
import 'features/project/project_page.dart';
import 'providers/theme_provider.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Portfolio',
      theme: AppTheme.lightTheme,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/about': (context) => const AboutPage(),
        '/contact': (context) => const ContactPage(),
        '/project': (context) => const ProjectPage(),
      },
    );
  }
}