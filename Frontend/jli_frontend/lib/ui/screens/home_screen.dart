import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      floatingActionButton: SizedBox(
        height: 70,
        width: 100,
        child: FloatingActionButton(
          backgroundColor: const Color.fromARGB(254, 182, 161, 149),
          onPressed: () {},
          child: const Padding(
            padding: EdgeInsets.all(5.0),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Icon(
                  Icons.calendar_today_rounded,
                  color: Colors.white,
                ),
                Text(
                  "Events",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: double.infinity,
              height: 300,
              // height: 300,
              decoration: const BoxDecoration(color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                    child: Text("How to use?",style: GoogleFonts.lato(fontSize: 25),),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(7),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          FinalHomeScreenCard(),
                          FinalHomeScreenCard(),
                          FinalHomeScreenCard(),
                          FinalHomeScreenCard(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Card(
                      color: const Color(0xFFD8B4A0),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      child: SizedBox(
                        width: 182,
                        height: 188,
                        child: Column(
                          children: [

                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text(
                                "Govt Registration and Services",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.lato(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: 100,
                              width: 180,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/card-image-5.png"),
                                      fit: BoxFit.cover)),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      color: const Color(0xffa0806c),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      child: SizedBox(
                        width: 200,
                        height: 188,
                        child: Column(
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 100,
                                  width: 200,
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/card-image-6.png"),
                                          fit: BoxFit.cover)),
                                )),
                            Text(
                              "Legal Help Centre",
                              style: GoogleFonts.lato(
                                  color: Colors.white,
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "powered by Gemini",
                              style: GoogleFonts.lato(
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontStyle: FontStyle.italic),
                              textAlign: TextAlign.end,
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Card(
                  color: const Color(0xFFD8B4A0),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7)),
                  child: SizedBox(
                    width: 390,
                    height: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Icon(
                          Icons.folder_copy_outlined,
                          color: Colors.black,
                          size: 50,
                        ),
                        Text(
                          "Other Legal Resources",
                          style: GoogleFonts.lato(
                              fontSize: 25, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Placeholder(
                fallbackWidth: 390,
                fallbackHeight: 300,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class HomeScreenCard extends StatelessWidget {
  const HomeScreenCard({super.key, required this.image, required this.onImageWidget});

  final AssetImage image;
  final Widget onImageWidget;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      color: Colors.transparent,
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(35)),
      // Set card color to transparent
      child: Stack(
        children: [
          Container(
            height: 250,
            width: 155,
            decoration: BoxDecoration(
              image: DecorationImage(image: image, fit: BoxFit.cover),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
              child: Container(
                color: Colors.black.withOpacity(0.3),
              ),
            ),
          ),
          onImageWidget,
        ],
      ),
    );
  }
}

class FinalHomeScreenCard extends StatelessWidget {
  const FinalHomeScreenCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      // color: Colors.black26,
      child: Container(
        height: 200,
        width: 175,
        decoration: BoxDecoration(color: Colors.blueGrey,borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}
