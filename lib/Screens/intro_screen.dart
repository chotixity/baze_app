import 'package:flutter/material.dart';

import '../widgets/intro_slider.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: IntroSlider(),
    );
  }
}
