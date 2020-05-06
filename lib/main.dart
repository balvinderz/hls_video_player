import 'package:flutter/material.dart';
import 'package:hls_video_player/hls_video_player/temp.dart';

import 'hls_video_player/hls.dart';

void main(){
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  HlsVideoPlayer player;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            child: HtmlElementView(
              viewType :
              'videoPlayer-1'
            ),
          ),
          RaisedButton(
            child: Text("Play"),
            onPressed: (){
              player.videoElement.play();
            },
          )
        ],
      ),
    );

  }

  @override
  void initState() {
    super.initState();


  player  = HlsVideoPlayer('https://test-streams.mux.dev/x36xhzz/x36xhzz.m3u8');



  }
}
