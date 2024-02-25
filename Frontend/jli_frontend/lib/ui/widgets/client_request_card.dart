import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';

class ClientRequestCard extends StatelessWidget {
  const ClientRequestCard({super.key});
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Container(
        // height: 100,
        width: MediaQuery.sizeOf(context).width*0.95,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Client Request:',style: GoogleFonts.merriweather(fontSize: 20,fontWeight: FontWeight.w300,fontStyle: FontStyle.italic),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text('Mr. Manoj Kumar',style: GoogleFonts.lato(fontSize: 20,fontStyle:FontStyle.italic,fontWeight:FontWeight.w300),),
                  Spacer(),
                  IconButton(onPressed: (){}, icon: Icon(Icons.check,color: Colors.green,)),
                  IconButton(onPressed: (){}, icon: Icon(Ionicons.close,color: Colors.red,)),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
