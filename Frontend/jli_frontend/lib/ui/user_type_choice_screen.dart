import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        )
    );
  }
}
