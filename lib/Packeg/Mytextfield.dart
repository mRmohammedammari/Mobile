import 'package:flutter/material.dart';

class Mytextfield extends StatelessWidget {
  final controller;
  final String hinttext;
  final bool obscyretext;

  const Mytextfield({
    super.key,
    required this.controller,
    required this.hinttext,
    required this.obscyretext,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35.0),
        child: Expanded(
          child: TextField(
            controller: controller,
            obscureText: obscyretext,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white54),
              ),
              fillColor: Colors.white54,
              filled: true,
              hintText: hinttext,
            ),
          ),
        ));
  }
}
