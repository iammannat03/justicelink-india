import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../models/upcoming_events.dart';

class UpcomingEventsCard extends StatefulWidget {
  const UpcomingEventsCard({super.key, required List<UpcomingEvent> upcoming_events_list}) : _upcomingEvents = upcoming_events_list;

  final List<UpcomingEvent> _upcomingEvents;

  @override
  State<UpcomingEventsCard> createState() => _UpcomingEventsCardState();
}

class _UpcomingEventsCardState extends State<UpcomingEventsCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
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
              child: ListView.builder(itemCount: widget._upcomingEvents.length,itemBuilder: (BuildContext context, int index){
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
                          Text(widget._upcomingEvents[index].eventName,style: GoogleFonts.merriweather(fontSize: 20),),
                          // Spacer(),
                          Row(
                            children: [
                              Spacer(),
                              Text(widget._upcomingEvents[index].dateAndTime,style: TextStyle(fontSize: 13),),
                            ],
                          ),
                          Text(widget._upcomingEvents[index].eventType,style: TextStyle(color: Theme.of(context).colorScheme.secondary),),
                          Text(widget._upcomingEvents[index].eventDescription),
                          Text('Court room no. ${widget._upcomingEvents[index].roomNo}'),
                          Text('Additonal info: ${widget._upcomingEvents[index].additionalNotes!}'),
                          Container(
                            child: Text(widget._upcomingEvents[index].status,style: TextStyle(fontStyle: FontStyle.italic,decoration: TextDecoration.underline),),
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
    );
  }
}
