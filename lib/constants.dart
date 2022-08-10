import 'package:flutter/material.dart';

const Color KPrimaryColor = Color(0xff363cc0);
const Color KSecondaryColor = Color(0xffe2eaf1);
const Color KBlack = Color(0xff000000);

LinearGradient KPrimaryGradient = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [
    KPrimaryColor.withOpacity(0.5),
    KPrimaryColor,
  ],
);