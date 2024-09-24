import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:test_widgets/colors.dart';

class ShareTextWidget extends StatefulWidget {
  final String bookTitle;
  final String authorName;
  final String volumeNumberText;
  final String pageNumberText;
  final String detailsText;
  final String bookText;
  final IconData iconBookmark;

  const ShareTextWidget({
    super.key,
    required this.bookTitle,
    required this.authorName,
    required this.volumeNumberText,
    required this.pageNumberText,
    required this.bookText,
    required this.iconBookmark,
    required this.detailsText,
  });

  @override
  _ShareTextWidgetState createState() => _ShareTextWidgetState();
}

class _ShareTextWidgetState extends State<ShareTextWidget> {
  String selectedText = "";

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.only(top: 30, right: 14, bottom: 20, left: 14),
      decoration: BoxDecoration(
        color: AppColor.backgroundColor,
        borderRadius: BorderRadius.circular(14.0),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.bookTitle,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22.0,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      widget.authorName,
                      style: const TextStyle(
                        fontSize: 16.0,
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    IconButton(
                      icon: Icon(
                        widget.iconBookmark,
                        size: 30.0,
                        color: AppColor.iconColor,
                      ),
                      onPressed: () {},
                    )
                  ],
                ),
              )
            ],
          ),
          const SizedBox(height: 4),
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.volumeNumberText,
                      style: const TextStyle(
                        fontSize: 20.0,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.pageNumberText,
                      style: const TextStyle(
                        fontSize: 18.0,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      widget.detailsText,
                      style: const TextStyle(
                        fontSize: 18.0,
                        color: AppColor.iconColor,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Divider(),
          SelectableText(
            widget.bookText,
            style: const TextStyle(
              fontSize: 16.0,
              color: Colors.black,
            ),
            onSelectionChanged: (selection, cause) {
              setState(() {
                selectedText = selection.textInside(widget.bookText);
              });
            },
          ),
          if (selectedText.isNotEmpty)
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: ElevatedButton(
                onPressed: () {
                  Share.share(selectedText);
                },
                child: const Text('Share Text'),
              ),
            ),
        ],
      ),
    );
  }
}
