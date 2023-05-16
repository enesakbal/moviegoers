import 'dart:developer';

import 'package:url_launcher/url_launcher.dart';

import '../constants/youtube_video_constants.dart';

class LaunchUrl {
  static Future<void> openYoutubeVideoFromKey(String key) async {
    try {
      final url = Uri.parse(YoutubeVideoConstants.videoUrl + key);

      if (await canLaunchUrl(url)) {
        launchUrl(url, mode: LaunchMode.externalNonBrowserApplication);
      }
    } catch (e) {
      log(e.toString());
    }
  }
}

//todo linkedin url
//todo github url
