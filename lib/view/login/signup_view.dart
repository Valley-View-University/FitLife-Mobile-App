import 'package:fitness/common/colo_extension.dart';
import 'package:fitness/common_widget/round_button.dart';
import 'package:fitness/common_widget/round_textfield.dart';
import 'package:fitness/view/login/complete_profile_view.dart';
import 'package:fitness/view/login/login_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  bool isCheck = false;
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: TColor.white,
      body: SingleChildScrollView(
        child: Container(
          height: media.height,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage( 
                fit: BoxFit.cover,
                image: AssetImage("assets/img/Image4.png"))
            ),
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 100,),
                    Text(
                      "Join the Fitness Revolution!",
                      style: GoogleFonts.inter(
                        color: Colors.white,
                        fontSize: 27,
                        fontWeight: FontWeight.w400
                      ),
                    ),
                    
                    SizedBox(
                      height: 30,
                    ),
                    const RoundTextField(
                      hitText: "First Name",
                      icon: "assets/img/user_text.png",
                    ),
                    SizedBox(
                      height: media.width * 0.04,
                    ),
                    const RoundTextField(
                      hitText: "Last Name",
                      icon: "assets/img/user_text.png",
                    ),
                    SizedBox(
                      height: media.width * 0.04,
                    ),
                    const RoundTextField(
                      hitText: "Email",
                      icon: "assets/img/email.png",
                      keyboardType: TextInputType.emailAddress,
                    ),
                    SizedBox(
                      height: media.width * 0.04,
                    ),
                    RoundTextField(
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
                    Row(
                      
                      children: [
                        IconButton(
                          onPressed: () {
                            setState(() {
                              isCheck = !isCheck;
                            });
                          },
                          icon: Icon(
                            isCheck
                                ? Icons.check_box_outlined
                                : Icons.check_box_outline_blank_outlined,
                            color: Color(0xFFACA3A5),
                            size: 20,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child:  Text(
                              "By continuing you accept our Privacy Policy and\nTerm of Use",
                              style: TextStyle(color: Color(0xFFACA3A5), fontSize: 10),
                            ),
                         
                        )
                      ],
                    ),
                    SizedBox(
                      height:20,
                    ),
                    
                   
                    TextButton(onPressed: (){
                       Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const CompleteProfileView()));
                    }, 
                    style: ButtonStyle(
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
                       padding: MaterialStatePropertyAll(EdgeInsets.only(top:20,bottom: 20,left: 100,right: 100)),
                      backgroundColor: MaterialStatePropertyAll(Colors.white),
                    ),
                    child: Text("SignUp & Continue",
                    style: GoogleFonts.poppins(

                    ),
                    )),
                    SizedBox(
                      height: media.width * 0.04,
                    ),
                    Text("Signup with Google",
                    style:GoogleFonts.poppins(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                     
                    ) ,
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
                            width: 210,
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
                                )
                            ,Padding(
                              padding: const EdgeInsets.all(3.0),
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
                    
                    TextButton(
                      onPressed: () {
                         Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginView()));
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "Already have an account? ",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            "Login",
                            style: TextStyle(
                                color:Colors.grey,
                                fontSize: 14,
                                fontWeight: FontWeight.w700),
                          )
                        ],
                      ),
                    ),
                    
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
