import 'package:flutter/material.dart';

import 'modules/app/homescreen/views/homescreen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      routes: {
        '/': (context) => homescreen(),
      },
    ),
  );
}
