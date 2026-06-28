import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'item_i_c_d9_codes_model.dart';
export 'item_i_c_d9_codes_model.dart';

class ItemICD9CodesWidget extends StatefulWidget {
  const ItemICD9CodesWidget({
    super.key,
    this.icd9codes,
    this.icd9Codesdecription,
  });

  /// ICD 9 Codes
  final String? icd9codes;

  /// icd9Codesdecription
  final String? icd9Codesdecription;

  @override
  State<ItemICD9CodesWidget> createState() => _ItemICD9CodesWidgetState();
}

class _ItemICD9CodesWidgetState extends State<ItemICD9CodesWidget> {
  late ItemICD9CodesModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ItemICD9CodesModel());

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
        color: const Color(0x25B9C0FF),
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
                    widget.icd9codes,
                    'ICD 9 Codes',
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodyMediumFamily,
                        color: FlutterFlowTheme.of(context).accent2,
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
                widget.icd9Codesdecription,
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
