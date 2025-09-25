import 'package:flutter/material.dart';
import 'package:weak_2_mini_ui/core/theme/app_text_styles.dart';

class MovieTypes extends StatelessWidget {
  const MovieTypes({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> types = ['Dark Fantasy', 'Action', 'Adventure'];
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 8,
      children: List.generate(types.length, (index) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.grey.withAlpha(30),
            borderRadius: BorderRadius.circular(17),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withAlpha(30),
                blurRadius: 4,
                offset: Offset(0, 4),
              ),
            ],
          ),
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
          child: Text(
            types[index],
            style: AppTextStyles.med13.copyWith(color: Colors.white),
          ),
        );
      }),
    );
  }
}
