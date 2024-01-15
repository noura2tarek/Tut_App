import 'package:flutter/material.dart';
import 'package:tutac_app/presentation_layer/resources_mg/color_manager.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ColorManager.grey,
      body: Center(child: Text("welcome")),
    );
  }
}
