import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pizza_go/theme/app_colors.dart';
import 'package:pizza_go/theme/app_text.dart';
import 'package:pizza_go/theme/app_text_styles.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/home_back.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {},
                    child: SvgPicture.asset(
                      "assets/icons/avatar_user.svg",
                      width: 32,
                      height: 32,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        color: AppColors.skyBlue,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: const Icon(
                        Icons.search,
                        color: AppColors.white,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                AppText.popular,
                style: AppTextStyles.white700,
              ),
              const SizedBox(height: 20),
              ListView.builder(
                itemCount: 1,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Container(
                        color: AppColors.green,
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
