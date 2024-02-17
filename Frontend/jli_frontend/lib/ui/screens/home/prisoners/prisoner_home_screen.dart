import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jli_frontend/ui/screens/home/prisoners/connect_screen.dart';
import 'package:jli_frontend/ui/screens/home/prisoners/home_screen.dart';
import 'package:jli_frontend/ui/screens/home/prisoners/user_profile_screen.dart';

import 'messages_screen.dart';

class FinalHomeScreen extends StatefulWidget {
  const FinalHomeScreen({super.key});

  @override
  State<FinalHomeScreen> createState() => _FinalHomeScreenState();
}

class _FinalHomeScreenState extends State<FinalHomeScreen> {

  List<Widget> pages_body = [const HomeScreen(),const ConnectScreen(),const MessagesPage(),const UserProfileScreen()];
  Widget currentPage = const HomeScreen();
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
            icon: const Icon(Icons.menu_rounded, color: Colors.black),
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
          BottomNavigationBarItem(icon: Icon(Icons.message_rounded,),label: "Connect"),
          BottomNavigationBarItem(icon: Icon(Icons.person,),label: "Profile"),
        ],

      ),
    );
  }
}
