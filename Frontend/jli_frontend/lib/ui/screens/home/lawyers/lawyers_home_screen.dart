import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'l_connect_screen.dart';
import 'l_home_screen.dart';
import 'l_messages_screen.dart';
import 'l_user_profile_screen.dart';

class LawyerHomeScreen extends StatefulWidget {
  const LawyerHomeScreen({super.key});

  @override
  State<LawyerHomeScreen> createState() => _LawyerHomeScreenState();
}

class _LawyerHomeScreenState extends State<LawyerHomeScreen> {List<Widget> pages_body = [LHomeScreen(), LConnectScreen(), LMessagesScreen(), LUserProfileScreen()];
Widget currentPage = LHomeScreen();
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
        BottomNavigationBarItem(icon: Icon(Icons.near_me_rounded,),label: "New Client"),
        BottomNavigationBarItem(icon: Icon(Icons.message_rounded,),label: "Messages"),
        BottomNavigationBarItem(icon: Icon(Icons.person,),label: "Profile"),
      ],
    ),

  );
}
}
