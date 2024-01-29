import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jli_frontend/ui/connect_page.dart';
import 'package:jli_frontend/ui/new_home_page.dart';
import 'package:jli_frontend/ui/profile_page.dart';
import 'package:jli_frontend/ui/user_profile_page.dart';

import 'messages_page.dart';

class FinalHomePage extends StatefulWidget {
  const FinalHomePage({super.key});

  @override
  State<FinalHomePage> createState() => _FinalHomePageState();
}

class _FinalHomePageState extends State<FinalHomePage> {

  List<Widget> pages_body = [NewHomePage(),ConnectPage(),MessagesPage(),UserProfilePage()];
  Widget currentPage = NewHomePage();
  int currentIndex = 0;
  void onTap(int index){
    setState(() {
      currentIndex = index;
      currentPage = pages_body[index];
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        // bottomOpacity: 100,
        title: Column(
          children: [
            Text(
              'JusticeLink',
              style: GoogleFonts.italiana(
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'INDIA',
              style: GoogleFonts.juliusSansOne(
                color: Colors.black,
                fontSize: 10,
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 128, 105, 90),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  )),
              child: Text(
                "English",
                style: GoogleFonts.juliusSansOne(
                    fontSize: 15, fontWeight: FontWeight.w600),
              ),
            ),
          ),
          const SizedBox(
            width: 7,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu_rounded, color: Colors.black),
          ),
          const SizedBox(
            width: 20,
          ),
        ],
      ),
      body: currentPage,
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        currentIndex: currentIndex,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.black,
        onTap: onTap,

        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_rounded,),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.near_me_rounded,),label: "Nearby Aid"),
          BottomNavigationBarItem(icon: Icon(Icons.message_rounded,),label: "Messages"),
          BottomNavigationBarItem(icon: Icon(Icons.person,),label: "Profile"),
        ],

      ),
    );
  }
}
