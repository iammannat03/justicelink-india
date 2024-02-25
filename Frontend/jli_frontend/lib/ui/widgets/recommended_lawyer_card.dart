import 'package:flutter/material.dart';
import 'package:jli_frontend/models/recommended_lawyer.dart';

class RecommendedLawyerCard extends StatefulWidget {
  const RecommendedLawyerCard({super.key, required this.lawyer, required this.context});
  final RecommendedLawyer lawyer;
  final BuildContext context;

  @override
  State<RecommendedLawyerCard> createState() => _RecommendedLawyerCardState();
}

class _RecommendedLawyerCardState extends State<RecommendedLawyerCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation:1,
      color: Theme.of(context).cardColor,
      child: Container(
        padding: EdgeInsets.all(8),
        height: 150,
        width: 350,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Theme.of(context).cardColor
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
                  image: AssetImage("assets/some_lawyer_icon.png"),
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
                  Text(widget.lawyer.name),
                  Text(widget.lawyer.designation,style: TextStyle(color: Theme.of(context).colorScheme.secondary),),
                  Text(widget.lawyer.location),
                  Text(widget.lawyer.language,style: TextStyle(fontStyle: FontStyle.italic),),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Container(

                      height: 20,
                      color: Color.fromARGB(176, 190, 169, 169),
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Text(correspondingTitle[widget.lawyer.specialization]!),
                    ),
                  )
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
