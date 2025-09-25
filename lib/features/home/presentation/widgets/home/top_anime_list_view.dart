import 'package:flutter/material.dart';
import 'package:weak_2_mini_ui/core/helpers/spacing.dart';
import 'package:weak_2_mini_ui/core/routing/routes.dart';
import 'package:weak_2_mini_ui/core/theme/app_colors.dart';
import 'package:weak_2_mini_ui/core/theme/app_text_styles.dart';
import 'package:weak_2_mini_ui/core/utils/app_images.dart';

class TopAnimeListView extends StatelessWidget {
  const TopAnimeListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return SizedBox(
            width: 184,
            child: InkWell(
              borderRadius: BorderRadius.circular(16),
              highlightColor: Colors.grey,
              splashColor: Colors.grey,
              hoverColor: Colors.grey,

              onTap: () {
                Navigator.of(
                  context,
                  rootNavigator: true,
                ).pushNamed(Routes.detailsMovieRoute);
              },
              child: Column(
                children: [
                  Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.asset(
                          AppImages.imagesCover1,
                          height: 245,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        top: 8,
                        right: 8,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            vertical: 3,
                            horizontal: 4,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.star,
                                size: 12,
                                color: AppColors.primary,
                              ),
                              widthSpace(4),
                              Text('4.0', style: AppTextStyles.semiBold12),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  heightSpace(8),
                  Text(
                    'Naruto Shippuden',
                    style: AppTextStyles.bold14.copyWith(
                      color: AppColors.darkPrimary,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  heightSpace(4),
                  Text(
                    'Mystery',
                    style: AppTextStyles.med12.copyWith(color: AppColors.grey),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          );
        },
        separatorBuilder: (context, index) => widthSpace(14),
        itemCount: 5,
      ),
    );
  }
}
