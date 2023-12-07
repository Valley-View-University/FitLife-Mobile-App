

import 'package:fitness/view/on_boarding/started_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class splashsc extends StatefulWidget {
  const splashsc({super.key});

  @override
  State<splashsc> createState() => _splashscState();
}

class _splashscState extends State<splashsc> {

  @override
  void initState() {
    
    super.initState();
    navigategetstarted();
  }

  navigategetstarted()async{
    await Future.delayed(Duration(milliseconds: 2500), (){});
    Navigator.push(this.context, MaterialPageRoute(builder: ((context) =>StartedView())));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Container(
        decoration: BoxDecoration(
  gradient: LinearGradient(
  begin: Alignment(-1.00, 0.08),
  end: Alignment(1, -0.08),
  colors: [Color(0xFF92A3FD), Color(0xFF9DCEFF)],
  ),
)
        ,
        child: Column(
          children: [
            Center(
              child: Column
              (
                children: [
                  SizedBox(height: 280,),
                  Text("FitLife.",style: GoogleFonts.aleo(
                    fontSize: 50,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),),
                  SizedBox(height: 10,),
                  CircularProgressIndicator(
                    color: Colors.white,
                  strokeWidth: 5,
                    )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}