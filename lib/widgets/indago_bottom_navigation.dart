import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_widgets/widgets_page.dart';

class IndagoBottomNavigation extends StatefulWidget {
  const IndagoBottomNavigation({super.key});

  @override
  State<IndagoBottomNavigation> createState() => _IndagoBottomNavigationState();
}

class _IndagoBottomNavigationState extends State<IndagoBottomNavigation> {
  final PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);

  @override
  Widget build(BuildContext context) {
    return PersistentTabView.custom(
      context,
      controller: _controller,
      screens: buildScreens(),
      itemCount: 5,
      customWidget: CustomNavBarWidget(
        items: navBarItems(),
        selectedIndex: _controller.index,
        onItemSelected: (index) {
          setState(() {
            _controller.index = index;
          });
        },
      ),
    );
  }
}

List<CustomNavBarScreen> buildScreens() {
  return [
    const CustomNavBarScreen(screen: WidgetsPage()),
    const CustomNavBarScreen(screen: WidgetsPage()),
    const CustomNavBarScreen(screen: WidgetsPage()),
    const CustomNavBarScreen(screen: WidgetsPage()),
    const CustomNavBarScreen(screen: WidgetsPage()),
  ];
}

List<Widget> navBarItems() {
  return [
    CustomNavBarItem(
      icon: SvgPicture.asset(
        "assets/icons/ministry-1.svg",
        width: 14,
        height: 14,
      ),
      title: "Ministry",
    ),
    CustomNavBarItem(
      icon: SvgPicture.asset(
        "assets/icons/ic_bible.svg",
        width: 14,
        height: 14,
      ),
      title: "Bible",
    ),
    CustomNavBarItem(
      icon: SvgPicture.asset(
        "assets/icons/ic_search.svg",
        width: 14,
        height: 14,
      ),
      title: "Search",
    ),
    CustomNavBarItem(
      icon: SvgPicture.asset(
        "assets/icons/ic_bookmarks.svg",
        width: 14,
        height: 14,
      ),
      title: "Bookmarks",
    ),
    CustomNavBarItem(
      icon: SvgPicture.asset(
        "assets/icons/ic_settings.svg",
        width: 14,
        height: 14,
      ),
      title: "Settings",
    ),
  ];
}

class CustomNavBarItem extends StatelessWidget {
  final Widget icon;
  final String title;

  const CustomNavBarItem({
    required this.icon,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        icon,
        const SizedBox(height: 0),
        Text(
          title,
          style: GoogleFonts.poppins(
            fontSize: 12,
            color: Colors.black,
            decoration: TextDecoration.none,
            fontWeight: FontWeight.normal,
          ),
        ),
      ],
    );
  }
}

class CustomNavBarWidget extends StatelessWidget {
  final List<Widget> items;
  final int selectedIndex;
  final Function(int) onItemSelected;

  const CustomNavBarWidget({
    required this.items,
    required this.selectedIndex,
    required this.onItemSelected,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: items.asMap().entries.map((entry) {
          int index = entry.key;
          Widget item = entry.value;
          return GestureDetector(
            onTap: () => onItemSelected(index),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
              child: item,
            ),
          );
        }).toList(),
      ),
    );
  }
}
