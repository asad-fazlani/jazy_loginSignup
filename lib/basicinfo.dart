import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'main.dart';

class OnBoardingPage extends StatefulWidget {
  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => HomePage()),
    );
  }

  Widget _buildImage(String assetName) {
    return Align(
      // child: Image.asset('assets/$assetName.jpg', width: 350.0),
      alignment: Alignment.bottomCenter,
    );
  }

  @override
  Widget build(BuildContext context) {
    // const bodyStyle = TextStyle(fontSize: 10.0);
    const pageDecoration = const PageDecoration(
        titlePadding: EdgeInsets.fromLTRB(0, 0.0, 0, 10),
        footerPadding: EdgeInsets.fromLTRB(0, 30, 0, 0)
        // bodyTextStyle: bodyStyle,
        // descriptionPadding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),

        // pageColor: Colors.white,
        // imagePadding: EdgeInsets.zero,
        );

    return IntroductionScreen(
      key: introKey,
      onChange: (value) => 1,
      pages: [
        PageViewModel(
          title: "Another title page",
          body: "Another beautiful body text for this example onboarding",
          // image: _buildImage('img2'),
          footer: RaisedButton(
            onPressed: () {
              introKey.currentState?.animateScroll(1);
            },
            child: const Text(
              'FooButton',
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.lightBlue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          titleWidget: Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Text(
              "Verify Mobile Number",
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.orangeAccent[700],
                  fontWeight: FontWeight.bold),
            ),
          ),
          bodyWidget: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: Container(
                  child: Text(
                    "  OTP has been sent to you on your mobile number , please enter it below",
                    style: TextStyle(

                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
             Container
               (
               child: Row(
             children: <Widget>[
             // inputBox(_teOtpDigitOne, _focusNodeDigitOne),
              SizedBox(
                width: 10.0,
              ),
              // inputBox(_teOtpDigitTwo, _focusNodeDigitTwo),
              SizedBox(
                width: 10.0,
              ),
              // inputBox(_teOtpDigitThree, _focusNodeDigitThree),
              SizedBox(
                width: 10.0,
              ),
              // inputBox(_teOtpDigitFour, _focusNodeDigitFour),
            ],
          )
             )
            ],
          ),
          footer: Column(
            children: [
//submit button
              RaisedButton(
                padding: EdgeInsets.fromLTRB(80, 0, 80, 0),
                onPressed: () {
                  _onIntroEnd(context);
                },
                child: const Text(
                  'Verify',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.orangeAccent[700],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),

              //cancel button
              RaisedButton(
                color: Colors.white,
                padding: EdgeInsets.fromLTRB(40, 0, 40, 0),

                onPressed: () {
                  introKey.currentState?.animateScroll(0);
                  // _onIntroEnd(context);
                },
                child: const Text(
                  'Change Number',
                  style: TextStyle(
                    color: Colors.orangeAccent,
                  ),
                ),
                // color: Colors.transparent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    side: BorderSide(color: Colors.orangeAccent[700] ,width: 1)),
              ),
            ],
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          titleWidget: Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Text(
              "Basic information",
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.orangeAccent[700],
                  fontWeight: FontWeight.bold),
            ),
          ),
          bodyWidget: Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                  child: Container(
                    child: TextFormField(
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                          isDense: true, // and add this line
                          contentPadding: EdgeInsets.symmetric(
                              vertical:
                                  0), //Change this value to custom as you like
                          hintText: 'Full Name*',
                          hintStyle: TextStyle(fontSize: 14),
                          // labelText: 'hello',
                          border: new UnderlineInputBorder(
                              borderSide: new BorderSide(color: Colors.green))),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                  child: Container(
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          isDense: true, // and add this line
                          contentPadding: EdgeInsets.symmetric(
                              vertical:
                                  0), //Change this value to custom as you like
                          hintText: 'Mobile No*',
                          hintStyle: TextStyle(fontSize: 14),

                          // labelText: 'hello',
                          border: new UnderlineInputBorder(
                              borderSide: new BorderSide(color: Colors.green))),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                  child: Container(
                    child: TextFormField(
                      keyboardType: TextInputType.streetAddress,
                      decoration: InputDecoration(
                          isDense: true, // and add this line
                          contentPadding: EdgeInsets.symmetric(
                              vertical:
                                  0), //Change this value to custom as you like
                          hintText: 'Address*',
                          hintStyle: TextStyle(fontSize: 14),

                          // labelText: 'hello',
                          border: new UnderlineInputBorder(
                              borderSide: new BorderSide(color: Colors.green))),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                  child: Container(
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          isDense: true, // and add this line
                          contentPadding: EdgeInsets.symmetric(
                              vertical:
                                  0), //Change this value to custom as you like
                          hintText: 'Gmail ID*',
                          hintStyle: TextStyle(fontSize: 14),
                          border: new UnderlineInputBorder(
                              borderSide: new BorderSide(color: Colors.green))),
                    ),
                  ),
                ),
              ],
            ),
          ),
          footer: Column(
            children: [
//submit button
              RaisedButton(
                padding: EdgeInsets.fromLTRB(80, 0, 80, 0),
                onPressed: () {
                  _onIntroEnd(context);
                },
                child: const Text(
                  'Submit',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.orangeAccent[700],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),

              //cancel button
              RaisedButton(
                color: Colors.white,
                padding: EdgeInsets.fromLTRB(80, 0, 80, 0),

                onPressed: () {
                  introKey.currentState?.animateScroll(0);
                  // _onIntroEnd(context);
                },
                child: const Text(
                  'Cancel',
                  style: TextStyle(
                    color: Colors.orangeAccent,
                  ),
                ),
                // color: Colors.transparent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    side: BorderSide(color: Colors.orangeAccent[700])),
              ),
            ],
          ),
          decoration: pageDecoration,
        ),
      ],
      onDone: () => _onIntroEnd(context),
      // onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      // showSkipButton: true,

      skipFlex: 0,
      nextFlex: 0,
      // skip:

      done: const Text('', style: TextStyle(fontWeight: FontWeight.w600)),

      dotsDecorator: const DotsDecorator(
          size: Size(10.0, 10.0),
          color: Colors.orangeAccent,
          activeSize: Size(10.0, 10.0),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(50.0)),
          ),
          activeColor: Colors.grey,
          spacing: EdgeInsets.fromLTRB(5, 30, 5, 0)),
    );
  }
}
