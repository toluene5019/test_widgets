import 'package:flutter/material.dart';
import 'package:test_widgets/colors.dart';

class PagesWidget extends StatelessWidget {
  final String pagesTitle;
  final String pagesDateText;
  final String pageNumberText;

  const PagesWidget({
    super.key,
    required this.pagesTitle,
    required this.pagesDateText,
    required this.pageNumberText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.only(top: 20, right: 20, bottom: 12, left: 20),
      decoration: BoxDecoration(
        color: AppColor.backgroundColor,
        border: const Border(
          bottom: BorderSide(
            color: AppColor.bottomColor,
            width: 8,
          ),
        ),
        borderRadius: BorderRadius.circular(14.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            pagesTitle,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22.0,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 4),
          Row(
            children: [
              Expanded(
                flex: 3,
                child: Text(
                  pagesDateText,
                  style: const TextStyle(
                    fontSize: 16.0,
                    color: Colors.blueGrey,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Text(
                  pageNumberText,
                  textAlign: TextAlign.end,
                  style: const TextStyle(
                    fontSize: 16.0,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
