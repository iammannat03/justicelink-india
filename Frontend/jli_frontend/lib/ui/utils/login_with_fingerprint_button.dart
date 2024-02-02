import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../screens/login_with_fingerprint_screen.dart';

class LoginWithFingerprintButton extends StatelessWidget {
  const LoginWithFingerprintButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(30, 12, 30, 12),
      child: SizedBox(
        width: 350,
        child: ElevatedButton(
            onPressed: () {
              // Navigate to the LoginChoose page
              Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => const LoginWithFingerprintScreen()),
              );
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                  const Color.fromARGB(255, 237, 235, 235)),
              elevation: MaterialStateProperty.all(10.0),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                  side: const BorderSide(color: Colors.white, width: 1),
                ),
              ),
              minimumSize: MaterialStateProperty.all(const Size(55, 55)),
            ),
            child: Text(
              "Log-in using Fingerprint",
              style: GoogleFonts.openSans(
                  fontWeight: FontWeight.w700, color: Colors.black),
            )),
      ),
    );
  }
}