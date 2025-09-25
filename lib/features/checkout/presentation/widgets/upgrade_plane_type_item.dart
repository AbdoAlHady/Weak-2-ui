import 'package:flutter/material.dart';
import 'package:weak_2_mini_ui/core/helpers/spacing.dart';
import 'package:weak_2_mini_ui/core/theme/app_colors.dart';
import 'package:weak_2_mini_ui/core/theme/app_text_styles.dart';
import 'package:weak_2_mini_ui/core/utils/app_images.dart';
import 'package:weak_2_mini_ui/features/checkout/presentation/widgets/custom_check_box.dart';

class UpgradePlanTypeItem extends StatelessWidget {
  const UpgradePlanTypeItem({
    super.key,
    required this.planType,
    required this.price,
    required this.duration,
    required this.isSelected,
  });
  final String planType;
  final String price;
  final String duration;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
      padding: const EdgeInsets.symmetric(horizontal: 14),
      decoration: BoxDecoration(
        color: isSelected ? AppColors.darkPrimary : Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Image.asset(AppImages.imagesFiles, width: 80, height: 80),
          ),
          widthSpace(20),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 13.0),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        planType,
                        style: AppTextStyles.bold16.copyWith(
                          color: isSelected
                              ? Colors.white
                              : AppColors.darkPrimary,
                        ),
                      ),
                      Text.rich(
                        TextSpan(
                          text: "\$$price USD",
                          style: AppTextStyles.bold14.copyWith(
                            color: isSelected
                                ? Colors.white
                                : AppColors.darkPrimary,
                          ),
                          children: [
                            TextSpan(
                              text: "/ $duration",
                              style: AppTextStyles.bold14.copyWith(
                                color: AppColors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  CustomCheckBox(isSelected: isSelected),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
