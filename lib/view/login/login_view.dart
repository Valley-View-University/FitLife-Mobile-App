import 'package:fitness/common/colo_extension.dart';
import 'package:fitness/common_widget/round_button.dart';
import 'package:fitness/common_widget/round_textfield.dart';
import 'package:fitness/view/home/home_view.dart';
import 'package:fitness/view/login/complete_profile_view.dart';
import 'package:fitness/view/login/signup_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool isCheck = false;
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xB792A3FD),
      body: SingleChildScrollView(  

        child: SafeArea(

          child: Container(
            height: media.height * 0.9,
            
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
               const Spacer(),
                Image.asset("assets/img/layer4.png",height: 120,),
                Text(
                  "FitLife.",
                  style: GoogleFonts.aleo(
                    color: Colors.white,
                    fontSize: 64,
                    fontWeight:FontWeight.w400, 
                  )
                ),
                Text(
          'Achieve your fitness goals!',
          style: GoogleFonts.aleo(
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.w400
          ),),
                SizedBox(
                  height: media.width * 0.05,
                ),
                SizedBox(
                  height: media.width * 0.04,
                ),
                const RoundTextField(
                  controller:null ,
                  hitText: "Email",
                  icon: "assets/img/email.png",
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(
                  height: media.width * 0.04,
                ),
                RoundTextField(
                  controller: null,
                  hitText: "Password",
                  icon: "assets/img/lock.png",
                  obscureText: true,
                  rigtIcon: TextButton(
                      onPressed: () {},
                      child: Container(
                          alignment: Alignment.center,
                          width: 20,
                          height: 20,
                          child: Image.asset(
                            "assets/img/show_password.png",
                            width: 20,
                            height: 20,
                            fit: BoxFit.contain,
                            color: TColor.gray,
                          ))),
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Forgot your password?",
                      style: TextStyle(
                          color: Color(0xFFACA3A5),
                          fontSize: 15,
                          decoration: TextDecoration.underline),
                    ),
                  ],
                ),
               const Spacer(),
                RoundButton(
                  
                    title: "Login",
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const HomeView()));
                    }),
                SizedBox(
                  height: media.width * 0.04,
                ),
                Row(
                  // crossAxisAlignment: CrossAxisAlignment.,
                  children: [
                    Expanded(
                        child: Container(
                      height: 1,
                      color: TColor.gray.withOpacity(0.5),
                    )),
                    Text(
                      "  Or  ",
                      style: TextStyle(color: TColor.black, fontSize: 12),
                    ),
                    Expanded(
                        child: Container(
                      height: 1,
                      color: TColor.gray.withOpacity(0.5),
                    )),
                  ],
                ),
                SizedBox(
                  height: media.width * 0.04,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {}, 

                      child: Container(
                        width: 150,
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: TColor.white,
                          border: Border.all(
                            width: 1,
                            color: TColor.gray.withOpacity(0.4),
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          
                          children: [
                            Image.asset(
                              "assets/img/google.png",
                              width: 20,
                              height: 20,
                            ),

                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Google",
                              style: GoogleFonts.poppins
                              (
                                fontSize: 16,
                                color: Color(0xFF92A3FD),
                                fontWeight: FontWeight.w700
                              ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: media.width * 0.04,
                    ),
                    
                  ],
                ),
                SizedBox(
                  height: media.width * 0.04,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(this.context, MaterialPageRoute(builder: ((context) => SignUpView())));
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      GestureDetector(

                        child: Text(
                          "Don’t have an account yet? ",
                          style: TextStyle(
                            color: TColor.black,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      Text(
                        "Register",
                        style: TextStyle(
                            color: TColor.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: media.width * 0.01,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
