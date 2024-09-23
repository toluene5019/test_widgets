import 'package:flutter/material.dart';
import 'package:test_widgets/colors.dart';

class NotesWidget extends StatelessWidget {
  final String title;
  final String locationText;
  final String idText;
  final String yearsText;
  final Color notesBackgroundColor;
  final Color notesBottomColor;

  final IconData icon;

  const NotesWidget({
    super.key,
    required this.title,
    required this.locationText,
    required this.idText,
    required this.yearsText,
    required this.icon,
    required this.notesBackgroundColor,
    required this.notesBottomColor,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.only(top: 20, right: 20, bottom: 12, left: 20),
      decoration: BoxDecoration(
        color: notesBackgroundColor,
        border: Border(
          bottom: BorderSide(
            color: notesBottomColor,
            width: 8,
          ),
        ),
        borderRadius: BorderRadius.circular(14.0),
      ),
      child: Column(
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
                    const SizedBox(
                      height: 4,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Icon(
                                icon,
                                size: 14.0,
                                color: AppColor.iconColor,
                              ),
                              Text(
                                locationText,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.blueGrey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      idText,
                      style: const TextStyle(
                        fontSize: 20.0,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      yearsText,
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
