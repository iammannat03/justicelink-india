import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jli_frontend/models/prisoner_profile.dart';
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
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: PrisonerProfileCard(prisoner: PrisonerProfile(name: 'MR. MANOJ KUMAR', age: 38, location: 'New Delhi', languages: 'Hindi, Urdu',ongoing_cases: Case(case_name: 'State vs Poor guy')),),
        ),
        Text('Current Cases', style: GoogleFonts.openSans(fontSize: 20,fontStyle: FontStyle.italic,),),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Placeholder(
            fallbackWidth: 390,
            fallbackHeight: 250,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Previous Cases', style: GoogleFonts.openSans(fontSize: 20,fontStyle: FontStyle.italic),),
        ),
        SizedBox(
          height: 70,
        ),
        Text('No records found.',style: TextStyle(fontStyle: FontStyle.italic),)
      ],
    );
  }
}
