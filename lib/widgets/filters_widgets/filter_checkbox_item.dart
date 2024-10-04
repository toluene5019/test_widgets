import 'package:flutter/material.dart';
import 'package:test_widgets/widgets/filters_widgets/search_filters_item_count.dart';

class FilterCheckboxItem extends StatefulWidget {
  final String title;
  final List<String> checkboxes;

  const FilterCheckboxItem({
    super.key,
    required this.title,
    required this.checkboxes,
  });

  @override
  FilterCheckboxItemState createState() => FilterCheckboxItemState();
}

class FilterCheckboxItemState extends State<FilterCheckboxItem> {
  late List<bool> _checkboxValues;
  bool _isExpanded = false;

  @override
  void initState() {
    super.initState();
    _checkboxValues = List.generate(widget.checkboxes.length, (_) => false);
  }

  int get _checkedCount {
    return _checkboxValues.where((value) => value).length;
  }

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
                Text(
                  widget.title,
                  style: const TextStyle(fontSize: 14),
                ),
                Row(
                  children: [
                    SearchFiltersItemCount(
                      isForAppbar: true,
                      itemCount: _checkedCount,
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
          child: Wrap(
            spacing: 8.0,
            runSpacing: 8.0,
            children: widget.checkboxes.asMap().entries.map((entry) {
              int index = entry.key;
              String checkboxTitle = entry.value;

              return SizedBox(
                width: MediaQuery.of(context).size.width / 2 - 24,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Transform.scale(
                      scale: 0.8,
                      child: Checkbox(
                        value: _checkboxValues[index],
                        onChanged: (bool? value) {
                          setState(() {
                            _checkboxValues[index] = value ?? false;
                          });
                        },
                        activeColor: Colors.blue,
                        side: const BorderSide(color: Colors.grey),
                      ),
                    ),
                    Flexible(
                      child: Text(
                        checkboxTitle,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
