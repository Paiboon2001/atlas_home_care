import '/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';

/// Secondary action button used across the app.
///
/// White pill button with a light outline and a primaryText SemiBold label,
/// matching the Figma "ยกเลิก" button. Pairs with [MainButton] (the primary
/// gradient button). When [enabled] is false (or [onPressed] is null) it
/// renders a muted style and ignores taps.
class SecondaryButton extends StatelessWidget {
  const SecondaryButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.enabled = true,
    this.height = 48.0,
    this.width = double.infinity,
  });

  final String text;
  final VoidCallback? onPressed;
  final bool enabled;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    final bool isEnabled = enabled && onPressed != null;

    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: isEnabled ? onPressed : null,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          border: Border.all(
            color: const Color(0xFFD0D8E0),
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(100.0),
        ),
        alignment: Alignment.center,
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: FlutterFlowTheme.of(context).bodyLarge.override(
                fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                color: isEnabled
                    ? FlutterFlowTheme.of(context).primaryText
                    : FlutterFlowTheme.of(context).secondaryText,
                fontSize: 16.0,
                letterSpacing: 0.0,
                fontWeight: FontWeight.w600,
                useGoogleFonts:
                    !FlutterFlowTheme.of(context).bodyLargeIsCustom,
              ),
        ),
      ),
    );
  }
}
