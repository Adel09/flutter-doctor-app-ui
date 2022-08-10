import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:koraplay_task/constants.dart';

class DoctorListItem extends StatelessWidget {
  const DoctorListItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.113,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: KSecondaryColor,
        borderRadius: BorderRadius.circular(16)
      ),
      child: Row(
        children: [
          Container(
            height: double.infinity,
            width: 79,
            margin: EdgeInsets.symmetric(vertical: 5),
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage("https://images.squarespace-cdn.com/content/v1/560ee0e1e4b095574c38f56e/1459499051928-ZTGFU9VVVM2ANTNOM33Q/Medical-Dr-MD-Portrait-Headshot-Hospital-KarenVaisman-Photography.jpg?format=1500w")
              ),
              borderRadius: BorderRadius.circular(9)
            ),
          )
        ],
      ),
    );
  }
}
