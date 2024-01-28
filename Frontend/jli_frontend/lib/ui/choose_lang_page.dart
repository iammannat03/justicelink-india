import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'login_choose.dart'; // Import the LoginChoose page

class ChooseLangPage extends StatelessWidget {
  const ChooseLangPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return GestureDetector(
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.primary,
        appBar: AppBar(
          forceMaterialTransparency: true,
          backgroundColor: Theme.of(context).colorScheme.primary,
          toolbarHeight: screenSize.height * 0.06,
          centerTitle: false,
          title: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
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
          ),
        ),
        body: Expanded(
          child: Column(
            children: [
              const Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 24.0),
                    child: Text(
                      'CHOOSE\nLANGUAGE',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        height: 1,
                        fontFamily: 'Julius Sans One',
                        fontSize: 38.18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      'You can change it later in settings',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Open Sans',
                        fontSize: 12,
                        letterSpacing: 2,
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Container(
                  width: MediaQuery.sizeOf(context).width,
                  // The height will expand to fill the available vertical space
                  decoration: const BoxDecoration(
                    color: Color(0xFFD8B4A0),
                  ),
                  child: ListView(
                    padding: EdgeInsets.zero,
                    scrollDirection: Axis.vertical,
                    children: const [
                      JLIButton1(
                        lang: 'English',
                      ),
                      JLIButton1(
                        lang: 'हिन्दी',
                      ), //hindi
                      JLIButton1(
                        lang: 'বাংলা',
                      ), //bengali
                      JLIButton1(
                        lang: 'ગુજરાતી',
                      ), //gujarati
                      JLIButton1(
                        lang: 'தமிழ்',
                      ), //tamil
                      JLIButton1(
                        lang: 'తెలుగు',
                      ), //telugu
                      JLIButton1(
                        lang: 'मराठी',
                      ), //marathi
                      JLIButton1(
                        lang: 'ಕನ್ನಡ',
                      ), //kannada
                      JLIButton1(
                        lang: 'മലയാളം',
                      ), //malayalam
                      JLIButton1(
                        lang: '',
                      ),
                      JLIButton1(
                        lang: '',
                      ),
                      JLIButton1(
                        lang: '',
                      ),
                      JLIButton1(
                        lang: '',
                      ),
                      JLIButton1(
                        lang: '',
                      ),
                      JLIButton1(
                        lang: '',
                      ),
                      JLIButton1(
                        lang: '',
                      ),
                      JLIButton1(
                        lang: '',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class JLIButton1 extends StatelessWidget {
  const JLIButton1({super.key, required this.lang});
  final String lang;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(30, 12, 30, 12),
      child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (_) => LoginChoose()),
            );
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
                const Color.fromARGB(255, 237, 235, 235)),
            elevation: MaterialStateProperty.all(10.0),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
                side: const BorderSide(color: Colors.white, width: 1),
              ),
            ),
            minimumSize: MaterialStateProperty.all(const Size(55, 55)),
          ),
          child: Text(
            lang,
            style: GoogleFonts.lato(fontSize: 20, color: Colors.black),
          )),
    );
  }
}
