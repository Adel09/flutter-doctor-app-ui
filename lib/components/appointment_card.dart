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
      height: MediaQuery.of(context).size.height * 0.185,
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
          )
        ],
      ),
    );
  }
}
