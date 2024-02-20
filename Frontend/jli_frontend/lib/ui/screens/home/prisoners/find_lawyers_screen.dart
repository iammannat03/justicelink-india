
import 'package:flutter/material.dart';
import 'package:jli_frontend/ui/widgets/recommended_lawyer_card.dart';

import '../../../../models/recommended_lawyer.dart';
import 'messages_screen.dart';

class FindLawyersScreen extends StatefulWidget {
  const FindLawyersScreen({super.key});

  @override
  State<FindLawyersScreen> createState() => _FindLawyersScreenState();
}

class _FindLawyersScreenState extends State<FindLawyersScreen> {
  List<RecommendedLawyer> _lawyers = [
    RecommendedLawyer(
        name: "DR. PRIYA SHARMA",
        designation: "Senior Advocate",
        location: "Delhi",
        language: "English, Hindi",
        specialization: Specialization.civilLaw),
    RecommendedLawyer(
        name: "DR. RAHUL DESAI",
        designation: "Attorney",
        location: "Mumbai",
        language: "English, Marathi",
        specialization: Specialization.criminalLaw),
    RecommendedLawyer(
        name: "DR. ANANYA GUPTA",
        designation: "Solicitor",
        location: "Kolkata",
        language: "English, Bengali",
        specialization: Specialization.corporateLaw),
    RecommendedLawyer(
        name: "DR. AMIT PATEL",
        designation: "Advocate",
        location: "Chennai",
        language: "English, Tamil",
        specialization: Specialization.familyLaw),
    RecommendedLawyer(
        name: "DR. SANJAY KUMAR",
        designation: "Notary",
        location: "Bangalore",
        language: "English, Kannada",
        specialization: Specialization.laborAndEmploymentLaw),
    RecommendedLawyer(
        name: "DR. SNEHA SINGH",
        designation: "Legal Advisor",
        location: "Pune",
        language: "English, Marathi",
        specialization: Specialization.taxLaw),
    RecommendedLawyer(
        name: "DR. VIVEK SHARMA",
        designation: "Public Prosecutor",
        location: "Hyderabad",
        language: "English, Telugu",
        specialization: Specialization.iPLaw),
    RecommendedLawyer(
        name: "DR. PREETI PATEL",
        designation: "Government Advocate",
        location: "Ahmedabad",
        language: "English, Gujarati",
        specialization: Specialization.realEstateLaw),
    RecommendedLawyer(
        name: "DR. RAHUL VERMA",
        designation: "Corporate Counsel",
        location: "Gurgaon",
        language: "English, Hindi",
        specialization: Specialization.corporateLaw),
    RecommendedLawyer(
        name: "DR. ANJALI JOSHI",
        designation: "Senior Advocate",
        location: "Jaipur",
        language: "English, Hindi",
        specialization: Specialization.criminalLaw)
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return Builder(
          builder: (context) {
            return GestureDetector(
              onTap: (){
                // setState(() {
                //   YourAlertDialog(lawyer: _lawyers[index],);
                // });
                Navigator.of(context).push(MaterialPageRoute(builder: (_)=>YourAlertDialog(lawyer: _lawyers[index])));

              } ,
                child: RecommendedLawyerCard(lawyer: _lawyers[index], context: context,));
          }
        );
      },
      itemCount: _lawyers.length,
    );
  }
}
class YourAlertDialog extends StatelessWidget {
  final RecommendedLawyer lawyer;

  const YourAlertDialog({Key? key, required this.lawyer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AlertDialog(
        surfaceTintColor: Color.fromARGB(200, 190, 169, 169),
        backgroundColor: Theme.of(context).cardColor,
        elevation: 10,
        // backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        title: Text('Connect with lawyer'),
        content: RecommendedLawyerCard(lawyer: lawyer, context: context,),
        actions: [
          TextButton(
            child: Text('Cancel',style: TextStyle(color: Color.fromARGB(200, 190, 169, 169)),),
            onPressed: () => Navigator.pop(context),
          ),
          ElevatedButton(
              child: SizedBox(
                width: 55,
                child: Row(
                  children: [
                    Text('Connect',style: TextStyle(color: Color.fromARGB(200, 190, 169, 169),)),
                    // Icon(Icons.arrow_forward_ios_rounded,color: Colors.black,)
                  ],
                ),
              ),
              style: ElevatedButton.styleFrom(
                elevation: 5,
                backgroundColor: Theme.of(context).cardColor
              ),
              onPressed: () => {
              } // Handle connect action
          ),
        ],
      ),
    );
  }
}