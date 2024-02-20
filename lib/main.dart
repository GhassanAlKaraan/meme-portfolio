import 'package:flutter/material.dart';
import 'package:meme_portfolio/home_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Ghassan's Portfolio",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
