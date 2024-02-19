import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jli_frontend/ui/screens/home/general/general_home_screen.dart';
import 'package:jli_frontend/ui/screens/home/lawyers/lawyers_home_screen.dart';
import '../screens/home/prisoners/prisoner_home_screen.dart';

class LoginToHomeScreenButton extends StatelessWidget {
  const LoginToHomeScreenButton({super.key, required this.user});
  final String user;

  @override
  Widget build(BuildContext context) {
    Widget selectedHomeScreen = PrisonerHomeScreen();

    if(user == 'lawyer'){
      selectedHomeScreen = LawyerHomeScreen();
    } else if (user == 'general'){
      selectedHomeScreen = GeneralHomeScreen();
    }
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(30, 12, 30, 12),

      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=>selectedHomeScreen), (route) => false);
          // loginUser() validation goes here ;
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 0, 0, 0)),
          elevation: MaterialStateProperty.all(10.0),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
              side: const BorderSide(color: Colors.black, width: 1),
            ),
          ),
          minimumSize: MaterialStateProperty.all(const Size(55, 55)),
        ),
        child: Text("Log in",
          style: GoogleFonts.openSans(),
        )
      ),

    );
  }
}
