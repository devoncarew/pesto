// Copyright 2016 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pesto/main.dart';

void main() {
  final TestWidgetsFlutterBinding binding =
      TestWidgetsFlutterBinding.ensureInitialized();
  if (binding is LiveTestWidgetsFlutterBinding)
    binding.framePolicy = LiveTestWidgetsFlutterBindingFramePolicy.fullyLive;

  testWidgets('Pesto appbar heroics', (WidgetTester tester) async {
    await tester.pumpWidget(PestoApp());

    await tester.tap(find.text('Roasted Chicken'));
    await tester.pumpAndSettle();

    await tester.drag(find.text('Roasted Chicken'), const Offset(0.0, -300.0));
    await tester.pumpAndSettle();

    Navigator.pop(find.byType(Scaffold).evaluate().single);
    await tester.pumpAndSettle();
  });

  testWidgets('Pesto can be scrolled all the way down',
      (WidgetTester tester) async {
    await tester.pumpWidget(PestoApp());

    await tester.fling(
        find.text('Roasted Chicken'), const Offset(0.0, -200.0), 10000.0);
    await tester.pumpAndSettle(); // start and finish fling
    expect(find.text('Spanakopita'), findsOneWidget);
  });
}
