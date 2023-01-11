import 'package:find_your_cluster/styles/text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFieldWithLabel extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final TextInputType keyboardType;

  const TextFieldWithLabel(
      {super.key,
      required this.label,
      required this.controller,
      required this.keyboardType});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            label,
            style: bodyStyle(),
          ),
          TextField()
        ],
      ),
    );
  }
}
