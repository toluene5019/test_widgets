import 'package:flutter/material.dart';
import 'package:test_widgets/colors.dart';
import 'package:test_widgets/widgets/content_widget.dart';

class ChapterPage extends StatelessWidget {
  final List<Map<String, dynamic>> chapters = [
    {
      "title": "Reading at Christchurch",
      "locationOrDateText": "Friday, July 3, 1987",
      "yearsOrPageText": "Page 2",
      "noteOrChapterColor": AppColor.blueColor,
    },
    {
      "title": "Reading at Christchurch",
      "locationOrDateText": "Friday, July 3, 1987",
      "yearsOrPageText": "Page 2",
      "noteOrChapterColor": AppColor.redColor,
    },
    {
      "title": "Reading at Christchurch",
      "locationOrDateText": "Friday, July 3, 1987",
      "yearsOrPageText": "Page 2",
      "noteOrChapterColor": AppColor.greenColor,
    },
  ];

  ChapterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chapter Page'),
      ),
      body: ListView.builder(
        itemCount: chapters.length,
        itemBuilder: (context, index) {
          final chapter = chapters[index];
          return ContentWidget.chapters(
            title: chapter["title"],
            locationOrDateText: chapter["locationOrDateText"],
            yearsOrPageText: chapter["yearsOrPageText"],
            noteOrChapterColor: chapter["noteOrChapterColor"],
          );
        },
      ),
    );
  }
}
