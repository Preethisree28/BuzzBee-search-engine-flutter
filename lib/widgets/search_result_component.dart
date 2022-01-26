import 'package:buzz_bee/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SearchResultComponent extends StatefulWidget {
  final String link;
  final String text;
  final String linkToGo;
  final String description;
  const SearchResultComponent(
      {Key? key,
      required this.link,
      required this.text,
      required this.linkToGo,
      required this.description})
      : super(key: key);

  @override
  State<SearchResultComponent> createState() => _SearchResultComponentState();
}

class _SearchResultComponentState extends State<SearchResultComponent> {
  bool _showUnderline = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: InkWell(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            hoverColor: Colors.transparent,
            onTap: () async {
              if (await canLaunch(widget.linkToGo)) {
                await launch(
                  widget.linkToGo,
                );
              }
            },
            onHover: (hovering) {
              setState(() {
                _showUnderline = hovering;
              });
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.link,
                  style: TextStyle(fontSize: 14, color:Colors.yellow.shade800),
                ),
                const SizedBox(height: 13,),
                Text(
                  widget.text,
                  style: TextStyle(
                     fontSize: 20,
                      fontWeight:FontWeight.w400,
                      color: componentsColor,
                      decoration: _showUnderline
                          ? TextDecoration.underline
                          : TextDecoration.none),
                ),
              ],
            ),
          ),
        ),
        Text(
          widget.description,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 15,),
      ],
    );
  }
}
