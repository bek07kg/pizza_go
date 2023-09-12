import 'package:flutter/material.dart';
import 'package:pizza_go/components/buttons/custom_button.dart';
import 'package:pizza_go/components/buttons/register_btn.dart';
import 'package:pizza_go/modules/register/register_view.dart';
import 'package:pizza_go/theme/app_colors.dart';
import 'package:pizza_go/theme/app_text.dart';
import 'package:pizza_go/theme/app_text_styles.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/Rectangle.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RegisterBtn(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RegisterView(),
                  ),
                );
              },
            ),
            const SizedBox(height: 80),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  AppText.questionReg,
                  style: AppTextStyles.white400,
                ),
                const SizedBox(width: 10),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    AppText.sign,
                    style: AppTextStyles.white700,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 70),
            const Text(
              AppText.continueHelp,
              style: AppTextStyles.white400,
            ),
            const SizedBox(height: 50),
            CustomButton(
              selectStyle: true,
              onTap: () {},
              text: "facebook",
              btnText: "Facebook",
              color: AppColors.blackBlue,
            ),
            const SizedBox(height: 20),
            CustomButton(
              selectStyle: false,
              onTap: () {},
              text: "google",
              btnText: "Google",
              color: AppColors.white,
            ),
          ],
        ),
      ),
    );
  }
}
