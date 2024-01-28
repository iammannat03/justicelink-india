import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jli_frontend/ui/signup_page.dart';

import 'choose_lang_page.dart';
import 'login.dart';

class LoginChoose extends StatelessWidget {
  const LoginChoose({super.key});
  // loginWithCode=
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return GestureDetector(
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.primary,
        body: SafeArea(
          // top: true,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'LOGIN',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.juliusSansOne(
                      // fontFamily: '',

                      fontSize: 38.18,
                      letterSpacing: 6,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Container(
                    width: screenSize.width * 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Column(
                          children: [
                            LoginWithCode(),
                            LoginWithFingerprint(),
                          ],
                        ),
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => SignupPage()),
                      );
                    },
                    child: Text(
                      'New user? Click here to <sign up>',
                      style: GoogleFonts.lato(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LoginWithCode extends StatelessWidget {
  const LoginWithCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(30, 12, 30, 12),
      child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (_) => LoginWithAadhaarPage()),
            );
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
                const Color.fromARGB(255, 237, 235, 235)),
            elevation: MaterialStateProperty.all(10.0),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
                side: BorderSide(color: Colors.white, width: 1),
              ),
            ),
            minimumSize: MaterialStateProperty.all(Size(55, 55)),
          ),
          child: Text(
            "Log-in using AADHAR",
            style: GoogleFonts.openSans(
                fontWeight: FontWeight.w700, color: Colors.black),
          )),
    );
  }
}

class LoginWithFingerprint extends StatelessWidget {
  const LoginWithFingerprint({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(30, 12, 30, 12),
      child: ElevatedButton(
          onPressed: () {
// Navigate to the LoginChoose page
            Navigator.of(context).push(
              MaterialPageRoute(builder: (_) => LoginWithFingerprintPage()),
            );
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
                const Color.fromARGB(255, 237, 235, 235)),
            elevation: MaterialStateProperty.all(10.0),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
                side: BorderSide(color: Colors.white, width: 1),
              ),
            ),
            minimumSize: MaterialStateProperty.all(Size(55, 55)),
          ),
          child: Text(
            "Log-in using Fingerprint",
            style: GoogleFonts.openSans(
                fontWeight: FontWeight.w700, color: Colors.black),
          )),
    );
  }
}
