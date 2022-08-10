import 'package:flutter/material.dart';

class HomeSectionHeader extends StatelessWidget {
  const HomeSectionHeader({
    Key? key,
    required this.title,
    this.onPressed
  }) : super(key: key);

  final String title;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
              fontSize: 19,
              color: Colors.black,
              fontWeight: FontWeight.w500
          ),
        ),
        Text(
          "See All",
          style: TextStyle(
              color: Color(0xffA4A9B5)
          ),
        )
      ],
    );
  }
}
