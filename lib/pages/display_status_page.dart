import 'package:flutter/material.dart';
import 'package:test_widgets/widgets/display_status_widget.dart';

class DisplayStatusPage extends StatelessWidget {
  const DisplayStatusPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: DisplayStatusWidget(
                    status: Status.pass,
                    isActive: false,
                    text: 'Pass',
                  ),
                ),
                SizedBox(width: 2),
                Expanded(
                  child: DisplayStatusWidget(
                    status: Status.fail,
                    isActive: false,
                    text: 'Fail',
                  ),
                ),
                SizedBox(width: 2),
                Expanded(
                  child: DisplayStatusWidget(
                    isActive: false,
                    status: Status.na,
                    text: 'N/A',
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: DisplayStatusWidget(
                    status: Status.pass,
                    isActive: true,
                    text: 'Pass',
                  ),
                ),
                SizedBox(width: 2),
                Expanded(
                  child: DisplayStatusWidget(
                    status: Status.fail,
                    isActive: true,
                    text: 'Fail',
                  ),
                ),
                SizedBox(width: 2),
                Expanded(
                  child: DisplayStatusWidget(
                    isActive: true,
                    status: Status.na,
                    text: 'N/A',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
