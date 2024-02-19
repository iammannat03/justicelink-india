import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jli_frontend/ui/screens/signup/signup_screen.dart';
import 'package:jli_frontend/ui/user_type_button.dart';

class UserTypeChoiceScreen extends StatelessWidget {
  const UserTypeChoiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
        appBar: AppBar(
          forceMaterialTransparency: true,
          backgroundColor: Theme.of(context).colorScheme.primary,
          toolbarHeight: screenSize.height * 0.06,
          centerTitle: false,
          title: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'JusticeLink',
                  style: GoogleFonts.italiana(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'INDIA',
                  style: GoogleFonts.juliusSansOne(
                    color: Colors.black,
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          ),
        ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: MediaQuery.sizeOf(context).width,
            child: const Column(
              children: [
                UserTypeButton(user: 'Under-trial prisoner', toPage: SignupScreen(user: 'prisoner'),),
                UserTypeButton(user: 'Lawyer', toPage: SignupScreen(user: 'lawyer'),),
                UserTypeButton(user: 'General citizen', toPage: SignupScreen(user: 'general'),),
              ],
            ),
          )
        ],
      ),
    );
  }
}
