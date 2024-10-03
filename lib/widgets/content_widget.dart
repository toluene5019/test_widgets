import 'package:flutter/material.dart';
import 'package:test_widgets/colors.dart';

class ContentWidget extends StatelessWidget {
  final String title;
  final String locationOrDateText;
  final String? idVolumeText;
  final String yearsOrPageText;
  final IconData? icon;
  final Color noteOrChapterColor;

  const ContentWidget.notes({
    super.key,
    required this.title,
    required this.locationOrDateText,
    required this.idVolumeText,
    required this.yearsOrPageText,
    required this.icon,
    required this.noteOrChapterColor,
  });

  const ContentWidget.chapters({
    super.key,
    required this.title,
    required this.locationOrDateText,
    required this.yearsOrPageText,
    required this.noteOrChapterColor,
    this.idVolumeText,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: noteOrChapterColor.withOpacity(0.2),
        border: Border(
          bottom: BorderSide(
            color: noteOrChapterColor,
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
                        fontSize: 18.0,
                        color: Colors.black,
                      ),
                    ),
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
                            fontSize: 12.0,
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
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    if (idVolumeText != null)
                      Text(
                        idVolumeText!,
                        style: const TextStyle(
                          fontSize: 14.0,
                          color: Colors.black,
                        ),
                      ),
                    Text(
                      yearsOrPageText,
                      style: TextStyle(
                        fontSize: 12.0,
                        color: idVolumeText != null
                            ? Colors.blueGrey
                            : Colors.black,
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
