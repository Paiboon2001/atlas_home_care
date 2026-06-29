import '/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';

/// Primary action button used across the app.
///
/// Gradient pill button (#004078 → #0076DE) with white SemiBold label,
/// matching the Figma "ยืนยัน" button. When [enabled] is false (or
/// [onPressed] is null) it renders a muted/disabled style and ignores taps.
class MainButton extends StatelessWidget {
  const MainButton({
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
          gradient: LinearGradient(
            colors: isEnabled
                ? const [Color(0xFF004078), Color(0xFF0076DE)]
                : [
                    FlutterFlowTheme.of(context).secondaryText,
                    FlutterFlowTheme.of(context).secondaryText,
                  ],
            stops: const [0.0, 1.0],
            begin: const AlignmentDirectional(0.0, 1.0),
            end: const AlignmentDirectional(0.0, -1.0),
          ),
          borderRadius: BorderRadius.circular(100.0),
        ),
        alignment: Alignment.center,
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: FlutterFlowTheme.of(context).bodyLarge.override(
                fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                color: Colors.white,
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
