// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

//1) import Pakage
//2)add Permission in android menifest and IOS Info.plist files
//3)make Controller
//4)

class VideoPlayerClassAJK extends StatefulWidget {
  const VideoPlayerClassAJK({super.key});

  @override
  State<VideoPlayerClassAJK> createState() => _VideoPlayerClassAJKState();
}

class _VideoPlayerClassAJKState extends State<VideoPlayerClassAJK> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = VideoPlayerController.networkUrl(Uri.parse(
       'https://drive.google.com/file/d/1yLOTbxvUeqUAjqPNX6rZXOIFAsLIL0g8/view?usp=drive_link'
      // 'https://drive.google.com/uc?export=download&id=1hlWVUIWC4hPiDLLMnL9_a9m8mYP8xQDS'
    ))
      ..initialize().then((frame) { 
        setState(() {});
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
      appBar: AppBar(
        title: Text('Video Player'),
      ),
      body: Center(
        child: _controller.value.isInitialized
            ? AspectRatio(
            aspectRatio: _controller.value.aspectRatio,
            child: VideoPlayer(_controller))
            : Container(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _controller.value.isPlaying
              ? _controller.pause()
              : _controller.play();
        },
        child:
        Icon(_controller.value.isPlaying ? Icons.pause : Icons.play_arrow),
      ),
    );
  }
}