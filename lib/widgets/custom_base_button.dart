import 'package:flutter/material.dart';

/// {@template base_action_button}
/// Creates a base action button with optional icons.
///
/// Can be extended for various different use purposes.
///
/// [Figma specs](https://www.figma.com/design/0vKqL0twekHfbX73BUDUNn/Protean-%7C-Mobile-app-INTERNAL?node-id=0-951&node-type=frame&t=D2gVejt6O1VUdDR8-0)
/// {@endtemplate}
class CustomBaseButton extends StatelessWidget {
  /// {@macro base_action_button}
  const CustomBaseButton({
    super.key,
    required this.title,
    this.onPressed,
    this.textStyle = defaultTextStyle,
    this.backgroundColor = Colors.green,
    this.borderColor,
    this.horizontalMargin,
    this.prefixIcon,
    this.suffixIcon,
    this.fullWidth = false,
  });

  /// Default button corner radius
  static const double defaultCornerRadius = 30;

  /// Default action button title text style
  static const TextStyle defaultTextStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 18,
    color: Colors.blueAccent,
  );

  /// Title of the underlying [TextButton].
  final String title;

  /// Action function of the [TextButton].
  final VoidCallback? onPressed;

  /// Text style of the underlying [TextButton] title.
  final TextStyle? textStyle;

  /// Background color [TextButton].
  final Color backgroundColor;

  /// Border color [TextButton].
  final Color? borderColor;

  /// Horizontal margin for [TextButton].
  final double? horizontalMargin;

  /// Optional prefix icon to display before the text.
  final IconData? prefixIcon;

  /// Optional suffix icon to display after the text.
  final IconData? suffixIcon;

  // Parameter to determine the width
  final bool fullWidth;

  @override
  Widget build(BuildContext context) {
    final buttonContent = Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (prefixIcon != null) ...[
          Icon(prefixIcon, size: 20),
          const SizedBox(width: 8),
        ],
        Text(title, style: textStyle),
        if (suffixIcon != null) ...[
          const SizedBox(width: 8),
          Icon(suffixIcon, size: 20),
        ],
      ],
    );

    final button = Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalMargin ?? 0),
      child: fullWidth
          ? SizedBox(
              width: double.infinity,
              child: TextButton(
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.all(16),
                  backgroundColor: backgroundColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(defaultCornerRadius),
                    side: BorderSide(
                      color: borderColor ?? backgroundColor,
                    ),
                  ),
                ),
                onPressed: onPressed,
                child: buttonContent,
              ),
            )
          : TextButton(
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(16),
                backgroundColor: backgroundColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(defaultCornerRadius),
                  side: BorderSide(
                    color: borderColor ?? backgroundColor,
                  ),
                ),
              ),
              onPressed: onPressed,
              child: buttonContent,
            ),
    );

    return button;
  }
}
