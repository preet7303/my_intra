import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_intra/custom_text.dart';
import 'package:my_intra/games.dart';
import 'package:my_intra/news.dart';
import 'package:my_intra/play_video.dart';
import 'package:my_intra/profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
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
    List<String> Images = [
      "assets/images/slider1.jpg",
      "assets/images/slider2.jpg",
      "assets/images/slider3.jpg",
    ];
    return Scaffold(
      body: CustomContainer(
        SingleChildScrollView(
          child: Column(
            children: [
              CarouselSlider.builder(
                itemCount: 3,
                itemBuilder: (BuildContext context, int index, int itemindex) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(5.0),

                    child: Image.asset(Images[index], fit: BoxFit.contain),
                  );
                },
                options: CarouselOptions(
                  enableInfiniteScroll: true,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 2),
                  viewportFraction: 0.9,
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 8.0,
                      left: 8.0,
                      top: 12.0,
                    ),
                    child: Container(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Image.asset("assets/images/slider1.jpg"),
                          ),
                          Text(
                            "Mero Dance Universe Season 2 Auditions are",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                              color: Colors.black54,
                              fontSize: 11,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: CustomText(
                              title: "EXPLORE",
                              color: Colors.pink,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      width: MediaQuery.sizeOf(context).width / 2.2,
                      height: 230,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0, top: 12.0),
                    child: Container(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Image.asset("assets/images/slider1.jpg"),
                          ),
                          Text(
                            "Mero Dance Universe Season 2 Auditions are",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                              color: Colors.black54,
                              fontSize: 11,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: CustomText(
                              title: "EXPLORE",
                              color: Colors.pink,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      width: MediaQuery.sizeOf(context).width / 2.2,
                      height: 230,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      title: "Mero Voice - Trending",
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: CustomText(
                        title: "View All",
                        color: Colors.white60,
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: CustomRowContainer(
                        Image.asset(
                          "assets/images/video_image1.jpg",
                          fit: BoxFit.fill,
                        ),
                        () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder:
                                  (_) => PlayVideo(
                                    videoPath: "assets/videos/video1.mp4",
                                  ),
                            ),
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: CustomRowContainer(
                        Image.asset(
                          "assets/images/video_image2.jpg",
                          fit: BoxFit.fill,
                        ),
                        () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder:
                                  (_) => PlayVideo(
                                    videoPath: "assets/videos/video1.mp4",
                                  ),
                            ),
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: CustomRowContainer(
                        Image.asset(
                          "assets/images/video_image3.jpg",
                          fit: BoxFit.fill,
                        ),
                        () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder:
                                  (_) => PlayVideo(
                                    videoPath: "assets/videos/video1.mp4",
                                  ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: CustomNavBar(_selectedIndex, _onNavItemTapped)

    );
  }
}
