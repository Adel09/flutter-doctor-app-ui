import 'package:flutter/material.dart';

class BlackButton extends StatelessWidget {
  const BlackButton({
    Key? key,
    required this.label,
    this.onPressed
  }) : super(key: key);

  final String label;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(16)
        ),
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18
            ),
          ),
        )
      ),
    );
  }
}
