import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jli_frontend/ui/screens/home/lawyers/l_messages_screen.dart';
import 'package:jli_frontend/ui/widgets/prisoner_profile_card.dart';

import '../../../../models/prisoner_profile.dart';

class LConnectScreen extends StatefulWidget {
  const LConnectScreen({super.key});

  @override
  State<LConnectScreen> createState() => _LConnectScreenState();
}

class _LConnectScreenState extends State<LConnectScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            elevation: 1,
            // color: Colors.white,
            child:Container(
              height: 450,
              width: MediaQuery.sizeOf(context).width*0.95,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Client',style: GoogleFonts.merriweather(fontSize: 18),),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8,8,8,30),
                      child: Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                        elevation: 20,
                        color: Theme.of(context).cardColor.withAlpha(100),
                        child: Container(
                          // color: Colors.black,
                          decoration: BoxDecoration(
                          ),
                          height: 280,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: PrisonerProfileCard(prisoner: PrisonerProfile(name: 'MANOJ KUMAR', age: 38, location: 'New Delhi', languages: 'Hindi, Urdu',ongoing_cases: Case(case_name: 'State vs Poor guy')),),
                          ),),
                      ),
                      ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Spacer(),
                          ElevatedButton(
                              onPressed: (){
                                Navigator.of(context).push(
                                  MaterialPageRoute(builder: (_)=>LMessagesScreen()));
                              },
                              child: Text('Message',style: GoogleFonts.cabin(color: Colors.black),),
                            style: ElevatedButton.styleFrom(
                              elevation: 10,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                              backgroundColor: Theme.of(context).cardColor.withOpacity(0.9)
                            ),

                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    )
    );
  }
}