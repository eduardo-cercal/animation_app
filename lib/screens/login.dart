import 'package:animation_app/animations/stagger.dart';
import 'package:animation_app/screens/home.dart';
import 'package:animation_app/widgets/form_container.dart';
import 'package:animation_app/widgets/signup_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart' show timeDilation;

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> with SingleTickerProviderStateMixin {
  late AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const HomeScreen()));
      }
    });
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    timeDilation = 1;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                  "images/WhatsApp Image 2022-04-07 at 11.37.37.jpeg"),
              fit: BoxFit.cover),
        ),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(top: 270, bottom: 32),
                      //child: Icon(Icons.check,size: 200),
                    ),
                    FormContainer(),
                    SignUpButton(),
                  ],
                ),
                StaggerAnimation(controller: animationController),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
