import 'package:flutter/material.dart';
import 'package:travel_app/common_widgets/sliver_search_appbar.dart';

import '../country_page.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  Future fetchCountries() async {
    var url = '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 32, 32, 32),
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            delegate: SliverSearchAppBar(),
            pinned: true,
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
            return Card(
              shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
              color: const Color.fromARGB(255, 42, 42, 42),
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const CountryPage()));
                },
                child: Padding(
                  padding: const EdgeInsets.all(35.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Some country',
                        style: TextStyle(fontSize: 20, color: Colors.white70, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              ),

              //   // color: const Color.fromARGB(255, 42, 42, 42),
              //   // margin: const EdgeInsets.all(8),
              //   // padding: const EdgeInsets.all(16),
              //   // )
              // ),
            );
          }, childCount: 20)),
        ],
      ),
    );
  }
}
