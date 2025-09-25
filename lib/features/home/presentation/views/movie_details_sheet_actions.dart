import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:weak_2_mini_ui/core/helpers/spacing.dart';
import 'package:weak_2_mini_ui/core/theme/app_colors.dart';
import 'package:weak_2_mini_ui/core/theme/app_text_styles.dart';
import 'package:weak_2_mini_ui/core/utils/app_images.dart';

class MovieDetailsSheetActions extends StatelessWidget {
  const MovieDetailsSheetActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 17, left: 17, top: 10, bottom: 20),
      height: 80,
      color: AppColors.darkPrimary,
      child: Row(
        children: [
          Expanded(
            child: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.grey.withAlpha(30),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(37),
                ),
              ),
              onPressed: () {},
              icon: SvgPicture.asset(
                AppImages.imagesStopwatchPlay,
                colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
              ),
              label: Text(
                "preview",
                style: AppTextStyles.bold14.copyWith(color: Colors.white),
              ),
            ),
          ),
          widthSpace(10),
          Expanded(
            child: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(37),
                ),
              ),
              onPressed: () {},
              icon: SvgPicture.asset(
                AppImages.imagesEye,
                colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
              ),
              label: Text(
                "Watch Now",
                style: AppTextStyles.bold14.copyWith(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
