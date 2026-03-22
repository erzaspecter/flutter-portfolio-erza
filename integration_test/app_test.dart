import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:flutter_portfolio_erza/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('Portfolio app displays all main content', (WidgetTester tester) async {
    // Jalankan aplikasi
    app.main();
    await tester.pumpAndSettle();

    // Test semua teks yang ada
    expect(find.text('Hi, I\'m'), findsOneWidget);
    expect(find.text('Erza Specter'), findsOneWidget);
    expect(find.text('QA Automation Engineer'), findsOneWidget);
    expect(find.text('5+ years experience in software testing and automation.'), findsOneWidget);
    expect(find.text('About Me'), findsOneWidget);
    expect(find.text('Projects'), findsOneWidget);
    expect(find.text('Contact Me'), findsOneWidget);
  });

  testWidgets('Portfolio app has interactive elements', (WidgetTester tester) async {
    app.main();
    await tester.pumpAndSettle();

    // Cek apakah ada tombol atau elemen yang bisa diklik
    // Sesuaikan dengan struktur aplikasi Anda
    
    // Contoh jika ada tombol Projects
    final projectsButton = find.text('Projects');
    expect(projectsButton, findsOneWidget);
    
    // Cek apakah ada icon atau elemen sosial media
    // Sesuaikan dengan yang ada di aplikasi Anda
  });
}