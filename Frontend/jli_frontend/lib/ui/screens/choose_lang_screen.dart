import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utils/choose_language_button.dart';

class ChooseLanguageScreen extends StatelessWidget {
  const ChooseLanguageScreen({super.key});

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
                      ChooseLanguageButton(
                        lang: 'English',
                      ),
                      ChooseLanguageButton(
                        lang: 'हिन्दी',
                      ), //hindi
                      ChooseLanguageButton(
                        lang: 'বাংলা',
                      ), //bengali
                      ChooseLanguageButton(
                        lang: 'ગુજરાતી',
                      ), //gujarati
                      ChooseLanguageButton(
                        lang: 'தமிழ்',
                      ), //tamil
                      ChooseLanguageButton(
                        lang: 'తెలుగు',
                      ), //telugu
                      ChooseLanguageButton(
                        lang: 'मराठी',
                      ), //marathi
                      ChooseLanguageButton(
                        lang: 'ಕನ್ನಡ',
                      ), //kannada
                      ChooseLanguageButton(
                        lang: 'മലയാളം',
                      ), //malayalam
                      ChooseLanguageButton(
                        lang: '',
                      ),
                      ChooseLanguageButton(
                        lang: '',
                      ),
                      ChooseLanguageButton(
                        lang: '',
                      ),
                      ChooseLanguageButton(
                        lang: '',
                      ),
                      ChooseLanguageButton(
                        lang: '',
                      ),
                      ChooseLanguageButton(
                        lang: '',
                      ),
                      ChooseLanguageButton(
                        lang: '',
                      ),
                      ChooseLanguageButton(
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


