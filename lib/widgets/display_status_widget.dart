import 'package:flutter/material.dart';

/// {@template display_status_widget}
/// A widget that displays a status with custom background color based on the status.
///
/// [Status] can be one of `pass`, `fail`, or `na` (not applicable).
/// The widget can be active or inactive.
/// {@endtemplate}

class DisplayStatusWidget extends StatelessWidget {
  const DisplayStatusWidget({
    super.key,
    required this.status,
    required this.activeStatus,
  });

  /// The status to be displayed.
  /// Determines the background color.
  final String status;

  /// Whether the widget is active.
  final String activeStatus;

  /// Gets the background color based on the [status] and [activeStatus].
  Color _getBackgroundColor() {
    if (status == activeStatus) {
      switch (status) {
        case 'Pass':
          return Colors.lightGreen[300]!;
        case 'Fail':
          return Colors.pink[200]!;
        case 'N/A':
          return Colors.grey[400]!;
      }
    }
    return Colors.blue[50]!;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: _getBackgroundColor(),
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Center(
        child: Text(
          status,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 14.0,
          ),
        ),
      ),
    );
  }
}
