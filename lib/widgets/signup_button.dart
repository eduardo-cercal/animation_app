import 'package:flutter/material.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 160.0),
      child: TextButton(
        onPressed: () {},
        child: const Text(
          "Não possui uma conta? Cadastre-se!",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.w300,
            fontSize: 16,
            color: Colors.white,
            backgroundColor: Colors.black38,
            letterSpacing: 0.5,
          ),
        ),
      ),
    );
  }
}
