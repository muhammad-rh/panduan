import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoPanduanDetail extends StatefulWidget {
  const VideoPanduanDetail({Key? key}) : super(key: key);

  static String videoId = '0Rze8CwQw-g';

  @override
  State<VideoPanduanDetail> createState() => _VideoPanduanDetailState();
}

class _VideoPanduanDetailState extends State<VideoPanduanDetail> {
  bool isFullScreen = false;

  final YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId: VideoPanduanDetail.videoId,
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
      ));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: !isFullScreen
          ? AppBar(
              title: const Text('Video Panduan Pendaftaran'),
              centerTitle: true,
            )
          : null,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 600,
                child: ListView.separated(
                  itemCount: 1,
                  separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(height: 20);
                  },
                  itemBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      child: Column(
                        children: [
                          YoutubePlayerBuilder(
                            player: YoutubePlayer(
                              controller: _controller,
                            ),
                            onEnterFullScreen: () {
                              setState(() {
                                isFullScreen = true;
                              });
                            },
                            onExitFullScreen: () {
                              setState(() {
                                isFullScreen = false;
                              });
                            },
                            builder: (context, player) {
                              return Column(
                                children: [
                                  player,
                                ],
                              );
                            },
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
