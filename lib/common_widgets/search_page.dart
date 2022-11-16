import 'package:flutter/material.dart';
import 'package:travel_app/common_widgets/sliver_search_appbar.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

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
            return ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(45)),
              child: Container(
                  color: const Color.fromARGB(255, 42, 42, 42),
                  margin: const EdgeInsets.all(8),
                  padding: const EdgeInsets.all(16),
                  child: const Text(
                    'Some country',
                    style: TextStyle(fontSize: 20, color: Colors.white60, fontWeight: FontWeight.w600),
                  )),
            );
          }, childCount: 20)),
        ],
      ),
    );
  }
}
