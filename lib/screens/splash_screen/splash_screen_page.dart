import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:boilerplate/constants/assets.dart';
import 'package:boilerplate/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../router/router.gr.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  void continueTo() {
    final router = AutoRouter.of(context);
    router.replaceAll([const HomeRoute()]);
  }

  _startTime() async {
    return Timer(const Duration(milliseconds: 5000), continueTo);
  }

  @override
  void initState() {
    _startTime();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const SplashVideo();
  }
}

class SplashVideo extends StatefulWidget {
  const SplashVideo({Key? key}) : super(key: key);

  @override
  SplashVideoState createState() => SplashVideoState();
}

class SplashVideoState extends State<SplashVideo> {
  static const double aspectRatio = 1114 / 1080;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CocktailColors.background,
      body: SafeArea(
        child: Center(
          child: AspectRatio(
            aspectRatio: aspectRatio,
            child: Lottie.asset(Assets.splashLottie),
          ),
        ),
      ),
    );
  }
}
