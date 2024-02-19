import 'package:flutter/material.dart';
import 'package:jli_frontend/models/recommended_lawyer.dart';

class RecommendedLawyerCard extends StatelessWidget {
  const RecommendedLawyerCard({super.key, required this.lawyer});
  final RecommendedLawyer lawyer;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        print('pressed');
      },
      child: Card(
        elevation: 3,
        color: Color.fromARGB(200, 255, 255, 255),
        child: Container(
          padding: EdgeInsets.all(8),
          height: 150,
          width: 350,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color.fromARGB(200, 255, 255, 255)
            // shape: RoundedRectangleBorder(borderRadius: 20)
          ),
          child: Row(
            children: [
              Container(
                width: 120,
                height: 120,
                // color: Colors.green,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage("assets/lawyer_image_3.png"),
                    fit: BoxFit.cover
                  )

                ),


              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(lawyer.name),
                    Text(lawyer.designation,style: TextStyle(color: Theme.of(context).colorScheme.secondary),),
                    Text(lawyer.location),
                    Text(lawyer.language,style: TextStyle(fontStyle: FontStyle.italic),),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Container(

                        height: 20,
                        color: Color.fromARGB(200, 200, 200, 200),
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Text(correspondingTitle[lawyer.specialization]!),
                      ),
                    )
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
