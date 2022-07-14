import 'package:flutter/material.dart';

class StaggerAnimation extends StatelessWidget {
  final AnimationController controller;
  final Animation<double> buttonSqueeze;
  final Animation<double> buttonZoomOut;

  StaggerAnimation({required this.controller, Key? key})
      : buttonSqueeze = Tween<double>(begin: 320, end: 60).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(0.0, 0.150),
          ),
        ),
        buttonZoomOut = Tween<double>(begin: 60, end: 1000).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(
              0.5,
              1,
              curve: Curves.bounceOut,
            ),
          ),
        ),
        super(key: key);

  Widget buildAnimation(BuildContext context, Widget? child) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 50),
      child: InkWell(
        onTap: () {
          controller.forward();
        },
        child: Hero(
          tag: "fade",
          child: buttonZoomOut.value <= 60
              ? Container(
                  width: buttonSqueeze.value,
                  height: 60,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  child: buildInside(context))
              : Container(
                  width: buttonZoomOut.value,
                  height: buttonZoomOut.value,
                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.all(
                        Radius.circular(buttonZoomOut.value < 500 ? 30 : 0)),
                  ),
                ),
        ),
      ),
    );
  }

  Widget buildInside(BuildContext context) {
    if (buttonSqueeze.value > 75) {
      return const Text(
        "Sign in",
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.w300,
          letterSpacing: 0.3,
        ),
      );
    } else {
      return const CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
        strokeWidth: 1,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: buildAnimation,
    );
  }
}
