import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
import 'package:jli_frontend/ui/screens/home/prisoners/find_lawyers_screen.dart';
import 'package:jli_frontend/ui/screens/home/prisoners/home_screen.dart';
import 'package:jli_frontend/ui/screens/home/prisoners/user_profile_screen.dart';

import 'messages_screen.dart';

class PrisonerHomeScreen extends StatefulWidget {
  const PrisonerHomeScreen({super.key});

  @override
  State<PrisonerHomeScreen> createState() => _PrisonerHomeScreenState();
}

class _PrisonerHomeScreenState extends State<PrisonerHomeScreen> {
  List<Widget> pages_body = [
    const HomeScreen(),
    const FindLawyersScreen(),
    const MessagesScreen(),
    const UserProfileScreen()
  ];
  Widget currentPage = const HomeScreen();
  int currentIndex = 0;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
      currentPage = pages_body[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: currentIndex == 2
          ? AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Container(
              width: 50,
              height: 50,
              // color: Colors.green,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  // border: Border.all(color: Colors.black38, width: 2),
                  image: DecorationImage(
                      image: AssetImage("assets/some_lawyer_icon.png"),
                      fit: BoxFit.cover)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'DR. RAHUL DESAI',
                style: GoogleFonts.lato(
                    fontSize: 20, fontWeight: FontWeight.w300),
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {}, icon: Icon(Ionicons.videocam,color: Color.fromARGB(200, 190, 169, 169))),
          IconButton(onPressed: () {}, icon: Icon(Ionicons.options,color: Color.fromARGB(200, 190, 169, 169),))
          // SizedBox(width: 20,),
        ],
      )
          : AppBar(
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
                  backgroundColor:
                  const Color.fromARGB(176, 190, 169, 169),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  )),
              child: Text(
                "English",
                style: GoogleFonts.juliusSansOne(
                    fontSize: 15, fontWeight: FontWeight.w600,color:Theme.of(context).cardColor),
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
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_rounded,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.near_me_rounded,
              ),
              label: "Find lawyers"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.message_rounded,
              ),
              label: "Messages"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: "Profile"),
        ],
      ),
    );
  }
}
