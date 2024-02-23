import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';

class ScheduleVideoCallScreen extends StatefulWidget {
  const ScheduleVideoCallScreen({super.key});

  @override
  State<ScheduleVideoCallScreen> createState() =>
      _ScheduleVideoCallScreenState();
}

class _ScheduleVideoCallScreenState extends State<ScheduleVideoCallScreen> {
  DateTime _dateTime = DateTime.now();
  TimeOfDay _time = TimeOfDay.now();

  void _showDateTimePicker() {
    showDatePicker(
            context: context,
            firstDate: DateTime.now(),
            lastDate: DateTime(2030))
        .then((value) {
      setState(() {
        _dateTime = value!;
      });
    });
  }

  void _showTimePicker() {
    showTimePicker(context: context, initialTime: TimeOfDay.now())
        .then((value) {
      setState(() {
        _time = value!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.white,
      body: Center(
        child: Card(
          child: Container(
            height: MediaQuery.sizeOf(context).height * 0.8,
            width: MediaQuery.sizeOf(context).width * 0.9,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Schedule a video call',
                    style: GoogleFonts.lato(
                        color: Colors.black,
                        fontSize: 20,
                        fontStyle: FontStyle.italic),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Date  :  ',
                        style: GoogleFonts.lato(
                            color: Colors.black,
                            fontSize: 17,
                            fontStyle: FontStyle.italic),
                      ),
                      // Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "${_dateTime.day.toString()}/",
                              style: TextStyle(fontSize: 17),
                            ),
                            Text(
                              "${_dateTime.month.toString()}/",
                              style: TextStyle(fontSize: 17),
                            ),
                            Text(
                              _dateTime.year.toString(),
                              style: TextStyle(fontSize: 17),
                            )
                          ],
                        ),
                      ),
                      IconButton(
                          onPressed: _showDateTimePicker,
                          icon: Icon(Ionicons.calendar))
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Time  :  ',
                        style: GoogleFonts.lato(
                            color: Colors.black,
                            fontSize: 17,
                            fontStyle: FontStyle.italic),
                      ),
                      // Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          _time.format(context),
                          style: GoogleFonts.lato(fontSize: 17),
                        ),
                      ),
                      IconButton(
                          onPressed: _showTimePicker, icon: Icon(Ionicons.time))
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Duration  :  ',
                        style: GoogleFonts.lato(
                            color: Colors.black,
                            fontSize: 17,
                            fontStyle: FontStyle.italic),
                      ),
                      // Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          '30 mins',
                          style: GoogleFonts.lato(fontSize: 17),
                        ),
                      ),
                      SizedBox(
                        width: 75,
                      )
                      // IconButton(onPressed: _showDateTimePicker, icon: Icon(Ionicons.timer))
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Purpose  : ',
                          style: GoogleFonts.lato(
                              fontSize: 17, fontStyle: FontStyle.italic),
                        ),
                      ),
                      Container(
                        width: MediaQuery.sizeOf(context).width * 0.5,
                        child: TextFormField(

                          cursorColor: Colors.black,
                          decoration: InputDecoration(
                              // border: InputBorder.none
                              ),
                          style: TextStyle(fontStyle: FontStyle.italic),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: const Icon(Ionicons.pencil),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text('Cancel',style: TextStyle(color: Colors.black38),),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                    behavior: SnackBarBehavior.floating,
                                    backgroundColor: Colors.black38,
                                    elevation: 3,
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                    content: Text("You'll be notified on the status of your request",style: TextStyle(color: Colors.white70),))
                            );
                          });
                          Navigator.of(context).pop();

                        },
                        child: Text(
                          'Confirm',
                          style: TextStyle(color: Colors.white70),
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black38,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
