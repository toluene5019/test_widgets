import 'package:flutter/material.dart';
import 'package:test_widgets/widgets/filters_widgets/search_filters_item_count.dart';

class FilterDateItem extends StatefulWidget {
  const FilterDateItem({
    super.key,
  });

  @override
  FilterDateItemState createState() => FilterDateItemState();
}

class FilterDateItemState extends State<FilterDateItem> {
  bool _isExpanded = false;
  DateTime? _startDate;
  DateTime? _endDate;

  Future<void> _selectDate(BuildContext context, bool isStartDate) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: isStartDate
          ? (_startDate ?? DateTime.now())
          : (_endDate ?? DateTime.now()),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != (_startDate ?? _endDate)) {
      setState(() {
        if (isStartDate) {
          _startDate = picked;
        } else {
          _endDate = picked;
        }
      });
    }
  }

  int get _itemCount => (_startDate != null || _endDate != null) ? 1 : 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              _isExpanded = !_isExpanded;
            });
          },
          child: Container(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'DATE',
                  style: TextStyle(fontSize: 16),
                ),
                Row(
                  children: [
                    SearchFiltersItemCount(
                      isForAppbar: true,
                      itemCount: _itemCount,
                    ),
                    Icon(
                      _isExpanded ? Icons.clear_outlined : Icons.add,
                      color: Colors.grey,
                      size: 28,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Visibility(
          visible: _isExpanded,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () =>
                        _selectDate(context, true), // Select start date
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            _startDate != null
                                ? _startDate!.toLocal().toString().split(' ')[0]
                                : 'Start Date',
                            style: const TextStyle(color: Colors.black54),
                          ),
                          const Icon(
                            Icons.calendar_today,
                            color: Colors.grey,
                            size: 18,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: GestureDetector(
                    onTap: () => _selectDate(context, false), // Select end date
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            _endDate != null
                                ? _endDate!.toLocal().toString().split(' ')[0]
                                : 'End Date',
                            style: const TextStyle(color: Colors.black54),
                          ),
                          const Icon(
                            Icons.calendar_today,
                            color: Colors.grey,
                            size: 18,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
