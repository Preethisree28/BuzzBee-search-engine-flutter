import 'package:buzz_bee/colors.dart';
import 'package:buzz_bee/screens/search_screen.dart';
import 'package:flutter/material.dart';

class SearchHeader extends StatelessWidget {
  const SearchHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 25.0),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 15, top: 4),
            child: SizedBox(
              height:  50,
              width: size.width <= 768 ? 180 :200,
              child: Image.asset(
                'assets/images/buzzbeelogo.jpeg',
              ),
            ),
          ),
          Container(
            width: size.width <= 768 ? 180 :size.width * 0.45,
            height: size.height <= 768 ? 30 : 35,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22),
              border: Border.all(
                color: componentsColor,
              ),
            ),
            child: TextFormField(
              cursorColor: componentsColor,
              cursorHeight: 16,
              onFieldSubmitted: (query) {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>
                        SearchScreen(searchQuery: query, start:'0'),
                  ),
                );
              },
              style: const TextStyle(
                fontSize: 16,
              ),
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                suffixIcon: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Container(
                    constraints: const BoxConstraints(maxWidth: 150),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Icon(
                          Icons.search,
                          color: componentsColor,
                          size: 20,
                        ),
                      ],
                    ),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: contrastColor),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                enabledBorder: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
