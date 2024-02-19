import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class UserTypeButton extends StatelessWidget {
  const UserTypeButton({super.key, required this.user, required this.toPage});

  final String user;
  final Widget toPage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(30, 12, 30, 12),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 237, 235, 235),
          elevation: 10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
            side: const BorderSide(color: Colors.white, width: 1),
          ),
          minimumSize: const Size(55, 55),
        ),
        onPressed: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (_) =>  toPage));
        },
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                user,
                style: GoogleFonts.lato(fontSize: 20, color: Colors.black),
              ),
            ),
            Icon(Icons.arrow_forward_rounded)

          ],
        ),
      ),
    );
  }
}
