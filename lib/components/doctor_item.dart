import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:koraplay_task/constants.dart';

class DoctorListItem extends StatelessWidget {
  const DoctorListItem({
    Key? key,
    required this.name,
    required this.specialty,
    this.rating = "4.0",
    this.times = "12PM-1PM",
    this.onPressed,
    required this.docimage
  }) : super(key: key);

  final String name;
  final ImageProvider docimage;
  final String specialty;
  final String rating;
  final String times;
  final Function(BuildContext context)? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.113,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(bottom: 14),
      decoration: BoxDecoration(
          color: KPrimaryColor,
          borderRadius: BorderRadius.circular(16)
      ),
      child: Slidable(
        endActionPane: ActionPane(
          extentRatio: 1/5,
          motion: ScrollMotion(),
          children: [
            CustomSlidableAction(
              backgroundColor: KPrimaryColor,
              flex: 1,
              onPressed: onPressed,
              borderRadius: BorderRadius.only(topRight: Radius.circular(16), bottomRight: Radius.circular(16)),
              child: Container(
                  decoration: BoxDecoration(
                    color: KPrimaryColor,
                  ),
                  child: Center(
                    child: Image(image: AssetImage("assets/images/icons/messageicon.png"),),
                  ),
                ),
            )
          ],
        ),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.113,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
          decoration: BoxDecoration(
            color: KSecondaryColor,
            borderRadius: BorderRadius.circular(16)
          ),
          child: Row(
            //mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: double.infinity,
                width: 79,
                margin: EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: docimage
                  ),
                  borderRadius: BorderRadius.circular(9)
                ),
              ),
              SizedBox(width: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16
                      ),
                    ),
                    Text(
                      specialty,
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xff999AA4)
                      ),
                    ),
                    Row(
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image(image: AssetImage("assets/images/icons/staricon.png")),
                            SizedBox(width: 2,),
                            Text(
                              rating,
                              style: TextStyle(
                                color: Color(0xff999AA4)
                              ),
                            )
                          ],
                        ),
                        SizedBox(width: 8,),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image(image: AssetImage("assets/images/icons/clock (1) 1.png")),
                            SizedBox(width: 4,),
                            Text(
                              times,
                              style: TextStyle(
                                  color: Color(0xff999AA4)
                              ),
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
