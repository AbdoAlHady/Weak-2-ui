import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:weak_2_mini_ui/core/helpers/spacing.dart';
import 'package:weak_2_mini_ui/core/theme/app_text_styles.dart';
import 'package:weak_2_mini_ui/core/utils/app_images.dart';
import 'package:weak_2_mini_ui/features/home/presentation/widgets/home/categories_list_view.dart';
import 'package:weak_2_mini_ui/features/home/presentation/widgets/home/top_anime_list_view.dart';
import 'package:weak_2_mini_ui/features/home/presentation/widgets/home/top_character_list_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
              alignment: Alignment.topRight,
              child: SvgPicture.asset(AppImages.imagesLeftStar),
            ),
            Positioned(
              top: 67,
              left: 0,
              right: 0,
              bottom: 0,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Where Anime Comes Alive',
                        style: AppTextStyles.bold24,
                      ),
                      heightSpace(24),
                      CategoriesListView(),
                      heightSpace(16),
                      TopAnimeListView(),
                      heightSpace(16),
                      Text('Top Characters', style: AppTextStyles.bold24),
                      heightSpace(24),
                      TopCharactersListView(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
