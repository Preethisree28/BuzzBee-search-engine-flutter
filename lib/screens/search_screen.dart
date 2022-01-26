import 'package:buzz_bee/colors.dart';
import 'package:buzz_bee/services/api_services.dart';
import 'package:buzz_bee/widgets/search_footer.dart';
import 'package:buzz_bee/widgets/search_header.dart';
import 'package:buzz_bee/widgets/search_result_component.dart';
import 'package:buzz_bee/widgets/search_tabs.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  final String searchQuery;
  final String start;
  const SearchScreen({Key? key, required this.searchQuery, required this.start})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Title(
      color: componentsColor,
      title: searchQuery,
      child: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column( 
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Web header
                const SearchHeader(),
                // tabs for new images
                Padding(
                  padding: EdgeInsets.only(left: size.width <= 768 ? 20 : 300.0),
                  child: const SingleChildScrollView(scrollDirection:Axis.horizontal,child: SearchTabs()),
                ),
                const Divider(height: 0, thickness: 0.3),
                //search results
                FutureBuilder(
                  future: ApiService()
                      .fetchData(queryTerm: searchQuery, start: start),
                  builder: (BuildContext context, AsyncSnapshot snapshot) {
                    if (snapshot.hasData) {
                      return SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(
                                      left: size.width <= 768 ? 20 : 100, top: 12),
                                  child: Text(
                                    'About ${snapshot.data?['searchInformation']['formattedTotalResults']} results (${snapshot.data?['searchInformation']['formattedSearchTime']} seconds)',
                                    style: const TextStyle(
                                      fontSize: 15,
                                      color: Colors.white38,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SingleChildScrollView(
                              child: ListView.builder(
                                itemCount: snapshot.data?['items'].length,
                                shrinkWrap: true,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: EdgeInsets.only(
                                        left: size.width <= 768 ? 20 : 100, top: 10),
                                    child: SearchResultComponent(
                                      text: snapshot.data?['items'][index]['title'],
                                      link: snapshot.data?['items'][index]
                                          ['formattedUrl'],
                                      description: snapshot.data?['items'][index]
                                          ['snippet'],
                                      linkToGo: snapshot.data?['items'][index]
                                          ['link'],
                                    ),
                                  );
                                },
                              ),
                            ),
                            SizedBox(
                              width: double.infinity,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  TextButton(
                                    onPressed: () {
                                      if (start != "0") {
                                        Navigator.of(context).push(
                                          MaterialPageRoute(
                                            builder: (context) => SearchScreen(
                                                searchQuery: searchQuery,
                                                start: (int.parse(start) - 10)
                                                    .toString()),
                                          ),
                                        );
                                      }
                                    },
                                    child: const Text(
                                      '< Prev',
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: componentsColor,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 30,
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      if ((int.parse(start) + 1) != "0") {
                                        Navigator.of(context).push(
                                          MaterialPageRoute(
                                            builder: (context) => SearchScreen(
                                                searchQuery: searchQuery,
                                                start: (int.parse(start) + 10)
                                                    .toString()),
                                          ),
                                        );
                                      }
                                    },
                                    child: const Text(
                                      'Next >',
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: componentsColor,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            const SearchFooter(),
                          ],
                        ),
                      );
                    }
                    return const Center(
                      child: CircularProgressIndicator(
                        color: componentsColor,
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
