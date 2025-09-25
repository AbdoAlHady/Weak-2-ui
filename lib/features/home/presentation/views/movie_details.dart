import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:weak_2_mini_ui/core/helpers/spacing.dart';
import 'package:weak_2_mini_ui/core/theme/app_text_styles.dart';

class MovieDetails extends StatelessWidget {
  const MovieDetails({super.key, required this.imageUrl, required this.label});
  final String imageUrl;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          SvgPicture.asset(imageUrl),
          widthSpace(8),
          Text(label, style: AppTextStyles.reg13.copyWith(color: Colors.white)),
        ],
      ),
    );
  }
}
