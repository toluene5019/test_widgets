import 'package:flutter/material.dart';
import 'package:test_widgets/colors.dart';
import 'package:test_widgets/widgets/card_widget.dart';

class MinistryPage extends StatelessWidget {
  final List<Map<String, dynamic>> ministries = [
    {
      "cardTitle": "Stephen King",
      "cardDateText": "05/12/1898 - 09/25/1970",
      "volumeNumberText": "147 Volumes",
      "cardColor": AppColor.blueColor,
    },
    {
      "cardTitle": "Jack London",
      "cardDateText": "05/12/1898 - 09/25/1970",
      "volumeNumberText": "147 Volumes",
      "cardColor": AppColor.greenColor,
    },
    {
      "cardTitle": "Stephen King",
      "cardDateText": "05/12/1898 - 09/25/1970",
      "volumeNumberText": "147 Volumes",
      "cardColor": AppColor.redColor,
    },
    {
      "cardTitle": "Jack London",
      "cardDateText": "05/12/1898 - 09/25/1970",
      "volumeNumberText": "147 Volumes",
      "cardColor": AppColor.blueColor,
    },
    {
      "cardTitle": "Stephen King",
      "cardDateText": "05/12/1898 - 09/25/1970",
      "volumeNumberText": "147 Volumes",
      "cardColor": AppColor.tealColor,
    },
    {
      "cardTitle": "Jack London",
      "cardDateText": "05/12/1898 - 09/25/1970",
      "volumeNumberText": "147 Volumes",
      "cardColor": AppColor.redColor,
    },
  ];

  MinistryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ministry Page'),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 2 / 1.5,
        ),
        itemCount: ministries.length,
        itemBuilder: (context, index) {
          final ministry = ministries[index];
          return CardWidget(
            cardTitle: ministry["cardTitle"],
            cardDateText: ministry["cardDateText"],
            volumeNumberText: ministry["volumeNumberText"],
            cardColor: ministry["cardColor"],
          );
        },
      ),
    );
  }
}
