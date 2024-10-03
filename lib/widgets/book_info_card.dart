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
  final Color bookInfoColor;

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
    required this.bookInfoColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: bookInfoColor.withOpacity(0.2),
        border: Border(
          bottom: BorderSide(
            color: bookInfoColor,
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
                        color: AppColor.greenColor,
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
                      icon: const Icon(
                        Icons.bookmark_border_outlined,
                        size: 24.0,
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
              fontSize: 14.0,
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
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 11.0,
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
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                      fontSize: 12.0, fontWeight: FontWeight.w300),
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
                    const Padding(
                      padding: EdgeInsets.only(right: 4.0),
                      child: Icon(
                        Icons.people,
                        size: 14.0,
                        color: AppColor.iconColor,
                      ),
                    ),
                    Flexible(
                      child: Text(
                        wordInfo,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 10.0,
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
                    const Padding(
                      padding: EdgeInsets.only(right: 4.0),
                      child: Icon(
                        Icons.location_on_outlined,
                        size: 14.0,
                        color: AppColor.iconColor,
                      ),
                    ),
                    Flexible(
                      child: Text(
                        bookInfoAddress,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 10.0,
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
                    const Padding(
                      padding: EdgeInsets.only(right: 4.0),
                      child: Icon(
                        Icons.calendar_month,
                        size: 14.0,
                        color: AppColor.iconColor,
                      ),
                    ),
                    Flexible(
                      child: Text(
                        bookInfoDate,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: const TextStyle(
                          fontSize: 10.0,
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
