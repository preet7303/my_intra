import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  String title;
  double fontSize;
  Color color;
  FontWeight fontWeight;
  CustomText({
    required this.title,
    this.fontSize = 14,
    required this.color,
    this.fontWeight = FontWeight.w500,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.poppins(
        fontSize: fontSize,
        color: color,
        fontWeight: fontWeight,
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  String hintTitle;

  CustomTextField(this.hintTitle, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(title: hintTitle, color: Colors.lightBlueAccent),
        SizedBox(
          width: MediaQuery.sizeOf(context).width / 1.2,
          height: 45,
          child: TextField(
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 1.0, color: Colors.white),
                borderRadius: BorderRadius.circular(10),
              ),

              hintText: "Enter",
            ),
          ),
        ),
      ],
    );
  }
}

class CustomContainer extends StatelessWidget {
  Widget widget;

  CustomContainer(this.widget, {super.key,});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/generic_bg.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: widget,
    );



  }
}

class CustomRowContainer extends StatelessWidget {
  Widget widget;
 GestureTapCallback OnTap;

 CustomRowContainer(
     this.widget, this.OnTap,
     {super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: OnTap,
      child: Container(
        child: widget,
        width: MediaQuery.sizeOf(context).width / 1.2,
        height: 170,
        color: Colors.white,
      ),
    );
  }
}

class CustomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onTap;

  CustomNavBar(
      this.selectedIndex,
      this.onTap,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: selectedIndex,
      selectedFontSize: 15,
      onTap: onTap,
      backgroundColor: Colors.black,
      selectedItemColor: Colors.white70,
      unselectedItemColor: Colors.white70,
      items: [
        BottomNavigationBarItem(
          icon: Image.asset(
            selectedIndex == 0
                ? "assets/images/ic_home_selected.png"
                : "assets/images/ic_home_generic.png",
            width: 20,
            height: 20,
          ),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            selectedIndex == 1
                ? "assets/images/ic_games_selected.png"
                : "assets/images/ic_games_generic.png",
            width: 20,
            height: 20,
          ),
          label: "Games",
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            selectedIndex == 2
                ? "assets/images/ic_news_selected.png"
                : "assets/images/ic_news_generic.png",
            width: 20,
            height: 20,
          ),
          label: "News",
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            selectedIndex == 3
                ? "assets/images/ic_profile_selected.png"
                : "assets/images/ic_profile_generic.png",
            width: 20,
            height: 20,
          ),
          label: "Profile",
        ),
      ],
    );
  }
}
