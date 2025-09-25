import 'package:weak_2_mini_ui/core/utils/app_images.dart';

class MovieDetailsEntity {
  final String label;
  final String imageUrl;

  MovieDetailsEntity({required this.label, required this.imageUrl});
}

final List<MovieDetailsEntity> movieDetails = [
  MovieDetailsEntity(label: "2.3M views", imageUrl: AppImages.imagesEye),
  MovieDetailsEntity(label: "2K clap", imageUrl: AppImages.imagesHand),
  MovieDetailsEntity(label: "4 Seasons", imageUrl: AppImages.imagesMovie),
];
