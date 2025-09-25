import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:weak_2_mini_ui/core/helpers/spacing.dart';
import 'package:weak_2_mini_ui/core/theme/app_colors.dart';
import 'package:weak_2_mini_ui/core/theme/app_text_styles.dart';
import 'package:weak_2_mini_ui/core/utils/app_images.dart';
import 'package:weak_2_mini_ui/features/checkout/presentation/widgets/upgrade_plane_type_Item.dart';

class UpgradePlanView extends StatelessWidget {
  const UpgradePlanView({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xffDDE2FF), Color(0xffDDE2FF).withAlpha(1)],
          ),
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: SvgPicture.asset(AppImages.imagesTopStar),
            ),
            Positioned(
              top: 150,
              right: 0,
              child: SvgPicture.asset(AppImages.imagesRightStart),
            ),
            Positioned(
              top: 0,
              right: 0,
              left: 0,
              child: Image.asset(AppImages.imagesRocketPng),
            ),
            Positioned(
              top: height * 0.36,
              left: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Seamless Anime \nExperience, Ad-Free.",
                      textAlign: TextAlign.center,
                      style: AppTextStyles.bold24.copyWith(
                        color: AppColors.darkPrimary,
                      ),
                    ),
                    Text(
                      "Enjoy unlimited anime streaming without interruptions.",
                      textAlign: TextAlign.center,
                      style: AppTextStyles.med14.copyWith(
                        color: AppColors.grey,
                      ),
                    ),
                    heightSpace(32),

                    UpgradePlanTypeItem(
                      planType: "Monthly Plan",
                      price: "9.99",
                      duration: "month",
                      isSelected: true,
                    ),
                    heightSpace(16),
                    UpgradePlanTypeItem(
                      planType: "Yearly Plan",
                      price: "99.99",
                      duration: "year",
                      isSelected: false,
                    ),
                    heightSpace(32),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.primary,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 100,
                            vertical: 16,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          "Continue",
                          style: AppTextStyles.bold16.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
