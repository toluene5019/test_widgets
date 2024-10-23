import 'package:flutter/material.dart';
import 'package:test_widgets/widgets/display_status_widget.dart';

class DisplayStatusPage extends StatelessWidget {
  const DisplayStatusPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> statuses = ['Pass', 'Fail', 'N/A'];
    const String activeStatus = 'Pass';

    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: DisplayStatusWidget(
                      status: statuses[0], activeStatus: activeStatus),
                ),
                const SizedBox(width: 5),
                Expanded(
                  child: DisplayStatusWidget(
                      status: statuses[1], activeStatus: activeStatus),
                ),
                const SizedBox(width: 5),
                Expanded(
                  child: DisplayStatusWidget(
                      status: statuses[2], activeStatus: activeStatus),
                ),
              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
