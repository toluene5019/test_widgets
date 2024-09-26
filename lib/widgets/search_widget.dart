import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchWidget extends StatefulWidget {
  final Function? onSubmit;
  final Function? onFilterClick;

  const SearchWidget({
    super.key,
    required this.onSubmit,
    required this.onFilterClick,
  });

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

bool isFilterActive = false;

class _SearchWidgetState extends State<SearchWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 22.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(8.0),
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(0, 4),
                        blurRadius: 8,
                        color: Colors.black.withOpacity(0.10),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          textInputAction: TextInputAction.search,
                          style: const TextStyle(
                              fontSize: 18.0, color: Colors.black),
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            fillColor: Colors.white,
                            hintText: 'Enter keyword',
                            hintStyle: TextStyle(color: Colors.grey),
                            contentPadding: EdgeInsets.only(
                                left: 14.0, bottom: 8.0, top: 8.0),
                          ),
                          onFieldSubmitted: (value) {},
                        ),
                      ),
                      SvgPicture.asset(
                        "assets/icons/ic_search.svg",
                        colorFilter: const ColorFilter.mode(
                            Colors.black, BlendMode.srcIn),
                        width: 18,
                        height: 18,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 10),
              InkWell(
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.blueGrey[900],
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  child: SvgPicture.asset(
                    "assets/icons/filter-funnel-01.svg",
                    colorFilter:
                        const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                    width: 30,
                    height: 30,
                  ),
                ),
                onTap: () {
                  setState(() {
                    isFilterActive = !isFilterActive;
                  });
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
