import 'package:flutter/material.dart';
import 'package:pizza_go/theme/app_colors.dart';
import 'package:pizza_go/theme/app_text.dart';
import 'package:pizza_go/theme/app_text_styles.dart';

class RegisterBtn extends StatelessWidget {
  const RegisterBtn({
    super.key,
    required this.onTap,
  });

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 43,
        width: 201,
        decoration: BoxDecoration(
          color: AppColors.whiteGrey,
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Center(
          child: Text(
            AppText.register,
            style: AppTextStyles.regisBtnStyle,
          ),
        ),
      ),
    );
  }
}
