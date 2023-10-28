import 'package:avocado_demo/presentation/detail/detail_screen.dart';
import 'package:avocado_demo/utiles/my_container.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Trending extends StatefulWidget {
  const Trending({super.key});

  @override
  State<Trending> createState() => _TrendingState();
}

class _TrendingState extends State<Trending> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            10.heightBox,
            GridView(
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 15, mainAxisSpacing: 15, crossAxisCount: 2),
              children: [
                Mycontainer(
                    onpressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Detailscreen(
                            icon: FeatherIcons.youtube,
                            text: "Youtube",
                            color: Colors.red,
                          ),
                        ),
                      );
                    },
                    text: "Youtube",
                    icon: FeatherIcons.youtube,
                    color: Colors.red),
                Mycontainer(
                    onpressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Detailscreen(
                            icon: FeatherIcons.facebook,
                            text: "facebook",
                            color: Colors.blue,
                          ),
                        ),
                      );
                    },
                    text: "Youtube",
                    icon: FeatherIcons.facebook,
                    color: Colors.blue),
                Mycontainer(
                    onpressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Detailscreen(
                            icon: FeatherIcons.youtube,
                            text: "Youtube",
                            color: Colors.red,
                          ),
                        ),
                      );
                    },
                    text: "Youtube",
                    icon: FeatherIcons.youtube,
                    color: Colors.red),
                Mycontainer(
                    onpressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Detailscreen(
                            icon: FeatherIcons.youtube,
                            text: "Youtube",
                            color: Colors.red,
                          ),
                        ),
                      );
                    },
                    text: "Youtube",
                    icon: FeatherIcons.youtube,
                    color: Colors.red),
                Mycontainer(
                    onpressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Detailscreen(
                            icon: FeatherIcons.youtube,
                            text: "Youtube",
                            color: Colors.red,
                          ),
                        ),
                      );
                    },
                    text: "Youtube",
                    icon: FeatherIcons.youtube,
                    color: Colors.red),
                Mycontainer(
                    onpressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Detailscreen(
                            icon: FeatherIcons.youtube,
                            text: "Youtube",
                            color: Colors.red,
                          ),
                        ),
                      );
                    },
                    text: "Youtube",
                    icon: FeatherIcons.youtube,
                    color: Colors.red),
                Mycontainer(
                    onpressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Detailscreen(
                            icon: FeatherIcons.youtube,
                            text: "Youtube",
                            color: Colors.red,
                          ),
                        ),
                      );
                    },
                    text: "Youtube",
                    icon: FeatherIcons.youtube,
                    color: Colors.red),
              ],
            )
          ],
        ),
      ),
    );
  }
}
