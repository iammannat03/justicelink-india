import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jli_frontend/ui/screens/signup_screen.dart';
import '../utils/login_with_aadhar_button.dart';
import '../utils/login_with_fingerprint_button.dart';

class LoginChooseScreen extends StatelessWidget {
  const LoginChooseScreen({super.key});
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
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
                    fontSize: 38.18,
                    letterSpacing: 6,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                SizedBox(
                  width: screenSize.width * 1,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          LoginWithAadharButton(),
                          LoginWithFingerprintButton(),
                        ],
                      ),
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => const SignupScreen(user: '',)),
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
    );
  }
}




