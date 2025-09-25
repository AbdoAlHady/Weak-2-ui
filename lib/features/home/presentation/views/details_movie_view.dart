import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:weak_2_mini_ui/core/helpers/spacing.dart';
import 'package:weak_2_mini_ui/core/theme/app_text_styles.dart';
import 'package:weak_2_mini_ui/core/utils/app_images.dart';
import 'package:weak_2_mini_ui/features/home/presentation/views/movie_details_sheet_actions.dart';
import 'package:weak_2_mini_ui/features/home/presentation/views/movie_likes_and_views.dart';
import 'package:weak_2_mini_ui/features/home/presentation/views/movie_types.dart';
import 'package:weak_2_mini_ui/features/home/presentation/widgets/details/movie_details_image.dart';

class DetailsMovieView extends StatelessWidget {
  const DetailsMovieView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImages.imagesDetailsBg),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              MovieDetailsImage(),
              heightSpace(8),
              MovieTypes(),
              heightSpace(23),
              _buildDivider(),
              heightSpace(16),
              MovieLikesAndViews(),
              heightSpace(16),
              _buildDivider(),

              heightSpace(20),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 17),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SvgPicture.asset(AppImages.imagesFire),
                    widthSpace(8),
                    Expanded(
                      child: Text(
                        'Demon Slayer: Kimetsu no Yaiba follows Tanjiro, a kind-hearted boy who becomes a demon slayer after his family is slaughtered and his sister is turned into a demon. Experience breathtaking battles, stunning animation, and an emotional journey of courage and hope.',
                        style: AppTextStyles.med15.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              heightSpace(90),
            ],
          ),
        ),
      ),

      bottomSheet: MovieDetailsSheetActions(),
    );
  }

  Padding _buildDivider() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 17),
      child: Container(color: Colors.grey, height: 0.5),
    );
  }
}
