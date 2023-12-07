// ignore_for_file: prefer_const_constructors

import 'package:fitness/common/colo_extension.dart';
import 'package:fitness/view/on_boarding/on_boarding_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../common_widget/round_button.dart';


class StartedView extends StatefulWidget {
  const StartedView({super.key});

  @override
  State<StartedView> createState() => _StartedViewState();
}

class _StartedViewState extends State<StartedView> {
  bool isChangeColor = false;

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: TColor.white,
      body: Container(
          width: media.width,
          decoration: BoxDecoration(
           color: Color(0xB792A3FD),),
          child: Column(
          
            children: [
              
              Padding(
                padding: const EdgeInsets.all(28.0),
                child: Text(
              'Welcome to FitLife.',
              style: GoogleFonts.aleo(
                color: Colors.white,
                fontSize: 64,
                fontWeight: FontWeight.w400,
              )
              ),
              ),

              SizedBox(
                width: 293,
                height: 69,
                child: Text(
                  "Achieve your fitness goals with personalized meal plans and exercises.",
                  style: GoogleFonts.aldrich(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    color: Colors.white
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                  left:50,right: 30 ),
                child: Container(
                  child: Image(
                    image: AssetImage("assets/img/complete_profile.png")),
                ),
              ),
              const Spacer(),
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: TextButton(onPressed: () {},
                  style: ButtonStyle(
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius:BorderRadius.circular(30) )),
                    padding: MaterialStatePropertyAll(EdgeInsets.only(top:20,bottom: 20,left: 70,right: 70)),
                    backgroundColor: MaterialStatePropertyAll(Colors.white),
                  ),
                  child: Text(
                    "Get Started",
                    style: GoogleFonts.poppins(
                    color: Color(0xFF92A3FD),
                    fontWeight: FontWeight.w700,

                    ),
                  ),

                  )
                ),
              ),
             const Spacer()
            ],
          )),
    );
  }
}
