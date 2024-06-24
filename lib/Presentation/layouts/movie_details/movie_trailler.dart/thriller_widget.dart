import 'package:flutter/material.dart';
import 'package:movies_app/core/constants.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class ThrillerWidget extends StatefulWidget {
  const ThrillerWidget({super.key, required this.videoKey});
  final String videoKey;
  @override
  State<ThrillerWidget> createState() => _ThrillerWidgetState();
}

class _ThrillerWidgetState extends State<ThrillerWidget> {
  late String videoURL;
  late YoutubePlayerController _controller;
  @override
  void initState() {
    videoURL = Constants.youtubeUrl(videoKey: widget.videoKey);
    final videoID = YoutubePlayer.convertUrlToId(videoURL);
    _controller = YoutubePlayerController(
        initialVideoId: videoID ?? "",
        flags: const YoutubePlayerFlags(
          autoPlay: false,
        ));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      backgroundColor: Colors.black87,
      elevation: 0,
      content: YoutubePlayer(
        width: double.infinity,
        controller: _controller,
        showVideoProgressIndicator: true,
        bottomActions: [
          CurrentPosition(),
          ProgressBar(
            isExpanded: true,
            colors: const ProgressBarColors(
                playedColor: Colors.red, handleColor: Colors.redAccent),
          ),
          const PlaybackSpeedButton(),
          FullScreenButton()
        ],
      ),
    );
  }
}
