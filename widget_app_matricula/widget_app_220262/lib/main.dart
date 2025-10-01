import 'package:flutter/material.dart';
import 'package:widget_app_220262/theme/app_theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor:5).getTheme(),
      home: Scaffold(
        appBar: AppBar(title: const Text('Widget App - 220262')),
        body: Center(
          child: FilledButton(onPressed: (){}, child: Text('Click me!')),
        ),
      ),
    );
  }
}
