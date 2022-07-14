import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String hint;
  final bool obscure;
  final IconData icon;

  const InputField(
      {required this.hint, required this.obscure, required this.icon, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black38,
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextFormField(
        obscureText: obscure,
        style: const TextStyle(
          color: Colors.white,
        ),
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: Colors.white,
          ),
          border: InputBorder.none,
          hintText: hint,
          hintStyle: const TextStyle(
            color: Colors.white,
            fontSize: 15,
          ),
          contentPadding: const EdgeInsets.only(
            top: 30,
            right: 30,
            bottom: 30,
            left: 5,
          ),
        ),
      ),
    );
  }
}
