import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_portfolio_erza/main.dart' as app;

void main() {
  testWidgets('Test app structure', (WidgetTester tester) async {
    // Jalankan aplikasi
    app.main();
    await tester.pumpAndSettle();
    
    // Print semua teks
    print('\n=== ALL TEXT IN APP ===');
    final textFinder = find.byType(Text);
    final allTexts = textFinder.evaluate();
    
    for (var element in allTexts) {
      final text = element.widget as Text;
      if (text.data != null && text.data!.isNotEmpty) {
        print('Teks: "${text.data}"');
      }
    }
    
    // Cek judul utama
    expect(find.text('Erza Specter'), findsOneWidget);
  });
}