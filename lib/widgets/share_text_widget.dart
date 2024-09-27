import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:test_widgets/colors.dart';
import 'package:flutter/services.dart';

class ShareTextWidget extends StatefulWidget {
  final String bookTitle;
  final String authorName;
  final String volumeNumberText;
  final String pageNumberText;
  final String detailsText;
  final String bookText;
  final String referenceChapters;
  final String wordInfo;
  final String locationInfo;
  final String dateInfo;
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
    required this.referenceChapters,
    required this.wordInfo,
    required this.locationInfo,
    required this.dateInfo,
  });

  @override
  _ShareTextWidgetState createState() => _ShareTextWidgetState();
}

class _ShareTextWidgetState extends State<ShareTextWidget> {
  String selectedText = "";
  bool isVisibleDetails = false;

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
          // Header section (title, author, bookmark, etc.)
          Row(
            children: [
              Expanded(
                flex: 4,
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
                        fontSize: 18.0,
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

          Row(
            children: [
              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.volumeNumberText,
                      style: const TextStyle(
                          fontSize: 18.0,
                          color: Colors.black,
                          fontWeight: FontWeight.w600),
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
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          widget.detailsText,
                          style: const TextStyle(
                            fontSize: 18.0,
                            color: AppColor.iconColor,
                          ),
                        ),
                        IconButton(
                          icon: Icon(
                            isVisibleDetails
                                ? Icons.keyboard_arrow_up
                                : Icons.keyboard_arrow_down,
                            size: 24.0,
                            color: AppColor.iconColor,
                          ),
                          onPressed: () => setState(
                            () => isVisibleDetails = !isVisibleDetails,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),

          const Divider(),
          if (isVisibleDetails)
            Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Row(
                        children: [
                          const Icon(
                            Icons.menu_book,
                            size: 18.0,
                            color: AppColor.iconColor,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 4.0),
                            child: Text(
                              widget.referenceChapters,
                              style: const TextStyle(
                                fontSize: 14.0,
                                color: AppColor.darkGrey,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Row(
                        children: [
                          const Icon(
                            Icons.people,
                            size: 18.0,
                            color: AppColor.iconColor,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 4.0),
                            child: Text(
                              widget.wordInfo,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                fontSize: 14.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                      child: VerticalDivider(color: Colors.grey),
                    ),
                    Expanded(
                      flex: 3,
                      child: Row(
                        children: [
                          const Icon(
                            Icons.location_on_outlined,
                            size: 18.0,
                            color: AppColor.iconColor,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 4.0),
                            child: Text(
                              widget.locationInfo,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(fontSize: 14.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                      child: VerticalDivider(color: Colors.grey),
                    ),
                    Expanded(
                      flex: 5,
                      child: Row(
                        children: [
                          const Icon(
                            Icons.calendar_month,
                            size: 18.0,
                            color: AppColor.iconColor,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 4.0),
                            child: Text(
                              widget.dateInfo,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: const TextStyle(fontSize: 14.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          const SizedBox(height: 10),

          // custom context menu
          Container(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                SelectableText(widget.bookText,
                    style: const TextStyle(fontSize: 16.0, color: Colors.black),
                    onSelectionChanged: (selection, cause) {
                  setState(() {
                    selectedText = selection.textInside(widget.bookText);
                  });
                }, contextMenuBuilder: (BuildContext context,
                        EditableTextState editableTextState) {
                  return AdaptiveTextSelectionToolbar(
                    anchors: editableTextState.contextMenuAnchors,
                    children: [
                      TextButton(
                        onPressed: () {
                          Clipboard.setData(ClipboardData(text: selectedText));
                          // future function :  addToBookmark(selectedText);
                          Navigator.pop(context);
                        },
                        child: const Padding(
                          padding: EdgeInsets.all(4.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(Icons.bookmark_add_outlined,
                                  size: 20.0, color: Colors.black),
                              Text(
                                'Bookmark',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Share.share(selectedText);
                          Navigator.pop(context);
                        },
                        child: const Padding(
                          padding: EdgeInsets.all(4.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(Icons.share,
                                  size: 20.0, color: Colors.black),
                              Text(
                                'Share',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                }),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.keyboard_arrow_left,
                          size: 24.0, color: Colors.grey),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          widget.pageNumberText,
                          style: const TextStyle(
                              fontSize: 18.0, color: AppColor.iconColor),
                        ),
                      ),
                      const Icon(Icons.keyboard_arrow_right,
                          size: 24.0, color: Colors.grey),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
