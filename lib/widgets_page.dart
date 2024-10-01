import 'package:flutter/material.dart';
import 'package:test_widgets/pages/book_info_page.dart';
import 'package:test_widgets/widgets/book_info_card.dart';
import 'package:test_widgets/widgets/card_widget.dart';
import 'package:test_widgets/colors.dart';
import 'package:test_widgets/widgets/content_widget.dart';
import 'package:test_widgets/widgets/icon_button_widget.dart';
import 'package:test_widgets/widgets/search_widget.dart';
import 'package:test_widgets/widgets/share_text_widget.dart';

class WidgetsPage extends StatelessWidget {
  const WidgetsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController searchController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              BookInfoPage(),
              SearchWidget(
                onSubmit: null,
                onFilterClick: null,
                controller: searchController,
                showFilterButton: true,
              ),
              SearchWidget(
                onSubmit: null,
                onFilterClick: null,
                controller: searchController,
                showFilterButton: false,
              ),
              const ShareTextWidget(
                bookTitle: 'Three Comrades',
                authorName: 'Erich Maria Remarque',
                volumeNumberText: 'SOM NS v293',
                pageNumberText: 'Page 234',
                detailsText: 'Details',
                bookText:
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam tempus sagittis mi, non dignissim erat imperdiet vel. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam tempus sagittis mi, non dignissim erat imperdiet vel. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam tempus sagittis mi, non dignissim erat imperdiet vel. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam tempus sagittis mi, non dignissim erat imperdiet vel. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam tempus sagittis mi, non dignissim erat imperdiet vel. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam tempus sagittis mi, non dignissim erat imperdiet vel.',
                iconBookmark: Icons.bookmark_border_outlined,
                referenceChapters: '[John 5:23], [Luke 5:23], [Mark 5:23]',
                wordInfo: 'Word',
                locationInfo: 'London, UK',
                dateInfo: 'Tuesday, Mar 12, 1963',
              ),
              const ContentWidget.notes(
                title: "NOTES OF MEETINGS",
                locationOrDateText: "Australia & New Zealand",
                idVolumeText: 'NS 131',
                yearsOrPageText: '1994-1995',
                icon: Icons.location_on_outlined,
                backgroundColor: AppColor.backgroundColor,
                bottomColor: AppColor.bottomColor,
              ),
              const ContentWidget.pages(
                title: "Reading at Christchurch",
                locationOrDateText: 'Friday, July 3, 1987',
                yearsOrPageText: 'Page 2',
                backgroundColor: AppColor.backgroundColor,
                bottomColor: AppColor.bottomColor,
              ),
              const Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: CardWidget(
                      cardTitle: "Stephen King",
                      cardDateText: "05/12/1898 - 09/25/1970",
                      volumeNumberText: "147 Volumes",
                      cardBackgroundColor: AppColor.cardBackgroundColor,
                      cardBottomColor: AppColor.cardBottomColor,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: CardWidget(
                      cardTitle: "Jack London",
                      cardDateText: "05/12/1898 - 09/25/1970",
                      volumeNumberText: "147 Volumes",
                      cardBackgroundColor: AppColor.backgroundColor,
                      cardBottomColor: AppColor.bottomColor,
                    ),
                  ),
                ],
              ),
              const IconButtonWidget(icon: Icons.search),
              const BookInfoCard(
                authorName: "George Orwell",
                bookTitle: "Nineteen Eighty-Four",
                bookDescription:
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam tempus sagittis mi, non dignissim erat imperdiet vel.",
                pageNumber: "PAGE 234",
                volumeNumber: "VOLUME NS v293",
                wordInfo: "Word",
                bookInfoAddress: "London, UK",
                bookInfoDate: "Friday, Jan 18, 1990",
              )
            ],
          ),
        ),
      ),
    );
  }
}
