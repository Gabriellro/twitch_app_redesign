import 'package:flutter/material.dart';
import 'package:twitch_app_redesign/src/shared/widgets/_export_widgets.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          const CustomSliverAppBar(title: "title"),
          SliverToBoxAdapter(
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).cardColor.withOpacity(0.1),
                borderRadius: BorderRadius.circular(
                  25,
                ),
              ),
              height: 600,
            ),
          ),
        ],
      ),
    );
  }
}
