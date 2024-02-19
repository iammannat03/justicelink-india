import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:jli_frontend/models/upcoming_events.dart';
import 'package:jli_frontend/ui/screens/home/prisoners/legal_chat_bot_screen.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<UpcomingEvent> _upcomingEvents = [
    UpcomingEvent(dateAndTime: 'February 22, 2024, 10:00am', eventName: 'Bail Hearing', eventType: 'Court hearing', roomNo: 'Room 3C', status: 'scheduled', eventDescription: 'Scheduled for bail hearing',additionalNotes: 'Defendant should be present in person'),
    UpcomingEvent(dateAndTime: 'February 25, 2024, 9:00am', eventName: 'Visitation Request', eventType: 'Visitation', roomNo: 'N/A', status: 'awaiting approval', eventDescription: 'Visitor request awaiting approval',additionalNotes: ''),
    // UpcomingEvent(dateAndTime: 'March 3, 2024, 2:00pm', eventName: 'Transfer Request', eventType: 'Transfer', roomNo: 'N/A', status: 'ActionRequired', eventDescription: 'Requesting transfer to another facility',additionalNotes: 'whatever'),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButton: ,
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: double.infinity,
              height: 300,
              // height: 300,
              decoration: const BoxDecoration(color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                    child: Text("How to use?",style: GoogleFonts.lato(fontSize: 25),),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(7),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          FinalHomeScreenCard(),
                          FinalHomeScreenCard(),
                          FinalHomeScreenCard(),
                          FinalHomeScreenCard(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: (){

                      },
                      child: Card(
                        color: Theme.of(context).cardColor,
                        // color: Colors.white,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        elevation:1,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        child: SizedBox(
                          width: 182,
                          height: 188,
                          child: Column(
                            children: [

                              Padding(
                                padding: const EdgeInsets.fromLTRB(5, 10, 5, 0),
                                child: Text(
                                  "Learn about your rights ",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.merriweather(
                                      fontSize: 20, fontWeight: FontWeight.bold),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Container(
                                height: 100,
                                width: 180,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/card-image-5.png"),
                                        fit: BoxFit.cover)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (_)=>LegalChatBotScreen()));
                      },
                      child: Card(

                        color: Theme.of(context).cardColor,
                        // color: Colors.white,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        elevation: 1,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        child: SizedBox(
                          width: 200,
                          height: 188,
                          child: Column(
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 100,
                                    width: 200,
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/actual.jpg"),
                                            // fit: BoxFit.cover
                                        ),
                                    ),
                                  ),
                              ),
                              Text(
                                "Legal Help Centre",
                                style: GoogleFonts.merriweather(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "powered by Gemini",
                                style: GoogleFonts.lato(
                                    color: Colors.black,
                                    fontSize: 13,
                                    fontStyle: FontStyle.italic),
                                textAlign: TextAlign.end,
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),

              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Card(
              color: Theme.of(context).cardColor,
              elevation: 1,
              child: Container(

                // height: 1000,
                width: 390,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Upcoming events',style: GoogleFonts.juliusSansOne(fontWeight: FontWeight.bold,fontSize: 25),),
                    ),
                    SizedBox(
                      height: 500,
                      child: ListView.builder(itemCount: _upcomingEvents.length,itemBuilder: (BuildContext context, int index){
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color.fromARGB(176, 190, 169, 169),
                              borderRadius: BorderRadius.circular(10)
                            ),
                            width: 390,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(_upcomingEvents[index].eventName,style: GoogleFonts.merriweather(fontSize: 20),),
                                  // Spacer(),
                                  Row(
                                    children: [
                                      Spacer(),
                                      Text(_upcomingEvents[index].dateAndTime,style: TextStyle(fontSize: 13),),
                                    ],
                                  ),
                                  Text(_upcomingEvents[index].eventType,style: TextStyle(color: Theme.of(context).colorScheme.secondary),),
                                  Text(_upcomingEvents[index].eventDescription),
                                  Text('Court room no. ${_upcomingEvents[index].roomNo}'),
                                  Text('Additonal info: ${_upcomingEvents[index].additionalNotes!}'),
                                  Container(
                                    child: Text(_upcomingEvents[index].status),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,)
          ],
        ),
      ),
    );
  }
}


//useless
class HomeScreenCard extends StatelessWidget {
  const HomeScreenCard({super.key, required this.image, required this.onImageWidget});

  final AssetImage image;
  final Widget onImageWidget;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      color: Colors.transparent,
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(35)),
      // Set card color to transparent
      child: Stack(
        children: [
          Container(
            height: 250,
            width: 155,
            decoration: BoxDecoration(
              image: DecorationImage(image: image, fit: BoxFit.cover),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
              child: Container(
                color: Colors.black.withOpacity(0.3),
              ),
            ),
          ),
          onImageWidget,
        ],
      ),
    );
  }
}

class FinalHomeScreenCard extends StatelessWidget {
  const FinalHomeScreenCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      // color: Colors.black26,
      child: Container(
        height: 200,
        width: 175,
        decoration: BoxDecoration(color: Color.fromARGB(218, 232, 226, 226),borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}
