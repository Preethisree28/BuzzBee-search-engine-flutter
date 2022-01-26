import 'package:buzz_bee/colors.dart';
import 'package:buzz_bee/screens/search_screen.dart';
import 'package:buzz_bee/widgets/search_header.dart';
import 'package:flutter/material.dart';

class SearchButton extends StatelessWidget {
  final String text;
  const SearchButton({Key? key, required this.text,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(4),
        ),
      ),
      onPressed: (){
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) =>
                SearchHeader(),
          ),
        );
      },
      elevation: 0,
      child: Text(text),
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 18),
      textColor: Colors.black,
      color: componentsColor,
      focusColor:contrastColor,
      hoverColor:contrastColor,
    );
  }
}
