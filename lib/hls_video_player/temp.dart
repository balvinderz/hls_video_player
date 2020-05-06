import 'dart:html';
import 'dart:ui' as ui ;

import 'package:js/js.dart';

import 'hls.dart';
class HlsVideoPlayer
{
  String src;
  VideoElement videoElement ;
  Hls hls;

  HlsVideoPlayer(this.src)
  {
    videoElement = VideoElement()
        ..autoplay =false
      ..style.border = 'none';

    // ignore: UNDEFINED_PREFIXED_NAME
    ui.platformViewRegistry.registerViewFactory(
        'videoPlayer-1', (int viewId) {
          return videoElement;
        });
    hls = new Hls();
    hls.on('hlsMediaAttaching', allowInterop((_,__) {
      print(_);
      print(__);
      //print('hlsMediaAttaching');

    }));
    hls.on('hlsManifestParsed', () {
      print('hlsManifestParsed');
    });
//    hls.on('hlsMediaAttaching',allowInterop((){
//      print("sfad");
//    }));
    hls.attachMedia(videoElement);

    hls.loadSource(src);





  }

}