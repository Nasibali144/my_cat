import 'package:flutter/material.dart';
import 'features/images/presentation/screens/all_image_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cat App',
      theme: ThemeData.light(useMaterial3: true),
      darkTheme: ThemeData.dark(useMaterial3: true),
      themeMode: ThemeMode.dark,
      home: const AllImageScreen(title: 'Flutter Demo Home Page'),
    );
  }
}
