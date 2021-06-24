import 'package:flutter/material.dart';
import 'package:netflix_ui/models/content_model.dart';

class ContentList extends StatelessWidget {
  final String title;
  final List<Content> content;
  final bool isOriginals;

  const ContentList(
      {Key? key,
      required this.title,
      required this.content,
      this.isOriginals = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          height: isOriginals ? 500.0 : 220.0,
        )
      ]),
    );
  }
}
