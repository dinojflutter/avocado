import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Detailscreen extends StatefulWidget {
  final String text;
  final IconData icon;
  final Color color;

  const Detailscreen(
      {super.key, required this.text, required this.icon, required this.color});

  @override
  State<Detailscreen> createState() => _DetailscreenState();
}

class _DetailscreenState extends State<Detailscreen> {
  final videourl = "https://www.youtube.com/watch?v=Pmg2PtMwhgs";
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    final videoId = YoutubePlayer.convertUrlToId(videourl);
    _controller = YoutubePlayerController(
        initialVideoId: videoId!,
        flags: const YoutubePlayerFlags(autoPlay: false));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: "Post".text.color(Colors.white).make(),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              FeatherIcons.heart,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              FeatherIcons.share2,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            YoutubePlayer(
              progressColors: const ProgressBarColors(
                handleColor: Colors.white,
                playedColor: Colors.red,
              ),
              controller: _controller,
              showVideoProgressIndicator: true,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      width: 150,
                      height: 32,
                      decoration: BoxDecoration(
                          color: widget.color,
                          borderRadius: BorderRadius.circular(18)),

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              widget.icon,
                              size: 19,
                              color: Colors.white,
                            ),
                          ),
                          widget.text.text.color(Colors.white).make(),
                        ],
                      ),
                      // child: "Youtube".text.make(),
                    ),
                  ),
                  const Spacer(),
                  "1 hour ago".text.make(),
                ],
              ),
            ),
            "".text.make(),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child:
                  Text("""2,401 views  Aug 11, 2022  #ntvnews #ntvplus #nepal
#nabinkrishi #krishiprabidhi #krishinepal #nepalkrishi #krishi #ntvkrishi  #ntvplus #ntvnews #nepaltelevision #nepal
            
Subscribe to our YouTube Channel and get daily program updates of NTV, NTV PLUS, and NTV NEWS.STAY TUNED FOR MORE UPCOMING PROGRAMS FROM NEPAL TELEVISION !!!Nepal Television HD को सबै Channel (NTV News, NTV Khohalpur, NTV Plus)को सम्पूर्ण कार्यक्रम Youtube मा समयमै हेर्न र कार्यक्रम बारे जानकारी प्राप्त गर्न हामीलाई Youtube मा subscribe गर्नुहोस:नेपाल टेलिभिजनको App Download गर्नुहोस साथै हामीलाई Facebook, Instagram मा Follow गर्न पनी नभुल्नु होला  ।  Mobile App: http://bit.ly/nepaltelevision​ Online Website: https://nepaltvonline.com/​ Website: http://ntv.org.np/​ Facebook: https://www.facebook.com/neptv2041/​ Instagram: https://www.instagram.com/nepaltelevi... (NTV. Digital Platform is Managed by NEW IT VENTURE CORPORATION www.newitventure.com)

"""),
            )
          ],
        ),
      ),
    );
  }
}
