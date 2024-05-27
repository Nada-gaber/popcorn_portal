import 'package:flutter/material.dart';
import 'package:popcorn_portal/features/onboarding/model/onboarding_model.dart';

class OnBoardingItem extends StatelessWidget {
  final OnBoardingModel data;

  const OnBoardingItem({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          const Spacer(),
          Flexible(flex: 20, child: Text(data.title)),
          const Spacer(),
          Text(
            data.title.toUpperCase(),
            style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                overflow: TextOverflow.clip),
            maxLines: 1,
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
