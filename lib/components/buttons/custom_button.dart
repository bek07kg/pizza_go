import 'package:flutter/material.dart';
import 'package:pizza_go/theme/app_text_styles.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    super.key,
    required this.onTap,
    required this.text,
    required this.color,
    required this.selectStyle,
    required this.btnText,
  });

  final void Function()? onTap;
  final String text;
  final Color color;
  final bool selectStyle;
  final String btnText;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 374,
        height: 49,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(32),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/icons/$text.png",
              height: 20,
            ),
            const SizedBox(width: 10),
            Text(
              btnText,
              style: selectStyle
                  ? AppTextStyles.white700
                  : AppTextStyles.skyBlue700,
            ),
          ],
        ),
      ),
    );
  }
}
