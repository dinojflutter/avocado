import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Mycontainer extends StatelessWidget {
  const Mycontainer({
    Key? key,
    required this.text,
    required this.icon,
    this.onpressed,
    required this.color,
  }) : super(key: key);

  final String text;
  final Color color;

  final IconData icon;

  final VoidCallback? onpressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpressed,
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                "NABIN KRISHI PRABIDHI || Nepal Television ".text.bold.make(),
                "2079-04-23".text.fontWeight(FontWeight.w500).make()
              ],
            ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: color, borderRadius: BorderRadius.circular(18)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Row(
                      children: [
                        Icon(
                          icon,
                          color: Colors.white,
                        ),
                        10.widthBox,
                        text.text
                            .color(Colors.white)
                            .fontWeight(FontWeight.w600)
                            .make(),
                      ],
                    ),
                  ),
                ),
                const Spacer(),
                "1 hour ago".text.make(),
              ],
            ),
            2.heightBox,
            Expanded(
              child: Image.network(
                "https://cdn.zeebiz.com/sites/default/files/styles/zeebiz_850x478/public/2021/06/30/152975-krishi.jpg?itok=8m5Uo3kh",
                fit: BoxFit.contain,
              ),
            )
          ],
        ),
      ),
    );
  }
}
