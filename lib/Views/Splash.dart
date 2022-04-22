
import 'dart:async';

import 'package:chequewallet/Views/Login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'ChequeBg.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 4), ()=>Get.offAll(()=>Login()));

  }


  @override
  Widget build(BuildContext context) {
    return ChequeBg(
      child: Scaffold(
        backgroundColor: Colors.transparent,
          body:
          Center(child: Image.asset("assets/Splash.png"))
      ),
    );
  }
}
