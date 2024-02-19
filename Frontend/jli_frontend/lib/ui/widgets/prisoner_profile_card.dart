import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jli_frontend/models/prisoner_profile.dart';

class PrisonerProfileCard extends StatefulWidget {
  const PrisonerProfileCard({super.key, required this.prisoner});

  final PrisonerProfile prisoner;

  @override
  State<PrisonerProfileCard> createState() => _PrisonerProfileCardState();
}

class _PrisonerProfileCardState extends State<PrisonerProfileCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      color: Theme.of(context).cardColor,
      child: Container(
        height: 150,
        width: 390,
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 120,
                    height: 120,
                    // color: Colors.green,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border:Border.all(style: BorderStyle.solid,width: 2),
                        image: DecorationImage(
                            image: AssetImage("assets/user_final.png"),

                            fit: BoxFit.cover
                        )
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(widget.prisoner.name,style: GoogleFonts.juliusSansOne(fontSize: 20),),
                      Text("Age : ${widget.prisoner.age.toString()}",style: GoogleFonts.merriweather(),),
                      Text("Resident of ${widget.prisoner.location}",style: GoogleFonts.merriweather(),),
                      Text(widget.prisoner.languages,style: GoogleFonts.merriweather(fontStyle: FontStyle.italic),)
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
