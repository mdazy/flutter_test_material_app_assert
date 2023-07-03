import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_builder_assert/information.dart';

void main() {
  group('FilesetInformation', () {
    testWidgets('works', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Information(version: '1.0.0'),
        ),
      );
    });
  });

  testWidgets('asserts', (tester) async {
    await tester.pumpWidget(
      const Column(
        children: [
          MaterialApp(
            home: Information(version: '1.0.0'),
          ),
        ],
      ),
    );
  });
}
