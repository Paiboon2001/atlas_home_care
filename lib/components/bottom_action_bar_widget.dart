import '/components/main_button_widget.dart';
import 'package:flutter/material.dart';

/// White footer bar pinned at the bottom of a screen, wrapping a primary
/// [MainButton].
///
/// Rounded top corners + a subtle top shadow lift it off the scrollable
/// content behind it. The button is muted/disabled until [enabled] is true
/// (see [MainButton]). Drop it in as the last child of a screen's Column so
/// it stays pinned below an `Expanded` list/body.
class BottomActionBar extends StatelessWidget {
  const BottomActionBar({
    super.key,
    required this.text,
    required this.onPressed,
    this.enabled = true,
  });

  final String text;
  final VoidCallback? onPressed;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 8.0,
            color: Color(0x1A000000),
            offset: Offset(0.0, -2.0),
          )
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24.0),
          topRight: Radius.circular(24.0),
        ),
      ),
      padding: const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 32.0),
      child: MainButton(
        text: text,
        enabled: enabled,
        onPressed: onPressed,
      ),
    );
  }
}
