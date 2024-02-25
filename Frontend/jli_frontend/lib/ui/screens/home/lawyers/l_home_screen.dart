import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
import 'package:jli_frontend/ui/widgets/upcoming_events_card.dart';

import '../../../../models/upcoming_events.dart';



class LHomeScreen extends StatefulWidget {
  const LHomeScreen({super.key});

  @override
  State<LHomeScreen> createState() => _LHomeScreenState();
}

class _LHomeScreenState extends State<LHomeScreen> {

  final List<UpcomingEvent> _upcomingEvents = [
    const UpcomingEvent(dateAndTime: 'February 22, 2024, 10:00am',
        eventName: 'Bail Hearing',
        eventType: 'Court hearing',
        roomNo: 'Room 3C',
        status: 'scheduled',
        eventDescription: 'Scheduled for bail hearing',
        additionalNotes: 'Defendant should be present in person'),
    const UpcomingEvent(dateAndTime: 'February 25, 2024, 9:00am',
        eventName: 'Visitation Request',
        eventType: 'Visitation',
        roomNo: 'N/A',
        status: 'awaiting approval',
        eventDescription: 'Visitor request awaiting approval',
        additionalNotes: ''),

  ];
  bool showClientCard = true; // upar bhej dena in actual app
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            showClientCard ? ClientReqCard(checkmark: IconButton(onPressed: () {
              print('pressed checkmark');
              setState(() {
                showClientCard=false;
              });
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  backgroundColor: Theme.of(context).cardColor,
                  duration: const Duration(milliseconds: 2000),
                  behavior: SnackBarBehavior.floating,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                  ),
                  content: Text('Client accepted !',style: GoogleFonts.lato(color: const Color.fromARGB(255, 190, 169, 169),fontSize: 18,fontStyle: FontStyle.italic),),

                ),
              );

            }, icon: const Icon(Icons.check, color: Colors.green,)),
                close: IconButton(onPressed: () {
                  print('closed request');
                  setState(() {
                    showClientCard=false;
                  });
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      backgroundColor: Theme.of(context).cardColor,
                      behavior: SnackBarBehavior.floating,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                      ),
                      content: Text('Client rejected !',style: GoogleFonts.lato(color: const Color.fromARGB(255, 190, 169, 169),fontSize: 18,fontStyle: FontStyle.italic),),
                      action: SnackBarAction(
                        textColor: Colors.red.withAlpha(150),
                        label: 'Undo', onPressed: () {
                        setState(() {
                          showClientCard=true;
                        });
                      },),
                    ),
                  );
                },
                    icon: const Icon(Ionicons.close, color: Colors.red,)),
                ) : const SizedBox(height: 1),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      print('pressed document card');
                    },
                    child: Stack(
                      children: [
                        Container(
                          child: BackdropFilter(filter: ImageFilter.blur(
                              sigmaY: 0, sigmaX: 0), child: Container(
                            color: Colors.black.withOpacity(0.01),),),
                          height: 180,
                          width: 189,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                  'assets/files_and_folders_fade.png'),
                              fit: BoxFit.cover,
                            ),

                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Saved Documents', style: TextStyle(
                              fontSize: 17, fontStyle: FontStyle.italic),),
                        )
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      print('pressed resources');
                    },
                    child: Stack(
                      children: [
                        Container(
                          child: BackdropFilter(filter: ImageFilter.blur(
                              sigmaY: 0, sigmaX: 0), child: Container(
                            color: Colors.black.withOpacity(0.01),),),
                          height: 180,
                          width: 189,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                  'assets/files_and_folders_fade.png'),
                              fit: BoxFit.cover,
                            ),

                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Resources', style: TextStyle(
                              fontSize: 17, fontStyle: FontStyle.italic),),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            // SizedBox(height: 180,width: 390,),
            UpcomingEventsCard(upcoming_events_list: _upcomingEvents)

          ],
        ),
      ),
    );
  }
}

class ClientReqCard extends StatelessWidget {
  const ClientReqCard(
      {super.key, required this.checkmark, required this.close});

  final IconButton checkmark;
  final IconButton close;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Container(
        // height: 100,
        width: MediaQuery
            .sizeOf(context)
            .width * 0.95,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Client Request:', style: GoogleFonts.merriweather(
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                  fontStyle: FontStyle.italic),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text('Mr. Manoj Kumar', style: GoogleFonts.lato(fontSize: 20,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w300),),
                  const Spacer(),
                  checkmark,
                  close
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}