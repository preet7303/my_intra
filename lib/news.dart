import 'package:flutter/material.dart';
import 'package:my_intra/profile.dart';

import 'custom_text.dart';
import 'games.dart';
import 'home.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  int _selectedIndex = 2;
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
