import 'package:avocado_demo/constant/my_colors.dart';
import 'package:avocado_demo/presentation/Post/Post_screen.dart';
import 'package:avocado_demo/presentation/screens/trending.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
            centerTitle: true,
            title: "Krishi APP".text.color(Colors.white).make(),
            actions: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      FeatherIcons.search,
                      color: MyColor.whiteColor,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(FeatherIcons.share2,
                        color: MyColor.whiteColor),
                  ),
                ],
              )
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  height: 45,
                  decoration: const BoxDecoration(color: Colors.white
                      // borderRadius: BorderRadius.circular(25.0),
                      ),
                  child: const TabBar(
                    indicatorColor: Colors.green,
                    labelColor: Colors.black,
                    tabs: [
                      Tab(
                        text: 'Trending',
                      ),
                      Tab(
                        text: 'Popular Video',
                      ),
                      Tab(
                        text: 'News',
                      ),
                      // Tab(
                      //   text: 'Settings',
                      // )
                    ],
                  ),
                ),
                const Expanded(
                    child: TabBarView(
                  children: [
                    Trending(),
                    Center(
                      child: Text("Main page"),
                    ),

                    Postscreen(),

                    // Center(
                    //   child: Text('Settings Page'),
                    // )
                  ],
                ))
              ],
            ),
          )),
    );
  }
}


//  bottom: const TabBar(
//             isScrollable: true,
//             labelColor: Colors.white,
//             indicatorColor: Colors.green,
//             tabs: [
//               Text("Trending"),
//               Text("Trending"),
//               Text("Trending"),
//             ],
//           ),