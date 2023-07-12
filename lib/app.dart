import 'package:flutter/material.dart';

import 'features/images/presentation/screen/all_image_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cat App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const AllImageScreen(title: 'Flutter Demo Home Page'),
    );
  }
}
