import 'package:animation_app/animations/list_view.dart';
import 'package:animation_app/widgets/fade_container.dart';
import 'package:animation_app/widgets/home_top.dart';
import 'package:flutter/material.dart';

class StaggerHome extends StatelessWidget {
  final AnimationController controller;
  final Animation<double> containerGrow;
  final Animation<EdgeInsets> listSlidePosition;
  final Animation<Color?> fadeAnimation;

  StaggerHome({required this.controller, Key? key})
      : containerGrow = CurvedAnimation(
          parent: controller,
          curve: Curves.ease,
        ),
        listSlidePosition = EdgeInsetsTween(
          begin: const EdgeInsets.only(bottom: 0),
          end: const EdgeInsets.only(bottom: 80),
        ).animate(CurvedAnimation(
          parent: controller,
          curve: const Interval(
            0.325,
            0.8,
            curve: Curves.ease,
          ),
        )),
        fadeAnimation =
            ColorTween(begin: Colors.lightBlue, end: Colors.transparent)
                .animate(
          CurvedAnimation(
            parent: controller,
            curve: Curves.decelerate,
          ),
        ),
        super(key: key);

  Widget buildAnimation(BuildContext context, Widget? child) {
    return Stack(children: [
      ListView(
        padding: EdgeInsets.zero,
        children: [
          HomeTop(
            containerGrow: containerGrow,
          ),
          AnimatedListView(
            listSlidePosition: listSlidePosition,
          ),
        ],
      ),
      IgnorePointer(
        child: FadeContainer(
          fadeAnimation: fadeAnimation,
        ),
      )
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: AnimatedBuilder(
          animation: controller,
          builder: buildAnimation,
        ),
      ),
    );
  }
}
