import 'package:flutter/material.dart';
import 'package:koraplay_task/constants.dart';

class AppointmentCard extends StatelessWidget {
  const AppointmentCard({
    Key? key,
    required this.name,
    required this.specialty
  }) : super(key: key);

  final String name;
  final String specialty;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 155,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: KPrimaryColor,
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
              color: KPrimaryColor.withOpacity(0.5),
              blurRadius: 0,
              spreadRadius: -3,
              offset: Offset(0, 8),
            ),
            BoxShadow(
              color: KPrimaryColor.withOpacity(0.4),
              blurRadius: 0,
              spreadRadius: -6,
              offset: Offset(0, 16),
            ),
          ]
      ),
      child: Column(
        children: [
          SizedBox(height: 5,),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage("https://st.depositphotos.com/1003098/3929/i/600/depositphotos_39296605-stock-photo-cancer-specialist-smiling-in-hospital.jpg"),
            ),
            title: Text(
              name,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16
              ),
            ),
            subtitle: Text(
              specialty,
              style: TextStyle(
                  color: Color(0xffCFD2FF),
                  fontSize: 14
              ),
            ),
            trailing: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.more_vert, color: Colors.white,),
                Expanded(child: SizedBox(height: 6,))
              ],
            ),
          ),
          SizedBox(height: 8,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Row(

              children: [
                Container(
                  height: 42,
                  //width: 130,
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  decoration: BoxDecoration(
                    color: Color(0xff474DCE),
                    borderRadius: BorderRadius.circular(8)
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.calendar_today_rounded, color: Colors.white,),
                      SizedBox(width: 4,),
                      Text(
                          "Sep 18, 2022",
                        style: TextStyle(
                          color: Colors.white
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(width: 12,),
                Container(
                  height: 42,
                  //width: 130,
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  decoration: BoxDecoration(
                      color: Color(0xff474DCE),
                      borderRadius: BorderRadius.circular(8)
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.access_time_outlined, color: Colors.white,),
                      SizedBox(width: 4,),
                      Text(
                        "(11 Am-03 Pm)",
                        style: TextStyle(
                            color: Colors.white
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
