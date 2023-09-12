import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField({
    super.key,
    required this.controller,
    required this.labelText,
    required this.imageText,
  });

  final TextEditingController controller;
  final String labelText;
  final String imageText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: labelText,
        prefixIcon: SvgPicture.asset("assets/icons/$imageText.svg"),
      ),
    );
  }
}
