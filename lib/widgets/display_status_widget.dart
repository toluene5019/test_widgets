import 'package:flutter/material.dart';

/// {@template display_status_widget}
/// A widget that displays a status with custom background color based on the status.
///
/// [Status] can be one of `pass`, `fail`, or `na` (not applicable).
/// The widget can be active or inactive.
/// {@endtemplate}

/// Enum representing possible statuses for the widget.
///
/// - `pass`: Represents a passing status.
/// - `fail`: Represents a failing status.
/// - `na`: Represents a status of "not applicable".`
enum Status { pass, fail, na }

class DisplayStatusWidget extends StatelessWidget {
  const DisplayStatusWidget({
    super.key,
    required this.status,
    required this.text,
    this.isActive = false,
  });

  /// The status to be displayed.
  /// Determines the background color.
  final Status status;

  /// The text to display inside the widget.
  final String text;

  /// Whether the widget is active.

  final bool isActive;

  /// Gets the background color based on the [status] and [isActive].
  Color _getBackgroundColor() {
    if (!isActive) return Colors.blue[50]!;
    switch (status) {
      case Status.pass:
        return Colors.lightGreen[300]!;
      case Status.fail:
        return Colors.pink[200]!;
      case Status.na:
        return Colors.grey[400]!;
    }
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
          text,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 14.0,
          ),
        ),
      ),
    );
  }
}
