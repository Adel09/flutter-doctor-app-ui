import 'package:flutter/material.dart';
import 'package:koraplay_task/constants.dart';
import 'package:koraplay_task/components/appointment_card.dart';
import 'package:koraplay_task/components/section_header.dart';
import 'package:koraplay_task/components/doctor_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: ListView(
          children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage("assets/images/profpic.jpg"),
              ),
              title: Text(
                "Welcome back",
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xff888888)
                ),
              ),
              subtitle: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Adel",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(width: 2,),
                  Image(
                    image: AssetImage("assets/images/waving.png"),
                  )
                ],
              ),
              trailing: Container(
                height: 44,
                width: 44,
                decoration: BoxDecoration(
                  color: KSecondaryColor,
                  borderRadius: BorderRadius.circular(11)
                ),
                child: Center(
                  child: Icon(Icons.menu),
                ),
              ),
            ),
            SizedBox(height: 22,),
            HomeSectionHeader(title: "Upcoming Appointment"),
            SizedBox(height: 16,),
            AppointmentCard(
                name: "Dr. Rohul Alom",
                specialty: "Tooth Specialist"
            ),
            SizedBox(height: 24,),
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Container(
                decoration: BoxDecoration(
                    color: KSecondaryColor,
                    borderRadius: BorderRadius.circular(15)),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.black87,
                      ),
                      hintText: "Search...",
                      hintStyle:
                      TextStyle(color: Colors.grey, fontSize: 15)),
                ),
              ),
              trailing: Container(
                height: 46,
                width: 46,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: KPrimaryGradient
                ),
                child: Center(
                  child: Image(
                    image: AssetImage("assets/images/icons/filtericon.png"),
                  ),
                ),
              ),
            ),
            SizedBox(height: 24,),
            HomeSectionHeader(title: "Category"),
            SizedBox(height: 16,),
            SizedBox(
              height: 40,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CategoryPill(
                      Image(
                        image: AssetImage("assets/images/icons/toothicon.png"),
                      ),
                      "Dentist"
                  ),
                  CategoryPill(
                      Image(
                        image: AssetImage("assets/images/icons/heartbeaticon.png"),
                      ),
                      "Heart Surgeon"
                  ),
                  CategoryPill(
                      Image(
                        image: AssetImage("assets/images/icons/boneicon.png"),
                      ),
                      "Bone Surgeon"
                  ),
                ],
              ),
            ),
            SizedBox(height: 24,),
            HomeSectionHeader(title: "Top Rated Doctor"),
            DoctorListItem()
          ],
        ),
      ),
    );
  }

  Widget CategoryPill(Widget icon, String text){

    return Container(
      height: 40,
      //width: 105,
      padding: EdgeInsets.symmetric(horizontal: 6),
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        color: KSecondaryColor,
        borderRadius: BorderRadius.circular(8)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          icon,
          SizedBox(width: 6,),
          Text(
            text,
            style: TextStyle(
              fontSize: 16,
              color: Colors.black
            ),
          )
        ],
      ),
    );

  }

}
