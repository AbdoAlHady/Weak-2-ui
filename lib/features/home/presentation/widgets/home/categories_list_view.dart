import 'package:flutter/material.dart';
import 'package:weak_2_mini_ui/core/helpers/spacing.dart';
import 'package:weak_2_mini_ui/core/theme/app_colors.dart';
import 'package:weak_2_mini_ui/core/theme/app_text_styles.dart';

class CategoriesListView extends StatefulWidget {
  const CategoriesListView({super.key});

  @override
  State<CategoriesListView> createState() => _CategoriesListViewState();
}

class _CategoriesListViewState extends State<CategoriesListView> {
  int selectedIndex = 0;
  final List<String> categories = [
    'all',
    'Popular',
    'New Releases',
    'Top Rated',
    'Fantasy',
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: AnimatedContainer(
              duration: Duration(milliseconds: 500),
              height: 20,
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                color: selectedIndex == index
                    ? AppColors.primary
                    : Colors.white,
                borderRadius: BorderRadius.circular(100),
              ),
              child: Text(
                categories[index],
                style: AppTextStyles.bold14.copyWith(
                  color: selectedIndex == index
                      ? Colors.white
                      : AppColors.primary,
                ),
              ),
            ),
          );
        },
        separatorBuilder: (context, index) => widthSpace(4),
        itemCount: categories.length,
      ),
    );
  }
}
