import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';

import '../../models/message.dart';

class MessageCard extends StatelessWidget {
  const MessageCard({super.key, required this.message, required this.user, required this.side_ofuser});

  final Message message;
  final String user;
  final String side_ofuser;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 8),
      child: Row(
        mainAxisAlignment: side_ofuser=='prisoner'?(user=='prisoner'?MainAxisAlignment.end:MainAxisAlignment.start):(user=='prisoner'?MainAxisAlignment.start:MainAxisAlignment.end),
        children: [
          Card(

            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),

            child: Container(

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: side_ofuser=='prisoner'?(user=='prisoner'?const Color.fromARGB(221, 208, 192, 192):const Color.fromARGB(
    200, 249, 242, 242)):(user=='lawyer'?const Color.fromARGB(221, 208, 192, 192):const Color.fromARGB(
                    200, 249, 242, 242))
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: message.files==null?Text(message.message, style: GoogleFonts.lato(fontSize: 15),softWrap: true,):Container(
                  child: Row(
                    children: [
                      const Icon(Icons.file_present_rounded,color: Colors.black38,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          Text(message.files!.first.name),
                          Text('${((message.files!.first.size)/1000).toString()} kb')
                        ],),
                      ),
                      const Icon(Icons.file_download_rounded,color: Colors.black38,)
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
