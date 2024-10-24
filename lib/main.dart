import 'package:flutter/material.dart';
import 'package:test_widgets/pages/book_info_page.dart';
import 'package:test_widgets/pages/chapter_page.dart';
import 'package:test_widgets/pages/custom_buttons_page.dart';
import 'package:test_widgets/pages/display_status_page.dart';
import 'package:test_widgets/pages/filters_page.dart';
import 'package:test_widgets/pages/ministry_page.dart';
import 'package:test_widgets/pages/notes_page.dart';
import 'package:test_widgets/widgets_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      home: const DisplayStatusPage(),
    );
  }
}
