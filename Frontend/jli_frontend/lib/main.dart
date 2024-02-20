import 'package:flutter/material.dart';
import 'package:jli_frontend/ui/preloader.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: "JusticeLink India",
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(

          seedColor: const Color.fromARGB(255, 216, 180, 160),
          primary: const Color.fromARGB(255, 216, 180, 160),
          // secondary: ,
          background: Colors.white,
        ),
        // textTheme:
      ),
      debugShowCheckedModeBanner: false,
      home: const JusticeAppMaterialPage(),
    );
  }
}
