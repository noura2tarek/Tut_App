import 'dart:async';
import 'package:flutter/material.dart';
import '../resources_mg/app_constants.dart';
import '../resources_mg/assets_manager.dart';
import '../resources_mg/color_manager.dart';
import '../resources_mg/routes_manager.dart';
import '../resources_mg/values_manager.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  Timer? _timer;

  _startDelay() {
    _timer = Timer(const Duration(seconds: AppConstants.splashDelay), _goNext);
  }

  _goNext() {
    Navigator.pushReplacementNamed(context, Routes.onBoardingRoute);
  }

  @override
  void initState() {
    super.initState();
    _startDelay();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: ColorManager.primary,
      appBar: AppBar(
        elevation: AppSize.s0,
      ),
      body: const Center(
        child: Image(image: AssetImage(ImageAssets.splashPath)),
      ),
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
