import 'package:flutter/material.dart';
import 'package:test_widgets/widgets/indago_bottom_navigation.dart';
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
      home: const IndagoBottomNavigation(),
    );
  }
}
