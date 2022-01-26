import 'package:buzz_bee/web/search_button.dart';
import 'package:flutter/material.dart';
class SearchButtons extends StatelessWidget {

  const SearchButtons({Key? key, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            SearchButton(text: 'Buzzing Search'),
           SizedBox(width: 15,),
          ],
        ),
      ],
    );
  }
}
