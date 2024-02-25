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
      elevation: 1,
      color: Theme.of(context).cardColor,
      child: SizedBox(
        // height: 150,
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
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        // border:Border.all(style: BorderStyle.solid,width: 2),
                        image: DecorationImage(
                            image: AssetImage("assets/prisoner_profile_picture.png"),
                            colorFilter: ColorFilter.linearToSrgbGamma(),

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
                      Text(widget.prisoner.name,style: GoogleFonts.juliusSansOne(fontSize: 20,fontWeight:FontWeight.bold)),
                      Text("Age : ${widget.prisoner.age.toString()}",style: GoogleFonts.merriweather(color:const Color.fromARGB(200, 192, 169, 169),fontWeight:FontWeight.bold),),
                      Text(widget.prisoner.location,style: GoogleFonts.merriweather(color:const Color.fromARGB(200, 192, 169, 169),fontWeight:FontWeight.bold),),
                      Text(widget.prisoner.languages,style: GoogleFonts.merriweather(color:const Color.fromARGB(200, 192, 169, 169),fontStyle: FontStyle.italic,fontWeight:FontWeight.bold),),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12.0),
                        child: Text(widget.prisoner.natureOfOffense,style: GoogleFonts.merriweather(color: Colors.black,fontStyle: FontStyle.italic,fontWeight:FontWeight.bold,decoration:TextDecoration.underline),),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 0,vertical: 2),
                        child: GestureDetector(
                          onTap: (){
                            print('pressed file');
                          },
                          child: Card(
                            elevation: 8,
                            child: Container(
                              height: 30,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 2),
                                child: Center(child: Text('Charge_sheet.pdf',style: TextStyle(color: Color.fromARGB(200, 192, 169, 169),fontSize: 15),)),
                              ),
                              decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.05),
                                // shape:
                              ),
                            ),
                          ),
                        ),
                      ),
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
