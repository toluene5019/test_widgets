import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final String cardTitle;
  final String cardDateText;
  final String volumeNumberText;
  final Color cardColor;

  const CardWidget({
    super.key,
    required this.cardTitle,
    required this.cardDateText,
    required this.volumeNumberText,
    required this.cardColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: cardColor.withOpacity(0.2),
        border: Border(
          bottom: BorderSide(
            color: cardColor,
            width: 20,
          ),
        ),
        borderRadius: BorderRadius.circular(14.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            cardTitle,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            cardDateText,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 10.0,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            volumeNumberText,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14.0,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
