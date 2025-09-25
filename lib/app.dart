import 'package:flutter/material.dart';
import 'package:weak_2_mini_ui/core/routing/app_router.dart';
import 'package:weak_2_mini_ui/core/routing/routes.dart';
import 'package:weak_2_mini_ui/core/theme/app_text_styles.dart';

class AnimeApp extends StatelessWidget {
  const AnimeApp({super.key, required this.appRouter});
  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: appRouter.generateRoute,
      theme: ThemeData(fontFamily: AppTextStyles.fontFamily),
      initialRoute: Routes.mainRoute,
    );
  }
}
