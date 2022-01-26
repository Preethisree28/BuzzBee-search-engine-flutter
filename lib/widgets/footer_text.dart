import 'dart:ui';

import 'package:buzz_bee/colors.dart';
import 'package:flutter/material.dart';

class FooterText extends StatelessWidget {
  final String title;
  const FooterText({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed:(){},
        child:Text(title,
        style:const TextStyle(
           color: componentsColor,
        ),
        ),
    );
  }
}
