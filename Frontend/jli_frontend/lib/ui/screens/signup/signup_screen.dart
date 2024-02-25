import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jli_frontend/ui/screens/home/general/general_home_screen.dart';
import 'package:jli_frontend/ui/screens/home/lawyers/lawyers_home_screen.dart';
import 'package:jli_frontend/ui/screens/home/prisoners/prisoner_home_screen.dart';
import 'package:jli_frontend/ui/screens/login/general/g_login_with_aadhar_screen.dart';
import 'package:jli_frontend/ui/screens/login/lawyers/l_login_with_aadhar_screen.dart';
import 'package:jli_frontend/ui/screens/login/prisoners/login_choose_screen.dart';
import 'package:jli_frontend/ui/utils/signup_button.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key, required this.user});

  final String user;

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController prisonerAadharController =
      TextEditingController();
  final TextEditingController prisonerOtpController = TextEditingController();
  final TextEditingController lawyerAadharController = TextEditingController();
  final TextEditingController lawyerOtpController = TextEditingController();
  final TextEditingController generalAadharController = TextEditingController();
  final TextEditingController generalOtpController = TextEditingController();
  


  @override
  Widget build(BuildContext context) {
    TextEditingController selectedAadharController = prisonerAadharController;
    TextEditingController selectedOtpController = prisonerOtpController;

    Widget selectedLoginScreen = LoginChooseScreen();
    Widget selectedHomeScreen = PrisonerHomeScreen();

    if (widget.user == 'lawyer') {
      selectedAadharController = lawyerAadharController;
      selectedOtpController = lawyerOtpController;
      selectedHomeScreen = LawyerHomeScreen();
      selectedLoginScreen= LLoginWithAadharScreen();

    } else if (widget.user == 'general') {
      selectedAadharController = generalAadharController;
      selectedOtpController = generalOtpController;
      selectedHomeScreen = GeneralHomeScreen();
      selectedLoginScreen = GLoginWithAadharScreen();
    }

    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
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
      // key: scaffoldKey,
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: SafeArea(
        top: true,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height * 1,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                  child: Container(
                    width: MediaQuery.sizeOf(context).width,
                    height: 69,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.sizeOf(context).width * 0.85,
                  height: MediaQuery.sizeOf(context).height * 0.45,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(20, 15, 20, 0),
                    child: ListView(
                      // physics: NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.zero,

                      // scrollDirection: Axis.vertical,
                      children: [
                        const Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            'SIGN UP',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Julius Sans One',
                              fontSize: 35,
                              letterSpacing: 6,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 324,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0, 10, 0, 10),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 0, 10),
                                  child: TextFormField(
                                    controller: selectedAadharController,
                                    keyboardType: TextInputType.number,
                                    maxLength: 12,

                                    // controller: _model.textController1,
                                    autofocus: true,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: 'Enter Aadhaar Id',
                                      labelStyle: const TextStyle(),
                                      // hintStyle: FlutterFlowTheme.of(context)
                                      //     .labelMedium,
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Colors.white,
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Colors.white,
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      errorBorder: UnderlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Colors.white,
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      focusedErrorBorder: UnderlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Colors.white,
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      filled: true,
                                    ),
                                    // style: ,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 0, 0),
                                  child: TextFormField(
                                    controller: selectedOtpController,
                                    keyboardType: TextInputType.number,
                                    // controller: _model.textController2,
                                    autofocus: true,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: 'Enter OTP received',
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Colors.white,
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Colors.white,
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      errorBorder: UnderlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Colors.white,
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      focusedErrorBorder: UnderlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Colors.white,
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      filled: true,
                                    ),
                                    // style:
                                    // FlutterFlowTheme.of(context).bodyMedium,
                                    // validator: _model.textController2Validator
                                    //     .asValidator(context),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.00, 0.00),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 15, 0, 0),
                                    child: SignupButton(user: widget.user, selectedHomeScreen: selectedHomeScreen,),
                                  ),
                                ),
                                Center(
                                  child: TextButton(
                                    onPressed: () {

                                      Navigator.of(context).push(MaterialPageRoute(builder: (_)=>selectedLoginScreen));

                                    },
                                    child: Text(
                                      'Already a user? log-in',
                                      style: GoogleFonts.lato(
                                          fontSize: 18,
                                          decoration: TextDecoration.underline,
                                          decorationColor: Theme.of(context)
                                              .colorScheme
                                              .primary,
                                          decorationStyle:
                                              TextDecorationStyle.wavy),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
