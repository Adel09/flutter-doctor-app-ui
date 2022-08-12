import 'package:flutter/material.dart';
import 'package:koraplay_task/constants.dart';
import 'package:koraplay_task/components/appointment_card.dart';
import 'package:koraplay_task/components/section_header.dart';
import 'package:koraplay_task/components/doctor_item.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:koraplay_task/screens/details/detail_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        elevation: 0,
        backgroundColor: Colors.white,
      ),
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
            SizedBox(height: 18,),
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
            SizedBox(height: 20,),
            HomeSectionHeader(title: "Category"),
            SizedBox(height: 14,),
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
            SizedBox(height: 17,),
            HomeSectionHeader(title: "Top Rated Doctor"),
            SizedBox(height: 5,),
            DoctorListItem(
              name: "Dr. Ronald Richard",
              specialty: "Heart Surgeon",
              rating: "4.3",
              times: "11 Am-03 Pm",
            ),
            DoctorListItem(
              name: "Dr. Jenny Wilson",
              specialty: "Dental Surgeon",
              rating: "4.9",
              times: "10 Am-12 Pm",
              onPressed: (context){
                Navigator.push(
                  context,
                MaterialPageRoute(builder: (_) => DetailsScreen())
                );
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: FloatingNavbar(

  borderRadius: 16.0,
  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
  onTap: (int val) {
    //returns tab id which is user tapped
  },
  currentIndex: 0,
  selectedBackgroundColor: Colors.black,
  selectedItemColor: Colors.white,

  items: [
    FloatingNavbarItem(customWidget: SizedBox(height: 24, width: 24, child: Image(image: AssetImage("assets/images/icons/homeicon.png"),))),
    FloatingNavbarItem(customWidget: SizedBox(height: 24, width: 24, child: Image(image: AssetImage("assets/images/icons/calendaricon.png"),))),
    FloatingNavbarItem(customWidget: SizedBox(height: 24, width: 24,child: Image(image: AssetImage("assets/images/icons/chaticon.png"),))),
    FloatingNavbarItem(customWidget: SizedBox(height: 24, width: 24,child: Image(image: AssetImage("assets/images/icons/profileicon.png"),))),
  ],
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
