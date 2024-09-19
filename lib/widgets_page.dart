import 'package:flutter/material.dart';
import 'package:test_widgets/widgets/book_info_card.dart';
import 'package:test_widgets/widgets/card_widget.dart';
import 'package:test_widgets/colors.dart';
import 'package:test_widgets/widgets/icon_button_widget.dart';
import 'package:test_widgets/widgets/notes_widget.dart';
import 'package:test_widgets/widgets/pages_widget.dart';

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
                notesBackgroundColor: AppColor.backgroundColor,
                notesBottomColor: AppColor.bottomColor,
              ),
              PagesWidget(
                pagesTitle: "Reading at Christchurch",
                pagesDateText: 'Friday, July 3, 1987',
                pageNumberText: 'Page 2',
                pageBackgroundColor: AppColor.backgroundColor,
                pageBottomColor: AppColor.bottomColor,
              ),
              Row(
                children: [
                  CardWidget(
                    cardTitle: "Stephen King",
                    cardDateText: "05/12/1898 - 09/25/1970",
                    volumeNumberText: "147 Volumes",
                    cardBackgroundColor: AppColor.cardBackgroundColor,
                    cardBottomColor: AppColor.cardBottomColor,
                  ),
                  CardWidget(
                    cardTitle: "Jack London",
                    cardDateText: "05/12/1898 - 09/25/1970",
                    volumeNumberText: "147 Volumes",
                    cardBackgroundColor: AppColor.backgroundColor,
                    cardBottomColor: AppColor.bottomColor,
                  ),
                ],
              ),
              IconButtonWidget(icon: Icons.search),
              BookInfoCard(
                bookInfoAuthor: "George Orwell",
                bookInfoTitle: "Nineteen Eighty-Four",
                bookInfoDesc:
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam tempus sagittis mi, non dignissim erat imperdiet vel.",
                bookInfoPageNmber: "PAGE 234",
                bookInfoVolume: "VOLUME NS v293",
                bookInfoWord: "Word",
                bookInfoAddress: "London, UK",
                bookInfoDate: "Friday, Jan 18, 1990",
                cardBackgroundColor: AppColor.backgroundColor,
                cardBottomColor: AppColor.cardBottomColor,
                iconTitle: Icons.bookmark_border_outlined,
                iconWord: Icons.people,
                iconAddress: Icons.location_on_outlined,
                iconDate: Icons.calendar_month,
              )
            ],
          ),
        ),
      ),
    );
  }
}
