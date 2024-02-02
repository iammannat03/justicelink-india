import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../screens/login_choose_screen.dart';

class ChooseLanguageButton extends StatelessWidget {
  const ChooseLanguageButton({super.key, required this.lang});

  final String lang;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(30, 12, 30, 12),
      child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (_) => const LoginChooseScreen()),
            );
          },
          style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 237, 235, 235),
              elevation: 10,
              shape:
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
                side: const BorderSide(color: Colors.white, width: 1),
              ),
              minimumSize: const Size(55, 55),
    ),
    child: Text(
    lang,
    style: GoogleFonts.lato(fontSize: 20, color: Colors.black
    )
    ,
    )
    )
    ,
    );
  }
}