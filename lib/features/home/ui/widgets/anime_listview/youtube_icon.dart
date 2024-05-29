import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class YoutubeIcon extends StatelessWidget {
  final String urlLink;
  const YoutubeIcon({super.key, required this.urlLink});
  String getYoutubeVideoId(String url) {
    final uri = Uri.parse(url);
    final queryParameters = uri.queryParameters;
    return queryParameters['v'] as String;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 50, 
        decoration: BoxDecoration(
            shape: BoxShape.circle, color: Colors.red.withOpacity(0.8)),
        child: Center(
          child: IconButton(
            icon: const Icon(Icons.play_arrow),
            onPressed: () {
              String youtubeId = getYoutubeVideoId(urlLink);
              launch('https://www.youtube.com/watch?v=$youtubeId');
            },
          ),
        ),
      ),
    );
  }
}
