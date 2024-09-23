import 'package:flutter/material.dart';
import 'package:test_widgets/colors.dart';

class BookInfoCard extends StatelessWidget {
  final String authorName;
  final String bookTitle;
  final String bookDescription;
  final String pageNumber;
  final String volumeNumber;
  final String wordInfo;
  final String bookInfoAddress;
  final String bookInfoDate;
  final Color cardBackgroundColor;
  final Color cardBottomColor;
  final IconData iconTitle;
  final IconData iconWord;
  final IconData iconAddress;
  final IconData iconDate;

  const BookInfoCard({
    super.key,
    required this.authorName,
    required this.bookTitle,
    required this.bookDescription,
    required this.pageNumber,
    required this.volumeNumber,
    required this.wordInfo,
    required this.bookInfoAddress,
    required this.bookInfoDate,
    required this.cardBackgroundColor,
    required this.cardBottomColor,
    required this.iconTitle,
    required this.iconWord,
    required this.iconAddress,
    required this.iconDate,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.only(top: 20, right: 14, bottom: 20, left: 14),
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
          Row(
            children: [
              Expanded(
                flex: 5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      authorName,
                      style: const TextStyle(
                        fontSize: 22.0,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      bookTitle,
                      style: const TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.w300),
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
                        iconTitle,
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
          const SizedBox(
            height: 10,
          ),
          Text(
            bookDescription,
            style: const TextStyle(
              fontSize: 16.0,
              color: Colors.black,
            ),
          ),
          const Divider(),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Text(
                  pageNumber,
                  style: const TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
                child: VerticalDivider(
                  color: Colors.grey,
                ),
              ),
              Expanded(
                flex: 3,
                child: Text(
                  volumeNumber,
                  style: const TextStyle(
                      fontSize: 16.0, fontWeight: FontWeight.w300),
                ),
              ),
            ],
          ),
          const Divider(),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Row(
                  children: [
                    Icon(
                      iconWord,
                      size: 18.0,
                      color: AppColor.iconColor,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 4.0),
                      child: Text(
                        wordInfo,
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
                child: VerticalDivider(
                  color: Colors.grey,
                ),
              ),
              Expanded(
                flex: 2,
                child: Row(
                  children: [
                    Icon(
                      iconAddress,
                      size: 18.0,
                      color: AppColor.iconColor,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 4.0),
                      child: Text(
                        bookInfoAddress,
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
                child: VerticalDivider(
                  color: Colors.grey,
                ),
              ),
              Expanded(
                flex: 3,
                child: Row(
                  children: [
                    Icon(
                      iconDate,
                      size: 18.0,
                      color: AppColor.iconColor,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 4.0),
                      child: Text(
                        bookInfoDate,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: const TextStyle(
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
