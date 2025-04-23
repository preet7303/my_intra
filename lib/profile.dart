import 'package:flutter/material.dart';

import 'custom_text.dart';
import 'games.dart';
import 'home.dart';
import 'news.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int _selectedIndex = 3;
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
        Column(

        )
      ),
      bottomNavigationBar: CustomNavBar(_selectedIndex, _onNavItemTapped),
    );
  }
}
