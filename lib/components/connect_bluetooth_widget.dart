import '/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';

/// Figma "Connect Bluetooth" pill (node 302:2219).
///
/// A white-outlined, rounded-100 chip with a bluetooth icon + label. Toggles
/// between the unconnect state ("ไม่เชื่อมต่อ") and the connect state
/// ("เชื่อม 1") based on [connected]. Wrap the tap via [onPressed] — the
/// unconnect state should open the "กรุณาเลือกบริษัทเครื่องมือ" sheet.
class ConnectBluetooth extends StatelessWidget {
  const ConnectBluetooth({
    super.key,
    required this.connected,
    this.onPressed,
    this.connectedLabel = 'เชื่อม 1',
    this.unconnectedLabel = 'ไม่ได้เชื่อม\nต่ออุปกรณ์ IT',
  });

  final bool connected;
  final VoidCallback? onPressed;
  final String connectedLabel;
  final String unconnectedLabel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: onPressed,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            connected
                ? Icons.bluetooth_connected_rounded
                : Icons.bluetooth_disabled_rounded,
            color: Colors.white,
            size: 24.0,
          ),
          const SizedBox(width: 4.0),
          Text(
            connected ? connectedLabel : unconnectedLabel,
            textAlign: TextAlign.start,
            style: FlutterFlowTheme.of(context).bodySmall.override(
                  fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                  color: Colors.white,
                  fontSize: 12.0,
                  letterSpacing: 0.0,
                  lineHeight: 1.1,
                  useGoogleFonts:
                      !FlutterFlowTheme.of(context).bodySmallIsCustom,
                ),
          ),
        ],
      ),
    );
  }
}
