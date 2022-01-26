import 'package:buzz_bee/colors.dart';
import 'package:buzz_bee/screens/search_screen.dart';
import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: Image(
            image: const AssetImage('assets/images/buzzbeelogo.jpeg'),
            height: size.height * 0.15,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          width: size.width > 768 ? size.width * 0.4 : size.width * 0.9,
          height: 40,
          child: TextFormField(
            onFieldSubmitted: (query) {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) =>
                      SearchScreen(searchQuery: query, start:'0'),
                ),
              );
            },
            cursorColor: componentsColor,
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: contrastColor),
                borderRadius: BorderRadius.circular(30.0),
              ),
              border: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: componentsColor,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
              ),
              prefixIcon: const Padding(
                padding: EdgeInsets.all(5.0),
                child: Icon(
                  Icons.search,
                  color: componentsColor,
                  size: 25,
                ),
              ),
              suffixIcon: Padding(
                padding: const EdgeInsets.all(5.0),
                child: GestureDetector(
                  child: const Icon(
                    Icons.mic,
                    color: componentsColor,
                    size: 25,
                  ),
                  onLongPress: () {},
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
