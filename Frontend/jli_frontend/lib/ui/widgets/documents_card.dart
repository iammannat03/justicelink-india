import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DocumentsCard extends StatelessWidget {
  const DocumentsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: MediaQuery.sizeOf(context).width*0.95,
        height: 200,
        child: Container(
          // color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    SizedBox(width: 15,),
                    Icon(Icons.add,size: 20,),
                    Text('New file'),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text('Storage : 0.2/20 GB',style: TextStyle(fontStyle: FontStyle.italic),),
                    )
                  ],
                ),
              ),
              // Spacer(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Icon(Icons.picture_as_pdf,size: 60,color: Colors.grey,),
                        Text('Affidavit_1.pdf')
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.picture_as_pdf,size: 60,color: Colors.grey,),
                        Text('Aadhar.pdf')
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.picture_as_pdf,size: 60,color: Colors.grey,),
                        Text('Birth_cf.pdf')
                      ],
                    ),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
