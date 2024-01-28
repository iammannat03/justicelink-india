import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jli_frontend/components/logos.dart';

import 'choose_lang_page.dart';

class JusticeAppMaterialPage extends StatefulWidget {
  const JusticeAppMaterialPage({super.key});

  @override
  State<JusticeAppMaterialPage> createState() {
    return _JusticeAppMaterialPageState();
  }
}

class _JusticeAppMaterialPageState extends State<JusticeAppMaterialPage> {
  late final scaffoldKey = GlobalKey<ScaffoldState>();
  double _opacity = 0.0; // Initial opacity value

  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        _opacity = 1.0;
      });
    });

    Future.delayed(const Duration(seconds: 3), () {
      // Navigate to the new page
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
            builder: (_) =>
                ChooseLangPage()), // Replace with your new page widget
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Theme.of(context).colorScheme.primary,
        body: SafeArea(
          top: true,
          child: Container(
            margin: const EdgeInsets.only(
              bottom: 80,
            ),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AnimatedOpacity(
                    opacity: _opacity,
                    duration: const Duration(seconds: 1),
                    curve: Curves.easeInOut,
                    child: jliLogo,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
