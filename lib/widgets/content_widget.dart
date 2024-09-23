import 'package:flutter/material.dart';
import 'package:test_widgets/colors.dart';

class ContentWidget extends StatelessWidget {
  final String title;
  final String locationOrDateText;
  final String? idVolumeText;
  final String yearsOrPageText;
  final IconData? icon;
  final Color backgroundColor;
  final Color bottomColor;

  const ContentWidget.notes({
    super.key,
    required this.title,
    required this.locationOrDateText,
    required this.idVolumeText,
    required this.yearsOrPageText,
    required this.icon,
    required this.backgroundColor,
    required this.bottomColor,
  });

  const ContentWidget.pages({
    super.key,
    required this.title,
    required this.locationOrDateText,
    required this.yearsOrPageText,
    required this.backgroundColor,
    required this.bottomColor,
    this.idVolumeText,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.only(top: 20, right: 20, bottom: 12, left: 20),
      decoration: BoxDecoration(
        color: backgroundColor,
        border: Border(
          bottom: BorderSide(
            color: bottomColor,
            width: 8,
          ),
        ),
        borderRadius: BorderRadius.circular(14.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22.0,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Row(
                      children: [
                        if (icon != null)
                          Row(
                            children: [
                              Icon(
                                icon,
                                size: 14.0,
                                color: AppColor.iconColor,
                              ),
                              const SizedBox(width: 4),
                            ],
                          ),
                        Text(
                          locationOrDateText,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontSize: 16.0,
                            color: Colors.blueGrey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    if (idVolumeText != null)
                      Text(
                        idVolumeText!,
                        style: const TextStyle(
                          fontSize: 20.0,
                          color: Colors.black,
                        ),
                      ),
                    Text(
                      yearsOrPageText,
                      style: const TextStyle(
                        fontSize: 16.0,
                        color: Colors.blueGrey,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
