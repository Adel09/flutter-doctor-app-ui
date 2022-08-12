import 'package:flutter/material.dart';
import 'package:koraplay_task/constants.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff363CC0),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 44,
            width: 44,
            decoration: BoxDecoration(
                color: Color(0xffEDF0FA).withOpacity(0.12),
                borderRadius: BorderRadius.circular(11)
            ),
            child: Center(
              child: Icon(Icons.arrow_back_rounded),
            ),
          ),
        ),
        title: Text(
          "Details",
          style: TextStyle(
            color: Colors.white,
            fontSize: 24
          ),
        ),
      ),
      body: ListView(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.25,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Color(0xff363CC0),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(16),
                bottomRight: Radius.circular(100)
              ),

            ),
            child: Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Stack(
                          children: [
                            SizedBox(height: MediaQuery.of(context).size.height * 0.19, child: Image(image: AssetImage("assets/images/threecircles.png"))),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.23,
                            width: MediaQuery.of(context).size.width * 0.40,
                            decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage("assets/images/maledoc.png")),
                              //color: Colors.green,
                              borderRadius: BorderRadius.only(bottomRight: Radius.circular(100))
                            ),
                          )
                          ],
                        )
                      ],
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Dr. Jenny Wilson",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                color: Color(0xffEDF0FA).withOpacity(0.12),
                                borderRadius: BorderRadius.circular(11)
                            ),
                            child: Center(
                              child: SizedBox(height: 16, width: 16, child: Image(image: AssetImage("assets/images/icons/toothicon.png"),)),
                            ),
                          ),
                          SizedBox(width: 4,),
                          Text(
                            "Dentist",
                            style: TextStyle(
                              color: Color(0xffCFD2FF),
                              fontSize: 18
                            ),
                          ),
                          SizedBox(width: 7,),
                          SizedBox(
                            height: 16,
                            width: 16,
                            child: Center(
                              child: Image(image: AssetImage("assets/images/icons/staricon.png"),)),
                            ),
                          SizedBox(width: 4,),
                          Text(
                            "4.9",
                            style: TextStyle(
                                color: Color(0xffCFD2FF),
                                fontSize: 18
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 15,),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Visiting hour",
                            style: TextStyle(
                              color: Color(0xffCFD2FF)
                            ),
                          ),
                          SizedBox(height: 6,),
                          Text(
                            "11 Am-12 Pm",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 16,),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Total Patient",
                            style: TextStyle(
                                color: Color(0xffCFD2FF)
                            ),
                          ),
                          SizedBox(height: 6,),
                          Text(
                            "1200+",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              fontWeight: FontWeight.w500
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Description",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500
                  ),
                ),
                SizedBox(height: 3,),
                RichText(
                  text: TextSpan(
                    text: "A Dentist is a medical professional who specializes in dentistry, the diagnosis, and treatment of diseases and conditions of tooth, This helps to prevent conplications...",
                    style: TextStyle(
                        color: Colors.black,
                        height: 1.4
                    ),
                    children: [
                      TextSpan(
                          text: 'Read More',
                          style: TextStyle(color: Color(0xff3B3FCB), fontWeight: FontWeight.w500)),
                    ]
                  ),

                ),
                SizedBox(height: 18,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Schedule",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                    Text(
                      "< June >",
                      style: TextStyle(
                          color: Color(0xff474CC5),
                          fontSize: 16,
                          fontWeight: FontWeight.w500
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    scheduleObject("Sat", "12"),
                    scheduleObject("Sun", "13"),
                    activeScheduleObject("Mon", "14"),
                    scheduleObject("Tue", "15"),
                    scheduleObject("Wed", "16"),
                    scheduleObject("Thu", "17"),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
  Widget scheduleObject(String day, String date){

    return Container(
      height: 48,
      width: 48,
      padding: EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xffF1F5FF)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            day,
            style: TextStyle(
              color: Color(0xff999AA4),
              fontSize: 12
            ),
          ),
          Text(
            date,
            style: TextStyle(
                color: Colors.black,
              fontSize: 16
            ),
          ),
        ],
      ),
    );

  }
  Widget activeScheduleObject(String day, String date){

    return Container(
      height: 48,
      width: 48,
      padding: EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: KPrimaryGradient
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            day,
            style: TextStyle(
                color: Colors.white.withOpacity(0.8),
                fontSize: 12
            ),
          ),
          Text(
            date,
            style: TextStyle(
                color: Colors.white,
                fontSize: 16
            ),
          ),
        ],
      ),
    );

  }
}
