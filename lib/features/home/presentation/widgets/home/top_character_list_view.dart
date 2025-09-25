import 'package:flutter/material.dart';
import 'package:weak_2_mini_ui/core/helpers/spacing.dart';
import 'package:weak_2_mini_ui/core/theme/app_colors.dart';
import 'package:weak_2_mini_ui/core/theme/app_text_styles.dart';
import 'package:weak_2_mini_ui/core/utils/app_images.dart';

class TopCharactersListView extends StatelessWidget {
  const TopCharactersListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Column(
            children: [
              CircleAvatar(
                radius: 48,
                backgroundImage: AssetImage(AppImages.imagesChar1),
              ),
              heightSpace(8),
              Text(
                'Gon Freecss',
                style: AppTextStyles.semiBold16.copyWith(
                  color: AppColors.darkPrimary,
                ),
              ),
              Text(
                'Hunter x Hunter',
                style: AppTextStyles.semiBold14.copyWith(color: AppColors.grey),
              ),
            ],
          );
        },
        separatorBuilder: (context, index) => widthSpace(12),
        itemCount: 6,
      ),
    );
  }
}
