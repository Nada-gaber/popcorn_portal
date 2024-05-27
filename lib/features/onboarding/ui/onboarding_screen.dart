import 'package:concentric_transition/page_view.dart';
import 'package:flutter/material.dart';
import 'package:popcorn_portal/features/onboarding/ui/widgets/OnBoardingItem.dart';
import '../../home/ui/screens/home_screen.dart';
import '../model/onboarding_model.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final List<OnBoardingModel> data = [
    const OnBoardingModel(
        title: 'ddfs',
        icon: 'sdsdf',
        backGroundColor: Color.fromARGB(255, 31, 32, 31)),
    const OnBoardingModel(title: 'ddfs', icon: 'sdsdf'),
    const OnBoardingModel(
        title: 'ddfs', icon: 'sdsdf', backGroundColor: Color(0xffCFFFCE)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ConcentricPageView(
        // radius: 200,
        itemCount: data.length,
        colors: data.map((e) => e.backGroundColor).toList(),
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (int index) {
          return OnBoardingItem(data: data[index]);
        },
        onChange: (index) {
          print(index);
        },
        onFinish: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const AnimeDataScreen();
          }));
        },
      ),
    );
  }
}
