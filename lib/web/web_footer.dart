import 'package:buzz_bee/colors.dart';
import 'package:buzz_bee/widgets/footer_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WebFooter extends StatelessWidget {
  const WebFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color:backgroundColor,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:const [
                FooterText(title: 'About'),
                SizedBox(width: 10,),
                FooterText(title: 'Advertising'),
                SizedBox(width: 10,),
                FooterText(title: 'BuzBiz'),
                SizedBox(width: 10,),
                FooterText(title: 'How Buzz works'),
                SizedBox(width: 10,),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:const [
                FooterText(title: 'Privacy'),
                SizedBox(width: 10,),
                FooterText(title: 'Terms'),
                SizedBox(width: 10,),
                FooterText(title: 'Settings'),
                SizedBox(width: 10,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
