import 'package:accpatapp/screens/setup-checkin-screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:accpatapp/components/create_sprint_button.dart';
import 'package:accpatapp/components/title_text.dart';

class CreateSprintScreen extends StatelessWidget {
  static String id = 'create_sprint_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAFAFA),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(
            left: 14.0,
            top: 33.0,
            right: 28.0,
          ),
          child: Column(
            children: <Widget>[
              TitleText(textContent: 'Quickly setup a sprint and let people support you',),
              SizedBox(
                height: 35.0,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFFC4C4C4),
                    ),
                    borderRadius: BorderRadius.circular(0.0),
                  ),
                  hintText: 'What goal would you like to achieve?',
                  hintStyle: GoogleFonts.roboto(
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.normal,
                    fontSize: 14.0,
                    color: Color(0xFFC4C4C4),
                  ),
                  contentPadding: EdgeInsets.fromLTRB(18.0, 40.0, 72.0, 69.0),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFFC4C4C4),
                    ),
                    borderRadius: BorderRadius.circular(0.0),
                  ),
                  hintText: 'How long would this sprint last?',
                  hintStyle: GoogleFonts.roboto(
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.normal,
                    fontSize: 14.0,
                    color: Color(0xFFC4C4C4),
                  ),
                  contentPadding: EdgeInsets.fromLTRB(18.0, 17.0, 98.0, 27.0),
                ),
              ),
              SizedBox(
                height: 48.0,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFFC4C4C4),
                    ),
                    borderRadius: BorderRadius.circular(0.0),
                  ),
                  hintText: 'Invite somebody to hold you accountable',
                  hintStyle: GoogleFonts.roboto(
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.normal,
                    fontSize: 14.0,
                    color: Color(0xFFC4C4C4),
                  ),
                  contentPadding: EdgeInsets.fromLTRB(18.0, 16.0, 45.0, 28.0),
                  suffixIcon: Icon(Icons.keyboard_arrow_down),
                ),
              ),
              SizedBox(
                height: 69.0,
              ),
              Container(
                width: 68.0,
                child: StepProgressIndicator(
                  totalSteps: 2,
                  currentStep: 1,
                  selectedColor: Color(0xFF0F7EFF),
                  unselectedColor: Color(0xFFC4DDFB),
                  size: 8.0,
                  padding: 4,
                ),
              ),
              SizedBox(
                height: 26.0,
              ),
              CreateSprintButton(buttonText: 'Next', onButtonPress: (){
                Navigator.pushNamed(context, SetupCheckInScreen.id);
              },),
            ],
          ),
        ),
      ),
    );
  }
}
