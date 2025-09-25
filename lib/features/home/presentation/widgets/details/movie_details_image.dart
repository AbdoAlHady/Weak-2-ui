import 'package:flutter/material.dart';
import 'package:weak_2_mini_ui/core/utils/app_images.dart';

class MovieDetailsImage extends StatelessWidget {
  const MovieDetailsImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.69,
      child: Stack(
        children: [
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.6,
            width: double.infinity,
            child: Image.asset(AppImages.imagesDetails, fit: BoxFit.cover),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset(AppImages.imagesDetails2),
          ),
        ],
      ),
    );
  }
}
