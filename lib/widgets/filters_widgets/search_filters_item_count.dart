import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// import 'package:indago/constants/app_colors.dart';
// import 'package:indago/constants/text_styles.dart';

class SearchFiltersItemCount extends StatelessWidget {
  final int itemCount;
  final bool isForAppbar;
  const SearchFiltersItemCount(
      {super.key, required this.itemCount, required this.isForAppbar});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: itemCount == 0
            ? Colors.grey
            : isForAppbar
                ? Colors.teal
                : Colors.blue,
        borderRadius: BorderRadius.circular(6.0),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 10),
      height: 18,
      width: 18,
      //color: AppColors.lightGrey,
      child: Center(
        child: Text(
          itemCount.toString(),
          style: const TextStyle(fontSize: 12),
        ),
      ),
    );
  }
}
