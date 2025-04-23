import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_intra/home.dart';

import 'custom_text.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff001523),
      body: SafeArea(
        child: CustomContainer(
          Column(
            mainAxisAlignment: MainAxisAlignment.start,

            children: [
              SizedBox(height: 20),
              Image.asset(
                "assets/images/ic_app_logo.png",
                width: 100,
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: CustomText(
                  title: "LOGIN",
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.pink,
                ),
              ),
              CustomTextField("Email"),
              SizedBox(height: 20),
              CustomTextField("Password"),
              SizedBox(height: 20),
              TextButton(
                onPressed: () {},
                child: Text(
                  "FORGOT PASSWORD?",
                  style: GoogleFonts.poppins(
                    color: Colors.pink,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => HomePage()),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      title: "LOGIN",
                      color: Colors.white,
                      fontSize: 20,
                    ),
                    Icon(
                      Icons.arrow_circle_right,
                      size: 35,
                      color: Colors.white,
                    ),
                  ],
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink,
                  fixedSize: Size(300, 45),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
