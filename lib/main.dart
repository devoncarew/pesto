// Copyright 2019 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import 'src/pesto.dart';

void main() => runApp(PestoApp());

class PestoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pesto',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: PestoHome(),
    );
  }
}
