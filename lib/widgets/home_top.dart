import 'package:animation_app/widgets/category_view.dart';
import 'package:flutter/material.dart';

class HomeTop extends StatelessWidget {
  final Animation<double> containerGrow;

  const HomeTop({required this.containerGrow, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      height: screenSize.height * 0.4,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image:
              AssetImage("images/WhatsApp Image 2022-04-07 at 11.37.37.jpeg"),
          fit: BoxFit.cover,
        ),
      ),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              "Bem-vindo, Eduardo!",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w300,
                  color: Colors.white,
                  backgroundColor: Colors.black38),
            ),
            Container(
              alignment: Alignment.topRight,
              width: containerGrow.value * 120,
              height: containerGrow.value * 120,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(
                        "images/WhatsApp Image 2022-03-31 at 11.09.17.jpeg"),
                    fit: BoxFit.cover,
                  )),
              child: Container(
                width: containerGrow.value * 35,
                height: containerGrow.value * 35,
                margin: const EdgeInsets.only(left: 80),
                child: Center(
                  child: Text(
                    "2",
                    style: TextStyle(
                      fontSize: containerGrow.value * 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.lightBlueAccent
                ),
              ),
            ),
            CategoryView(),
          ],
        ),
      ),
    );
  }
}
