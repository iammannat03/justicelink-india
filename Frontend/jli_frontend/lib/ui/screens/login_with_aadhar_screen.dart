import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utils/login_to_home_screen_button.dart';

class LoginWithAadhaarScreen extends StatefulWidget {
  const LoginWithAadhaarScreen({super.key});

  @override
  State<LoginWithAadhaarScreen> createState() => _LoginWithAadhaarScreenState();
}

class _LoginWithAadhaarScreenState extends State<LoginWithAadhaarScreen> {

  void loginUser() async{
    if(aadharController.text.isNotEmpty && otpController.text.isNotEmpty){

    }
  }

  // controllers
  final TextEditingController aadharController = TextEditingController();
  final TextEditingController otpController = TextEditingController();


  @override
  Widget build(BuildContext context) {
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
      backgroundColor: const Color.fromARGB(255, 216, 180, 160),
      body: SafeArea(
        top: true,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height * 1,
            decoration: const BoxDecoration(
              color: Color(0xFFD8B4A0),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                  child: Container(
                    width: MediaQuery.sizeOf(context).width,
                    height: 69,
                    decoration: const BoxDecoration(
                      color: Color(0xFFD8B4A0),
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
                    padding: const EdgeInsetsDirectional.fromSTEB(20, 15, 20, 0),
                    child: ListView(
                      // physics: NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.zero,

                      // scrollDirection: Axis.vertical,
                      children: [
                        const Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            'LOGIN',
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
                          height: 280,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding:
                            const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 0, 10),
                                  child: TextFormField(
                                    controller: aadharController,
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
                                    controller: otpController,
                                    keyboardType: TextInputType.number,
                                    // controller: _model.textController2,
                                    autofocus: true,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: 'Enter OTP recieved',
                                      // labelStyle: FlutterFlowTheme.of(context)
                                      //     .labelMedium,
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
                                    // style:
                                    // FlutterFlowTheme.of(context).bodyMedium,
                                    // validator: _model.textController2Validator
                                    //     .asValidator(context),
                                  ),
                                ),
                                const Align(
                                  alignment: AlignmentDirectional(0.00, 0.00),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 15, 0, 0),
                                    child: LoginToHomeScreenButton(),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}