import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final String cardTitle;
  final String cardDateText;
  final String volumeNumberText;
  final Color cardBackgroundColor;
  final Color cardBottomColor;

  const CardWidget({
    super.key,
    required this.cardTitle,
    required this.cardDateText,
    required this.volumeNumberText,
    required this.cardBackgroundColor,
    required this.cardBottomColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.only(top: 30, right: 20, bottom: 20, left: 20),
      decoration: BoxDecoration(
        color: cardBackgroundColor,
        border: Border(
          bottom: BorderSide(
            color: cardBottomColor,
            width: 20,
          ),
        ),
        borderRadius: BorderRadius.circular(14.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            cardTitle,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22.0,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            cardDateText,
            style: const TextStyle(
              fontSize: 14.0,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            volumeNumberText,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
