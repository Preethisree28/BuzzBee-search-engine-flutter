import 'package:flutter/material.dart';

import 'footer_text.dart';

class MobileFooter extends StatelessWidget {
  const MobileFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Wrap(
        children: const [
          FooterText(title: 'About'),
          SizedBox(width: 10,),
          FooterText(title: 'Advertising'),
          SizedBox(width: 10,),
          FooterText(title: 'BuzBiz'),
          SizedBox(width: 10,),
          FooterText(title: 'How Buzz works'),
          SizedBox(width: 10,),
          FooterText(title: 'Privacy'),
          SizedBox(width: 10,),
          FooterText(title: 'Terms'),
          SizedBox(width: 10,),
          FooterText(title: 'Settings'),
          SizedBox(width: 10,),
        ],
      ),
    );
  }
}
