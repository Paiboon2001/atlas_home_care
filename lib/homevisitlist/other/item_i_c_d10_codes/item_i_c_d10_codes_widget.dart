import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'item_i_c_d10_codes_model.dart';
export 'item_i_c_d10_codes_model.dart';

class ItemICD10CodesWidget extends StatefulWidget {
  const ItemICD10CodesWidget({
    super.key,
    this.icd10Codes,
    this.icd10Codesdecription,
  });

  /// icd10Codes
  final String? icd10Codes;

  /// icd10Codesdesdecription
  final String? icd10Codesdecription;

  @override
  State<ItemICD10CodesWidget> createState() => _ItemICD10CodesWidgetState();
}

class _ItemICD10CodesWidgetState extends State<ItemICD10CodesWidget> {
  late ItemICD10CodesModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ItemICD10CodesModel());

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
        color: const Color(0x19339FF3),
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
                    widget.icd10Codes,
                    'icd10Codes',
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodyMediumFamily,
                        color: FlutterFlowTheme.of(context).primary,
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
                widget.icd10Codesdecription,
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
