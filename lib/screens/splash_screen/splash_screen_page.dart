import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../router/router.gr.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  void continueTo() {
    final router = AutoRouter.of(context);
    router.replaceAll([const HomeRoute()]);
  }

  _startTime() async {
    return Timer(const Duration(milliseconds: 2000), continueTo);
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
  _SplashVideoState createState() => _SplashVideoState();
}

class _SplashVideoState extends State<SplashVideo> {
  // static const double aspectRatio = 1114 / 1080;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.greenAccent,
      body: SafeArea(
        child: Center(
            child: Text(
          'Splash',
          style: TextStyle(
            fontSize: 44,
          ),
        )
            //TODO: widget insert lottie or video here
            // AspectRatio(
            //   aspectRatio: aspectRatio,
            //   child: Lottie.asset(ExclusiveSplash.intro),
            // ),
            ),
      ),
    );
  }
}
