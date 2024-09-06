import 'package:flutter/material.dart';
import 'package:walkthough_screen/screen1.dart';
import 'package:walkthough_screen/screen2.dart';
import 'package:walkthough_screen/screen3.dart';
import 'package:walkthough_screen/screen4.dart';
import 'package:walkthough_screen/screen5.dart';
import 'package:walkthough_screen/screen6.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: WalkthroughScreen(),
  ));
}

class WalkthroughScreen extends StatelessWidget {
  WalkthroughScreen({super.key});

  final controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
      children: const [
        FirstScreen(),
        SecondScreen(),
        ThirdScreen(),
        FourthScreen(),
        FifthScreen(),
        SixthScreen()
      ],
    ));
  }
}
