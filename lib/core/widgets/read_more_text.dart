import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class ReadMoreTextWidget extends StatelessWidget {
  final String text;
  const ReadMoreTextWidget(
      {super.key, required this.text, });

  @override
  Widget build(BuildContext context) {
    return ReadMoreText(
      text,
      trimMode: TrimMode.Line,
      trimLines: 2,
      colorClickableText: Colors.red,
      trimCollapsedText: 'Show more',
      trimExpandedText: 'Show less',
      moreStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
    );
  }
}
