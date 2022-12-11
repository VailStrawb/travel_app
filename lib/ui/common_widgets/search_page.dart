import 'package:csv/csv.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:travel_app/ui/common_widgets/sliver_search_appbar.dart';
import '../../country_page.dart';
import '../../models/country.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List<Country> _data = [];

  void _loadCSV() async {
    final _rawData = await rootBundle.loadString("assets/countries.csv");
    List<List<dynamic>> _listData = const CsvToListConverter(eol: '\n').convert(_rawData);
    List<Country> countries = [];
    _listData.forEach((element) {
      countries.add(Country.fromList(element));
    });
    setState(() {
      _data = countries;
    });
  }

  @override
  void initState() {
    _loadCSV();
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
            return Padding(
              padding: const EdgeInsets.only(left: 12, top: 4, bottom: 4, right: 12),
              child: Card(
                shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                color: const Color.fromARGB(255, 42, 42, 42),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => CountryPage(country: _data[index])));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Text(
                            _data[index].name,
                            style: const TextStyle(fontSize: 18, color: Colors.white70, fontWeight: FontWeight.w600),
                          ),
                        ),
                        IconButton(
                          splashRadius: 1,
                          icon: const Icon(CupertinoIcons.star),
                          color: Colors.white54,
                          onPressed: () {},
                        )
                      ],
                    ),
                  ),
                ),

                //   // color: const Color.fromARGB(255, 42, 42, 42),
                //   // margin: const EdgeInsets.all(8),
                //   // padding: const EdgeInsets.all(16),
                //   // )
                // ),
              ),
            );
          }, childCount: _data.length)),
        ],
      ),
    );
  }
}
