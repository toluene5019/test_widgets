import 'package:flutter/material.dart';
import 'package:test_widgets/card_widget.dart';
import 'package:test_widgets/colors.dart';
import 'package:test_widgets/notes_widget.dart';
import 'package:test_widgets/pages_widget.dart';

class WidgetsPage extends StatelessWidget {
  const WidgetsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              NotesWidget(
                title: "NOTES OF MEETINGS",
                locationText: "Australia & New Zealand",
                idText: 'NS 131',
                yearsText: '1994-1995',
                icon: Icons.location_on_outlined,
              ),
              PagesWidget(
                pagesTitle: "Reading at Christchurch",
                pagesDateText: 'Friday, July 3, 1987',
                pageNumberText: 'Page 2',
              ),
              CardWidget(
                cardTitle: "Stephen King",
                cardDateText: "05/12/1898 - 09/25/1970",
                volumeNumberText: "147 Volumes",
                cardBackgroundColor: AppColor.cardBackgroundColor,
                cardBottomColor: AppColor.cardBottomColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
