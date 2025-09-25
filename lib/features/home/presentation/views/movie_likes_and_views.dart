import 'package:flutter/material.dart';
import 'package:weak_2_mini_ui/features/home/domain/entities/movie_details_entity.dart';
import 'package:weak_2_mini_ui/features/home/presentation/views/movie_details.dart';

class MovieLikesAndViews extends StatelessWidget {
  const MovieLikesAndViews({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 17),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(movieDetails.length, (index) {
          return MovieDetails(
            imageUrl: movieDetails[index].imageUrl,
            label: movieDetails[index].label,
          );
        }),
      ),
    );
  }
}
