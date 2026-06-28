import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'item_p_p_specialcodes_model.dart';
export 'item_p_p_specialcodes_model.dart';

class ItemPPSpecialcodesWidget extends StatefulWidget {
  const ItemPPSpecialcodesWidget({
    super.key,
    this.ppcode,
    this.ppcodesdecription,
  });

  /// ppcode
  final String? ppcode;

  /// ppcodesdecription
  final String? ppcodesdecription;

  @override
  State<ItemPPSpecialcodesWidget> createState() =>
      _ItemPPSpecialcodesWidgetState();
}

class _ItemPPSpecialcodesWidgetState extends State<ItemPPSpecialcodesWidget> {
  late ItemPPSpecialcodesModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ItemPPSpecialcodesModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0x0E4CAF50),
        borderRadius: BorderRadius.circular(24.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  valueOrDefault<String>(
                    widget.ppcode,
                    'ppcode',
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodyMediumFamily,
                        color: FlutterFlowTheme.of(context).customColor1,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w500,
                        useGoogleFonts:
                            !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                      ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Icon(
                    Icons.delete_forever,
                    color: FlutterFlowTheme.of(context).error,
                    size: 16.0,
                  ),
                ),
              ],
            ),
            Text(
              valueOrDefault<String>(
                widget.ppcodesdecription,
                'decription',
              ),
              style: FlutterFlowTheme.of(context).bodySmall.override(
                    fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                    letterSpacing: 0.0,
                    lineHeight: 1.7,
                    useGoogleFonts:
                        !FlutterFlowTheme.of(context).bodySmallIsCustom,
                  ),
            ),
          ].divide(const SizedBox(height: 12.0)),
        ),
      ),
    );
  }
}
