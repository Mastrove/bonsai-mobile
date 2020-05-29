import 'package:accpatapp/components/create_sprint_button.dart';
import 'package:accpatapp/components/title_text.dart';
import 'package:accpatapp/screens/select_frequency_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:accpatapp/components/time_scroll_view.dart';
import 'package:accpatapp/components/privacy_switch.dart';

class SetupCheckInScreen extends StatelessWidget {
  static String id = 'setup_checkin_screen';

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TitleText(
                textContent: 'How frequently will you check-in?',
              ),
              SizedBox(
                height: 36.0,
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Check-in',
                    style: GoogleFonts.roboto(
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                      color: Color(0xFF000000),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(40.0),
                            topLeft: Radius.circular(40.0),
                          ),
                        ),
                        context: context,
                        builder: (context) => SingleChildScrollView(
                          child: Container(
                            padding: EdgeInsets.only(
                                bottom:
                                    MediaQuery.of(context).viewInsets.bottom),
                            child: SelectFrequencyScreen(),
                          ),
                        ),
                        isScrollControlled: true,
                      );
                    },
                    child: Row(
                      children: <Widget>[
                        Text(
                          'Daily',
                          style: GoogleFonts.roboto(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w300,
                            fontStyle: FontStyle.normal,
                            color: Color(0xFF000000),
                          ),
                        ),
                        Icon(
                          Icons.chevron_right,
                          size: 26.0,
                          color: Color(0xFFC4C4C4),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 25.0,
              ),
              Center(
                child: Text(
                  '@',
                  style: GoogleFonts.roboto(
                    fontSize: 22.0,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFC4C4C4),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      width: 0.5,
                      color: Color(0xFFC4C4C4),
                    ),
                  ),
                ),
                padding: EdgeInsets.only(bottom: 21.0),
                child: TimeScrollView(),
              ),
              SizedBox(
                height: 21.0,
              ),
              Text(
                'other'.toUpperCase(),
                style: GoogleFonts.roboto(
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w200,
                  fontSize: 14.0,
                  color: Color(0xFF000000),
                ),
              ),
              SizedBox(
                height: 21.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Privacy',
                    style: GoogleFonts.roboto(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal,
                      color: Color(0xFF000000),
                    ),
                  ),
                  PrivacySwitch(),
                ],
              ),
              SizedBox(
                height: 69.0,
              ),
              Center(
                child: Container(
                  width: 68.0,
                  child: StepProgressIndicator(
                    totalSteps: 2,
                    currentStep: 2,
                    selectedColor: Color(0xFF0F7EFF),
                    unselectedColor: Color(0xFFC4DDFB),
                    size: 8.0,
                    padding: 4,
                  ),
                ),
              ),
              SizedBox(
                height: 26.0,
              ),
              Center(
                child: CreateSprintButton(
                  buttonText: 'Done',
                  onButtonPress: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
