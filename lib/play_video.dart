import 'package:flutter/material.dart';
import 'package:my_intra/custom_text.dart';
import 'package:video_player/video_player.dart';

class PlayVideo extends StatefulWidget {
  String videoPath;
  PlayVideo({
    Key? key,
    required this.videoPath,
  }) : super(key: key);

  @override
  State<PlayVideo> createState() => _PlayVideoState();
}

class _PlayVideoState extends State<PlayVideo> {
  late VideoPlayerController _controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = VideoPlayerController.asset(widget.videoPath)
    ..initialize().then((_) {
      setState(() {

      });
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:Container(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/generic_bg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(

            children: [
              Row(
                children: [
                  IconButton(onPressed: (){
                    Navigator.pop(context);
                  }, icon: Icon(Icons.arrow_back, color: Colors.white,)),
                  CustomText(title: "Mero Kalpanama Aaja Euti Pari \n Deepak Limbu", color: Colors.pink, fontWeight: FontWeight.bold, fontSize: 18,)
                ],
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height/4,
              ),
              Center(
                child: _controller.value.isInitialized?
                AspectRatio(aspectRatio: _controller.value.aspectRatio,
                  child: VideoPlayer(_controller),
                ): CircularProgressIndicator(),
              ),
            ],
          ),
        ),


      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        setState(() {
          _controller.value.isPlaying? _controller.pause() : _controller.play();
        });
      }, child: Icon(_controller.value.isPlaying? Icons.pause: Icons.play_arrow),),
    );
  }
}
