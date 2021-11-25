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
      elevation: 0,
      title: Text(
        title,
      ),
      backgroundColor: Theme.of(context).backgroundColor,
      toolbarHeight: 56 + 24,
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.search_rounded,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 16),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_none_rounded,
            ),
          ),
        ),
      ],
    );
  }
}
