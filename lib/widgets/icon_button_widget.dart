import 'package:flutter/material.dart';

class IconButtonWidget extends StatelessWidget {
  final IconData icon;
  const IconButtonWidget({
    super.key,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(16),
      ),
      child: IconButton(
        iconSize: 72,
        color: Colors.white,
        icon: Icon(icon),
        onPressed: () {},
      ),
    );
  }
}
