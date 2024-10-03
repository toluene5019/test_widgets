import 'package:flutter/material.dart';
import 'package:test_widgets/colors.dart';
import 'package:test_widgets/widgets/book_info_card.dart';
import 'package:test_widgets/widgets/content_widget.dart';

class NotesPage extends StatelessWidget {
  final List<Map<String, dynamic>> notes = [
    {
      "title": "NOTES OF MEETINGS",
      "locationOrDateText": "Australia & New Zealand",
      "idVolumeText": "NS 131",
      "yearsOrPageText": "1994-1995",
      "icon": Icons.location_on_outlined,
      "noteOrChapterColor": AppColor.blueColor,
    },
    {
      "title": "NOTES OF MEETINGS",
      "locationOrDateText": "Australia & New Zealand",
      "idVolumeText": "NS 131",
      "yearsOrPageText": "1994-1995",
      "icon": Icons.location_on_outlined,
      "noteOrChapterColor": AppColor.tealColor,
    },
    {
      "title": "NOTES OF MEETINGS",
      "locationOrDateText": "Australia & New Zealand",
      "idVolumeText": "NS 131",
      "yearsOrPageText": "1994-1995",
      "icon": Icons.location_on_outlined,
      "noteOrChapterColor": AppColor.redColor,
    },
  ];

  NotesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notes Page'),
      ),
      body: ListView.builder(
        itemCount: notes.length,
        itemBuilder: (context, index) {
          final note = notes[index];
          return ContentWidget.notes(
            title: note["title"],
            locationOrDateText: note["locationOrDateText"],
            idVolumeText: note["idVolumeText"],
            yearsOrPageText: note["yearsOrPageText"],
            icon: note["icon"],
            noteOrChapterColor: note["noteOrChapterColor"],
          );
        },
      ),
    );
  }
}
