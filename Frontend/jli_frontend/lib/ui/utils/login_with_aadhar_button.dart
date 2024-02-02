import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../screens/login_with_aadhar_screen.dart';

class LoginWithAadharButton extends StatelessWidget {
  const LoginWithAadharButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(30, 12, 30, 12),
      child: SizedBox(
        width: 350,
        child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => const LoginWithAadhaarScreen()),
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
              "Log-in using AADHAR",
              style: GoogleFonts.openSans(
                  fontWeight: FontWeight.w700, color: Colors.black),
            )),
      ),
    );
  }
}