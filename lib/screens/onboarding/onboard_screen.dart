import 'package:flutter/material.dart';
import 'package:koraplay_task/constants.dart';
import 'package:koraplay_task/components/black_button_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:koraplay_task/screens/home/home_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController? pageViewController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 16),
            decoration: BoxDecoration(
              color: KPrimaryColor
            ),
            child: Column(
              children: [
                SizedBox(height: 20,),
                Stack(
                  children: [
                    Image(
                        image: AssetImage("assets/images/threecircles.png")
                    ),
                    Image(
                      image: AssetImage("assets/images/docwithsteth.png"),
                    )
                  ],
                )
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.5,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(top: 50),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                      top: Radius.elliptical(
                          MediaQuery.of(context).size.height, 240.0)),
                ),
                child: Center(
                  child: Column(
                    //mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Perfect Healthcare Solution",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff081D3F)
                        ),
                        textAlign: TextAlign.center,
                      ),
                      //SizedBox(height: 24,),
                      Text(
                        "Find a specialist that you only need on a consulting application",
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xff8C8C8C)
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SmoothPageIndicator(
                        controller: pageViewController ??
                            PageController(initialPage: 0),
                        count: 3,
                        axisDirection: Axis.horizontal,
                        onDotClicked: (i) {
                          pageViewController?.animateToPage(
                            0,
                            duration: Duration(milliseconds: 500),
                            curve: Curves.ease,
                          );
                        },
                        effect: ExpandingDotsEffect(
                          expansionFactor: 2,
                          spacing: 8,
                          radius: 16,
                          dotWidth: 8,
                          dotHeight: 8,
                          dotColor: Color(0xFFC6CAD4),
                          activeDotColor: KPrimaryColor,
                          paintStyle: PaintingStyle.fill,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
                        child: BlackButton(
                          label: "Get Started",
                          onPressed: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (_) => HomeScreen())
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
