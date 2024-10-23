import 'package:flutter/material.dart';
import 'package:test_widgets/widgets/display_status_widget.dart';

class DisplayStatusPage extends StatelessWidget {
  const DisplayStatusPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                DisplayStatusWidget(
                  status: Status.pass,
                  isActive: false,
                  text: 'Pass',
                ),
                SizedBox(height: 10),
                DisplayStatusWidget(
                  status: Status.fail,
                  isActive: false,
                  text: 'Fail',
                ),
                SizedBox(height: 10),
                DisplayStatusWidget(
                  isActive: false,
                  status: Status.na,
                  text: 'N/A',
                ),
                SizedBox(height: 10),
                DisplayStatusWidget(
                  status: Status.pass,
                  isActive: true,
                  text: 'Pass',
                ),
                SizedBox(height: 10),
                DisplayStatusWidget(
                  status: Status.fail,
                  isActive: true,
                  text: 'Fail',
                ),
                SizedBox(height: 10),
                DisplayStatusWidget(
                  isActive: true,
                  status: Status.na,
                  text: 'N/A',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
