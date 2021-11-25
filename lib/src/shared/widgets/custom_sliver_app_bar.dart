import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomSliverAppBar extends StatelessWidget {
  final String title;

  const CustomSliverAppBar({
    Key? key,
    required this.title,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: const CircleAvatar(
        backgroundColor: Colors.white,
      ),
      backgroundColor: Theme.of(context).backgroundColor,
      toolbarHeight: 64,
      pinned: true,
      elevation: 0,
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search_rounded),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.notifications_none_rounded),
        ),
      ],
    );
  }
}
