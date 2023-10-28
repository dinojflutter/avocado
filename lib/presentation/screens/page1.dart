import 'package:avocado_demo/constant/my_colors.dart';
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
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: "Video".text.color(Colors.white).make(),
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
                icon:
                    const Icon(FeatherIcons.share2, color: MyColor.whiteColor),
              ),
            ],
          )
        ],
      ),
    );
  }
}
