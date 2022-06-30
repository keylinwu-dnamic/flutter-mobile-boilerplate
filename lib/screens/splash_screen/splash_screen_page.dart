import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'package:boilerplate/constants/assets.dart';
import 'package:boilerplate/constants/constants.dart';
import 'package:boilerplate/router/router.gr.dart';

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
    return Timer(
        const Duration(milliseconds: Constants.splashDuration), continueTo);
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
  static const double aspectRatio = Constants.aspectRatio;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
