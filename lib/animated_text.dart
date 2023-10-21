import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class AnimatedTextWidget extends StatelessWidget {
  const AnimatedTextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextLiquidFill(
          text: 'Animated Text',
          textStyle: const TextStyle(
            fontSize: 50.0,
            fontWeight: FontWeight.bold,
            // color: Colors.red,
          ),
          waveColor: Colors.red,
          loadDuration: const Duration(seconds: 2),
          loadUntil: 0.8,
          boxBackgroundColor: Colors.blueAccent,

          // boxHeight: 300.0,
        ),
      ),
      body: Center(
        child: AnimatedTextKit(
          totalRepeatCount: 4,
          displayFullTextOnTap: true,
          animatedTexts: [
            FadeAnimatedText(
              'Fade First',
              textStyle: const TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
              duration: const Duration(milliseconds: 8000),
            ),
            ScaleAnimatedText(
              'Then Scale',
              textStyle: const TextStyle(fontSize: 70.0, fontFamily: 'Canterbury'),
            ),
            WavyAnimatedText('Hello World'),
            WavyAnimatedText('Look at the waves')
          ],
        ),
      ),



    );
  }
}