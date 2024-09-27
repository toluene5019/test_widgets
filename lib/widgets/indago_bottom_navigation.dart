import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:indago/constants/app_strings.dart';
// import 'package:indago/constants/text_styles.dart';
// import 'package:indago/features/home/settings/presentation/pages/settings_page.dart';
// import 'package:indago/features/ministry/presentation/pages/ministry_chapters_page.dart';
// import 'package:indago/features/ministry/presentation/pages/ministry_page.dart';
// import 'package:indago/old/pages/search_page.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:test_widgets/colors.dart';
import 'package:test_widgets/widgets_page.dart';

class IndagoBottomNavigation extends StatefulWidget {
  const IndagoBottomNavigation({
    super.key,
  });

  @override
  State<IndagoBottomNavigation> createState() => _IndagoBottomNavigationState();
}

class _IndagoBottomNavigationState extends State<IndagoBottomNavigation> {
  final PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: buildScreens(),
      items: navBarItems(),
      handleAndroidBackButtonPress: true,
      // Default is true.
      resizeToAvoidBottomInset: true,
      // This needs to be true if you want to move up the screen on a non-scrollable screen when keyboard appears. Default is true.
      stateManagement: true,
      // Default is true.
      hideNavigationBarWhenKeyboardAppears: true,
      popBehaviorOnSelectedNavBarItemPress: PopBehavior.all,
      // padding: const EdgeInsets.only(top: 1),
      backgroundColor: AppColor.white,
      isVisible: true,
      animationSettings: const NavBarAnimationSettings(
        navBarItemAnimation: ItemAnimationSettings(
          // Navigation Bar's items animation properties.
          duration: Duration(milliseconds: 400),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: ScreenTransitionAnimationSettings(
          // Screen transition animation on change of selected tab.
          animateTabTransition: true,
          duration: Duration(milliseconds: 300),
          screenTransitionAnimationType: ScreenTransitionAnimationType.fadeIn,
        ),
      ),
      confineToSafeArea: true,
      navBarHeight: kBottomNavigationBarHeight,
      navBarStyle: NavBarStyle.style15,
      // Choose the nav bar style with this property
    );
  }
}

List<Widget> buildScreens() {
  return [
    const WidgetsPage(),
    const WidgetsPage(),
    const WidgetsPage(),
    const WidgetsPage(),
    const WidgetsPage(),

    // const SearchPage(),
    // const MinistryChaptersPage(),
    // const SearchPage(),
    // const SettingsPage(),
  ];
}

List<PersistentBottomNavBarItem> navBarItems() {
  return [
    PersistentBottomNavBarItem(
      icon: SvgPicture.asset(
        "assets/icons/ministry-1.svg",
        width: 30,
        height: 30,
        colorFilter: const ColorFilter.mode(AppColor.blue, BlendMode.srcIn),
      ),
      inactiveIcon: SvgPicture.asset(
        "assets/icons/ic_bottom_ministry.svg",
        width: 30,
        height: 30,
        colorFilter: const ColorFilter.mode(AppColor.darkGrey, BlendMode.srcIn),
      ),
      title: ("Ministry"),
      activeColorPrimary: AppColor.blue,
      inactiveColorPrimary: AppColor.darkGrey,
    ),
    PersistentBottomNavBarItem(
      icon: SvgPicture.asset(
        "assets/icons/ic_bible.svg",
        colorFilter: const ColorFilter.mode(AppColor.blue, BlendMode.srcIn),
        width: 30,
        height: 30,
      ),
      inactiveIcon: SvgPicture.asset(
        "assets/icons/ic_bible.svg",
        width: 30,
        height: 30,
        colorFilter: const ColorFilter.mode(AppColor.darkGrey, BlendMode.srcIn),
      ),
      title: ("Title"),
      activeColorPrimary: AppColor.blue,
      inactiveColorPrimary: AppColor.darkGrey,
    ),
    PersistentBottomNavBarItem(
      icon: SvgPicture.asset(
        "assets/icons/ic_search.svg",
        width: 25,
        height: 25,
        colorFilter: const ColorFilter.mode(AppColor.blue, BlendMode.srcIn),
      ),
      title: ("Search"),
      textStyle: GoogleFonts.poppins(),
      activeColorPrimary: AppColor.white,
      activeColorSecondary: AppColor.blue,
      inactiveColorPrimary: AppColor.darkGrey,
      inactiveColorSecondary: AppColor.darkGrey,
    ),
    PersistentBottomNavBarItem(
      icon: SvgPicture.asset(
        "assets/icons/ic_bookmarks.svg",
        colorFilter: const ColorFilter.mode(AppColor.blue, BlendMode.srcIn),
        width: 30,
        height: 30,
      ),
      inactiveIcon: SvgPicture.asset(
        "assets/icons/ic_bookmarks.svg",
        width: 30,
        height: 30,
        colorFilter: const ColorFilter.mode(AppColor.darkGrey, BlendMode.srcIn),
      ),
      title: ("Bookmarks"),
      activeColorPrimary: AppColor.blue,
      inactiveColorPrimary: AppColor.darkGrey,
    ),
    PersistentBottomNavBarItem(
      icon: SvgPicture.asset(
        "assets/icons/ic_settings.svg",
        width: 30,
        height: 30,
        colorFilter: const ColorFilter.mode(AppColor.blue, BlendMode.srcIn),
      ),
      inactiveIcon: SvgPicture.asset(
        "assets/icons/ic_settings.svg",
        width: 30,
        height: 30,
        colorFilter: const ColorFilter.mode(AppColor.darkGrey, BlendMode.srcIn),
      ),
      title: ("Settings"),
      activeColorPrimary: AppColor.blue,
      inactiveColorPrimary: AppColor.darkGrey,
    ),
  ];
}
