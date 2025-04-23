import 'package:flutter/material.dart';
import 'package:my_intra/profile.dart';

import 'custom_text.dart';
import 'home.dart';
import 'news.dart';

class GamesPage extends StatefulWidget {
  const GamesPage({super.key});

  @override
  State<GamesPage> createState() => _GamesPageState();
}

class _GamesPageState extends State<GamesPage> {
  int _selectedIndex = 1;
  void _onNavItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      switch (index) {
        case 0:
          Navigator.push(context, MaterialPageRoute(builder: (_) => HomePage()));
          break;
        case 1:
          Navigator.push(context, MaterialPageRoute(builder: (_) => GamesPage()));
          break;
        case 2:
          Navigator.push(context, MaterialPageRoute(builder: (_) => NewsPage()));
          break;
        case 3:
          Navigator.push(context, MaterialPageRoute(builder: (_) => ProfilePage()));
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomContainer(
        SafeArea(
          child: Column(
            children: [
            CustomText(title: "Games Page", color: Colors.pink, fontWeight: FontWeight.bold, fontSize: 25,)],
          
          ),
        ),

      ),
        bottomNavigationBar: CustomNavBar(
            _selectedIndex,
            _onNavItemTapped
        )
    );
  }
}
