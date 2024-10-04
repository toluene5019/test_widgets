import 'package:flutter/material.dart';
import 'package:test_widgets/widgets/filters_widgets/search_filters_item_count.dart';

class FilterLocationItem extends StatefulWidget {
  const FilterLocationItem({
    super.key,
  });

  @override
  FilterLocationItemState createState() => FilterLocationItemState();
}

class FilterLocationItemState extends State<FilterLocationItem> {
  bool _isExpanded = false;
  final TextEditingController _controller = TextEditingController();

  int get _itemCount => _controller.text.isNotEmpty ? 1 : 0;

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
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
            padding: const EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Meeting Location',
                  style: TextStyle(fontSize: 14),
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
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.grey),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.grey),
                ),
                labelText: 'e.g. region, country, location',
                labelStyle: const TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
