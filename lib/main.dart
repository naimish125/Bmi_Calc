import 'package:flutter/material.dart';

import 'Screens/bmi/Bmi_Calc.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) =>BmiScreen(),
      },
    ),
  );
}