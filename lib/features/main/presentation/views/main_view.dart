import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:weak_2_mini_ui/core/theme/app_colors.dart';
import 'package:weak_2_mini_ui/core/theme/app_text_styles.dart';
import 'package:weak_2_mini_ui/core/utils/app_images.dart';
import 'package:weak_2_mini_ui/features/checkout/presentation/views/upgrade_plan_view.dart';
import 'package:weak_2_mini_ui/features/home/presentation/views/home_view.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  late final PersistentTabController _controller;

  @override
  void initState() {
    _controller = PersistentTabController(initialIndex: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset:
          true, // This needs to be true if you want to move up the screen on a non-scrollable screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardAppears: true,
      popBehaviorOnSelectedNavBarItemPress: PopBehavior.all,
      padding: const EdgeInsets.only(top: 8),
      backgroundColor: Colors.white,
      isVisible: true,
      animationSettings: const NavBarAnimationSettings(
        navBarItemAnimation: ItemAnimationSettings(
          // Navigation 's items animation properties.
          duration: Duration(milliseconds: 400),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: ScreenTransitionAnimationSettings(
          // Screen transition animation on change of selected tab.
          animateTabTransition: true,
          duration: Duration(milliseconds: 200),
          screenTransitionAnimationType: ScreenTransitionAnimationType.fadeIn,
        ),
      ),
      confineToSafeArea: true,
      navBarHeight: kBottomNavigationBarHeight,
      navBarStyle:
          NavBarStyle.style7, // Choose the nav bar style with this property.
    );
  }

  List<Widget> _buildScreens() {
    return [
      HomeView(),
      UpgradePlanView(),
      UpgradePlanView(),
      UpgradePlanView(),
      UpgradePlanView(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: SvgPicture.asset(AppImages.imagesHome),
        title: ("Home"),
        activeColorSecondary: Colors.white,
        activeColorPrimary: AppColors.primary,
        textStyle: AppTextStyles.semiBold14.copyWith(color: Colors.white),
      ),
      PersistentBottomNavBarItem(
        icon: SvgPicture.asset(AppImages.imagesGroup),
        title: ("Home"),
        activeColorSecondary: Colors.white,

        activeColorPrimary: AppColors.primary,
        textStyle: AppTextStyles.semiBold14.copyWith(color: Colors.white),
      ),
      PersistentBottomNavBarItem(
        icon: SvgPicture.asset(AppImages.imagesSearch),
        title: ("Home"),
        activeColorSecondary: Colors.white,

        activeColorPrimary: AppColors.primary,
        textStyle: AppTextStyles.semiBold14.copyWith(color: Colors.white),
      ),
      PersistentBottomNavBarItem(
        icon: SvgPicture.asset(AppImages.imagesGlobal),
        title: ("Home"),
        activeColorSecondary: Colors.white,

        activeColorPrimary: AppColors.primary,
        textStyle: AppTextStyles.semiBold14.copyWith(color: Colors.white),
      ),
      PersistentBottomNavBarItem(
        icon: SvgPicture.asset(AppImages.imagesSetting),
        title: ("Home"),
        activeColorPrimary: AppColors.primary,
        activeColorSecondary: Colors.white,

        textStyle: AppTextStyles.semiBold14.copyWith(color: Colors.white),
      ),
    ];
  }
}
