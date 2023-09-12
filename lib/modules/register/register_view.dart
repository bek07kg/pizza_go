import 'package:flutter/material.dart';
import 'package:pizza_go/components/text_form_field/custom_text_form_field.dart';
import 'package:pizza_go/modules/home/view/home_view.dart';
import 'package:pizza_go/theme/app_colors.dart';
import 'package:pizza_go/theme/app_text.dart';
import 'package:pizza_go/theme/app_text_styles.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  _RegisterViewState createState() => _RegisterViewState();
}

final nameController = TextEditingController();
final emailController = TextEditingController();
final passordController = TextEditingController();

class _RegisterViewState extends State<RegisterView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                AppText.register,
                style: AppTextStyles.black35,
              ),
              const SizedBox(height: 35),
              CustomTextFormField(
                controller: nameController,
                labelText: AppText.name,
                imageText: "person",
              ),
              const SizedBox(height: 20),
              CustomTextFormField(
                controller: emailController,
                labelText: AppText.email,
                imageText: "email",
              ),
              const SizedBox(height: 20),
              CustomTextFormField(
                controller: passordController,
                labelText: AppText.password,
                imageText: "lock",
              ),
              const SizedBox(height: 25),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.blackGrey,
                  fixedSize: const Size(255, 44),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                ),
                onPressed: () {
                  if (nameController.text != "" &&
                      emailController.text != "" &&
                      passordController.text != "") {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomeView(),
                      ),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(AppText.pleaseForma),
                      ),
                    );
                  }
                },
                child: const Text(
                  AppText.register,
                  style: AppTextStyles.white400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
