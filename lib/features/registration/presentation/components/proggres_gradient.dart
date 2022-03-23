import 'package:bvt1901_practice/utils/extentions/app_context.dart';
import 'package:flutter/material.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

class BackgroundProgressWidget extends StatelessWidget {
  final Widget child;
  final int length;
  final Color? colorOne;
  final Color? colorTwo;
  final Color? colorThree;
  final bool error;
  const BackgroundProgressWidget({
    Key? key,
    required this.child,
    required this.length,
    this.colorOne,
    this.colorTwo,
    this.colorThree,
    this.error = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;
    return Stack(
      children: [
        Align(
          alignment: Alignment.bottomCenter,
          child: ProgressWave(
            color: (colorOne ?? colors.blue),
            duration: const Duration(seconds: 9),
            progress: 1 / (length + 1),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: ProgressWave(
            color: (colorTwo ?? colors.blue),
            duration: const Duration(seconds: 10),
            progress: 1 / (length + 1.5),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: ProgressWave(
            duration: const Duration(seconds: 11),
            color: !error ? (colorThree ?? colors.darkBlue) : colors.darkRed,
            progress: 1 / (length + 2),
          ),
        ),
        child,
      ],
    );
  }
}

class Wave extends StatelessWidget {
  final Color color;
  final Duration duration;

  const Wave({
    Key? key,
    required this.color,
    this.duration = const Duration(seconds: 10),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WaveWidget(
      config: CustomConfig(
        gradients: [
          [
            color,
            color.withOpacity(0.2),
          ],
        ],
        durations: [duration.inMilliseconds],
        heightPercentages: [0.0],
        blur: const MaskFilter.blur(BlurStyle.solid, 10),
        gradientBegin: Alignment.bottomCenter,
        gradientEnd: Alignment.topCenter,
      ),
      waveAmplitude: 0,
      size: const Size(
        double.infinity,
        double.infinity,
      ),
    );
  }
}

class ProgressWave extends StatelessWidget {
  static const _updateDuration = Duration(milliseconds: 600);

  final double progress;
  final Color color;
  final Duration duration;

  const ProgressWave({
    Key? key,
    required this.progress,
    required this.color,
    this.duration = const Duration(seconds: 10),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      curve: Curves.ease,
      height: MediaQuery.of(context).size.height * progress,
      duration: _updateDuration,
      child: Wave(
        color: color,
        duration: duration,
      ),
    );
  }
}
