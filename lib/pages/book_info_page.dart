import 'package:flutter/material.dart';
import 'package:test_widgets/colors.dart';
import 'package:test_widgets/widgets/book_info_card.dart';

class BookInfoPage extends StatelessWidget {
  final List<Map<String, dynamic>> books = [
    {
      "authorName": "George Orwell",
      "bookTitle": "Nineteen Eighty-Four",
      "bookDescription":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam tempus sagittis mi, non dignissim erat imperdiet vel.",
      "pageNumber": "PAGE 234",
      "volumeNumber": "VOLUME NS v293",
      "wordInfo": "Word",
      "bookInfoAddress": "London, UK",
      "bookInfoDate": "Friday, Jan 18, 1990",
      "cardBackgroundColor": AppColor.backgroundColor,
      "cardBottomColor": AppColor.bottomColor,
    },
    {
      "authorName": "George Orwell",
      "bookTitle": "Nineteen Eighty-Four",
      "bookDescription":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam tempus sagittis mi, non dignissim erat imperdiet vel.",
      "pageNumber": "PAGE 234",
      "volumeNumber": "VOLUME NS v293",
      "wordInfo": "Word",
      "bookInfoAddress": "London, UK",
      "bookInfoDate": "Friday, Jan 18, 1990",
    },
    {
      "authorName": "George Orwell",
      "bookTitle": "Nineteen Eighty-Four",
      "bookDescription":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam tempus sagittis mi, non dignissim erat imperdiet vel.",
      "pageNumber": "PAGE 234",
      "volumeNumber": "VVOLUME NS v293",
      "wordInfo": "Word",
      "bookInfoAddress": "London, UK",
      "bookInfoDate": "Friday, Jan 18, 1990",
    },
  ];

  BookInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Book Info Page'),
      ),
      body: ListView.builder(
        itemCount: books.length,
        itemBuilder: (context, index) {
          final book = books[index];
          return BookInfoCard(
            authorName: book["authorName"],
            bookTitle: book["bookTitle"],
            bookDescription: book["bookDescription"],
            pageNumber: book["pageNumber"],
            volumeNumber: book["volumeNumber"],
            wordInfo: book["wordInfo"],
            bookInfoAddress: book["bookInfoAddress"],
            bookInfoDate: book["bookInfoDate"],
          );
        },
      ),
    );
  }
}
