import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_intra/custom_text.dart';
import 'package:my_intra/home.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff001523),
      body: SafeArea(
        child: CustomContainer(
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
        
            children: [
              Image.asset(
                "assets/images/ic_app_logo.png",
                width: 100,
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: CustomText(
                  title: "SIGNUP",
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.pink,
                ),
              ),
              CustomTextField("Email"),
              SizedBox(height: 20),
              CustomTextField("Name"),
              SizedBox(height: 20),
              CustomTextField("Password"),
              SizedBox(height: 20),
              CustomTextField("Confirm Password"),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "By signing up you agree to",
                    style: GoogleFonts.poppins(
                      color: Colors.white60,
                      fontSize: 12,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Terms & Conditions",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 13,
                      ),
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_)=> HomePage()));
                },
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(title: "SIGNUP", color: Colors.white, fontSize: 20 ),
                      Icon(Icons.arrow_circle_right, size: 35, color: Colors.white,)
        
                    ]),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink,
                  fixedSize: Size(300, 45),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              )
            ],
        
          ),
        ),
      ),
    );
  }
}
