import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../models/message.dart';

class MessageCard extends StatelessWidget {
  const MessageCard({super.key, required this.message, required this.user});

  final Message message;
  final String user;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 8),
      child: Row(
        mainAxisAlignment: user=='prisoner'?MainAxisAlignment.end:MainAxisAlignment.start,
        children: [
          Card(

            child: Container(

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: user=='prisoner'?Color.fromARGB(221, 208, 192, 192):Color.fromARGB(
                    200, 249, 242, 242)
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(message.message, style: GoogleFonts.lato(fontSize: 15),softWrap: true,),
              ),
              // color: user=='prisoner'?Colors.blueGrey: Colors.grey,
            ),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
          ),
        ],
      ),
    );
  }
}
