import 'package:flutter/material.dart';

class ListData extends StatelessWidget {
  final String title;
  final String subtitle;
  final ImageProvider image;
  final EdgeInsets margin;

  const ListData(
      {required this.title,
      required this.subtitle,
      required this.image,
      required this.margin,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(
          top: BorderSide(
            color: Colors.grey,
            width: 1,
          ),
          bottom: BorderSide(
            color: Colors.grey,
            width: 1,
          ),
        ),
      ),
      child: Row(
        children: [
          Container(
            padding:
                const EdgeInsets.only(top: 10, bottom: 10, left: 30, right: 30),
            height: 80,
            width: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(image: image),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                subtitle,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
