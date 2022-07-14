import 'package:animation_app/widgets/input_field.dart';
import 'package:flutter/material.dart';

class FormContainer extends StatelessWidget {
  const FormContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Form(
        child: Column(
          children: const [
            InputField(
              hint: "Username",
              obscure: false,
              icon: Icons.person_outline,
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
            ),
            InputField(
              hint: "Password",
              obscure: true,
              icon: Icons.lock_outline,
            ),
          ],
        ),
      ),
    );
  }
}
