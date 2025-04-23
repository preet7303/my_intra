import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_intra/home.dart';
import 'package:my_intra/login.dart';
import 'package:my_intra/sign_up.dart';

import 'custom_text.dart';

class Welcome_Page extends StatefulWidget {
  const Welcome_Page({super.key});

  @override
  State<Welcome_Page> createState() => _Welcome_PageState();
}

class _Welcome_PageState extends State<Welcome_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff001523),
      body: SafeArea(
        child: Container(
          width: MediaQuery.sizeOf(context).width,
          height: MediaQuery.sizeOf(context).height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/generic_bg.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            physics: NeverScrollableScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
            
              children: [
                Image.asset(
                  "assets/images/ic_app_logo.png",
                  width: 100,
                  height: 100,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: CustomText(
                    title: "Welcome",
                    fontSize: 35,
                    color: Colors.pink,
                  ),
                ),
                SizedBox(height: MediaQuery.sizeOf(context).height /10),
                Container(
                  color: Color(0xff001523),
                  width: MediaQuery.sizeOf(context).width,
                  height: MediaQuery.sizeOf(context).height / 1.1,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (_)=> SignupPage()));
                            },
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                              CustomText(title: "Signup with email", color: Colors.white, fontSize: 20 ),
                              Icon(Icons.arrow_circle_right, size: 35, color: Colors.white,)
            
                            ]),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.pink,
                              fixedSize: Size(300, 55),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            fixedSize: Size(300, 55),
                            backgroundColor: Colors.transparent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                              side: BorderSide(color: Colors.pink),
                            )
                          ),
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (_) => LoginPage()));
                          }, child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomText(title: "Login with email", color: Colors.white ),
                              Icon(Icons.arrow_circle_right_sharp, color: Colors.white, size: 35,)
                            ],
                          ),
                        ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, bottom: 10),
                        child: CustomText(title: "other ways to Sign in", color: Colors.white70, fontSize: 14, fontWeight: FontWeight.w300,),
                      ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              fixedSize: Size(200, 50),
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(14)
                              )
                            ),
                            onPressed: (){}, child: Row(
                          children: [
                            CustomText(title: "Continue with google", color: Colors.black, fontWeight: FontWeight.w400, fontSize: 12,)
                          ],
                        )),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (_)=> HomePage()));
                            },
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  CustomText(title: "Skip Login", color: Colors.white, fontSize:15 ),
                                  Icon(Icons.arrow_circle_right, size: 20, color: Colors.white,)
            
                                ]),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.pink,
                              fixedSize: Size(150, 45),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                        )
                      ],
            
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


