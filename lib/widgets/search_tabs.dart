import 'package:buzz_bee/widgets/search_tab.dart';
import 'package:flutter/material.dart';

class SearchTabs extends StatelessWidget {
  const SearchTabs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: const [
          SearchTab(
            isActive: true,
            icon: Icons.search,
            text: 'All',
          ),
          SizedBox(width: 20,),
          SearchTab(

            icon: Icons.image,
            text: 'Images',
          ),
          SizedBox(width: 20,),
          SearchTab(

            icon: Icons.map,
            text: 'Maps',
          ),
          SizedBox(width: 20,),
          SearchTab(

            icon: Icons.article,
            text: 'News',
          ),
          SizedBox(width: 20,),
          SearchTab(

            icon: Icons.shopping_cart_rounded,
            text: 'Shopping',
          ),
          SizedBox(width: 20,),
          SearchTab(
            icon: Icons.more_vert,
            text: 'More',
          ),
        ],
      ),
    );
  }
}
