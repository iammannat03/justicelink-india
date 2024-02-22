import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jli_frontend/models/prisoner_profile.dart';
import 'package:jli_frontend/ui/widgets/documents_card.dart';
import 'package:jli_frontend/ui/widgets/prisoner_profile_card.dart';

class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({super.key});

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: PrisonerProfileCard(prisoner: PrisonerProfile(name: 'MR. MANOJ KUMAR', age: 38, location: 'New Delhi', languages: 'Hindi, Urdu',ongoing_cases: Case(case_name: 'State vs Poor guy')),),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Legal Representation status:',style: GoogleFonts.merriweather(fontSize: 20) ,),
                Icon(Icons.check,color: Colors.green,)
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(8, 0, 8, 20),
          child: Text('Pro-Bono India, Legal Aid Services ',style: TextStyle(fontStyle: FontStyle.italic,decoration: TextDecoration.underline),),
        ),
        // Spacer(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 0),
          child: Text('Previous cases:',style: GoogleFonts.merriweather(fontSize: 20) ,),
        ),
        SizedBox(height:15,),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            elevation: 2,
            child: Container(
              height: 51,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Text('No records found.',style: TextStyle(fontStyle: FontStyle.italic,),),
                ),
              ),
            ),
          ),
        ),
        Spacer(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('My Documents:',textAlign: TextAlign.left,style: GoogleFonts.merriweather(fontSize: 20),),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(8,10,8,50),
          child: DocumentsCard(),
        )
      ],
    );
  }
}
