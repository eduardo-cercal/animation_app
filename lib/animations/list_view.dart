import 'package:animation_app/widgets/list_data.dart';
import 'package:flutter/material.dart';

class AnimatedListView extends StatelessWidget {
  final Animation<EdgeInsets> listSlidePosition;

  const AnimatedListView({required this.listSlidePosition, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        ListData(
          title: "Estudar Flutter",
          subtitle: "preciso",
          image:
              const AssetImage("images/WhatsApp Image 2022-03-31 at 11.09.17.jpeg"),
          margin: listSlidePosition.value * 1,
        ),
        ListData(
          title: "Estudar Flutter 2",
          subtitle: "preciso 2",
          image:
              const AssetImage("images/WhatsApp Image 2022-03-31 at 11.09.17.jpeg"),
          margin: listSlidePosition.value * 0,
        ),
      ],
    );
  }
}
