import 'package:flutter/cupertino.dart';
import 'package:travel_app/ui/common_widgets/search_bar.dart';
import 'package:travel_app/ui/common_widgets/background_wave.dart';

class SliverSearchAppBar extends SliverPersistentHeaderDelegate {
  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    var adjustedShrinkOffset = shrinkOffset > minExtent ? minExtent : shrinkOffset;
    double offset = (minExtent - adjustedShrinkOffset) * 0.5;
    double topPadding = MediaQuery.of(context).padding.top + 16;

    return Stack(
      children: [
        const BackgroundWave(
          height: 240,
        ),
        Positioned(
          top: topPadding + offset,
          left: 16,
          right: 16,
          child: const SearchBar(),
        )
      ],
    );
  }

  @override
  double get maxExtent => 240;

  @override
  double get minExtent => 120;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      oldDelegate.maxExtent != maxExtent || oldDelegate.minExtent != minExtent;
}
