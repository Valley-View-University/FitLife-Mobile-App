
import 'package:fitness/view/main_tab/main_tab_view.dart';
import 'package:fitness/view/splashview/splashscreen.dart';
import 'package:flutter/material.dart';

import 'common/colo_extension.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fitness 3 in 1',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      
        primaryColor: TColor.primaryColor1,
        fontFamily: "Poppins"
      ),
      home: splashsc(),
    );
  }
}

