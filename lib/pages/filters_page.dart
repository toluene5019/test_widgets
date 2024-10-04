import 'package:flutter/material.dart';
import 'package:test_widgets/widgets/filters_widgets/filter_checkbox_item.dart';
import 'package:test_widgets/widgets/filters_widgets/filter_date_item.dart';
import 'package:test_widgets/widgets/filters_widgets/filter_location_item.dart';
import 'package:test_widgets/widgets/filters_widgets/search_filters_item_count.dart';

class FiltersPage extends StatefulWidget {
  const FiltersPage({super.key});

  @override
  FiltersPageState createState() => FiltersPageState();
}

class FiltersPageState extends State<FiltersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('Filters'),
                  SearchFiltersItemCount(
                    isForAppbar: true,
                    itemCount: 0,
                  ),
                ],
              ),
              Divider(),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Purify your search using available filters.',
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                  textAlign: TextAlign.left,
                ),
              ),
              FilterCheckboxItem(
                title: 'Servant',
                checkboxes: [
                  'S.O. Meone',
                  'J.A. Smith',
                  'K.E Richards',
                  'S.E. Samuels',
                  'I.K. Harwood',
                  'F.R. Jones',
                ],
              ),
              Divider(),
              FilterCheckboxItem(
                title: 'Meeting Type',
                checkboxes: [
                  'Word',
                  'Reading',
                  'Adress',
                  'Gospel',
                ],
              ),
              Divider(),
              FilterLocationItem(),
              Divider(),
              FilterDateItem(),
              Divider(),
              FilterCheckboxItem(
                title: 'Publication Type',
                checkboxes: [
                  'White Book',
                  'Hemn Book',
                  'Volume',
                  'Bible',
                  'Tract',
                  'Latters',
                ],
              ),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
