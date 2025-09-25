import 'package:flutter/material.dart';
import 'package:weak_2_mini_ui/core/theme/app_colors.dart';

class CustomCheckBox extends StatelessWidget {
  const CustomCheckBox({super.key, required this.isSelected});

  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 24,
      height: 24,
      decoration: BoxDecoration(
        color: isSelected ? AppColors.primary : Colors.white,
        border: Border.all(
          color: isSelected ? AppColors.primary : AppColors.grey,
          width: 1,
        ),
        shape: BoxShape.circle,
      ),
      child: isSelected
          ? const Icon(Icons.check, color: AppColors.darkPrimary, size: 16)
          : null,
    );
  }
}
