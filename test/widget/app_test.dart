import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone_with_provider/src/ui/app/app.dart';
import 'package:flutter_test/flutter_test.dart';

Widget _createApp() => const MaterialApp(
      home: App(),
    );

void main() {
  testWidgets("APP UI 바텀네비게이션 테스트", (testWidget) async {
    await testWidget.pumpWidget(_createApp());

    expect(find.byType(IndexedStack), findsOneWidget);
    expect(find.byType(BottomNavigationBar), findsOneWidget);
    expect(find.byIcon(Icons.home), findsAtLeast(5));
  });
}
