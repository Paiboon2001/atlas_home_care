import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'item_selec_p_p_specialcodes_model.dart';
export 'item_selec_p_p_specialcodes_model.dart';

class ItemSelecPPSpecialcodesWidget extends StatefulWidget {
  const ItemSelecPPSpecialcodesWidget({
    super.key,
    this.ppSpecialcodes,
    this.decription,
  });

  /// ppSpecialcodes
  final String? ppSpecialcodes;

  /// decription
  final String? decription;

  @override
  State<ItemSelecPPSpecialcodesWidget> createState() =>
      _ItemSelecPPSpecialcodesWidgetState();
}

class _ItemSelecPPSpecialcodesWidgetState
    extends State<ItemSelecPPSpecialcodesWidget> {
  late ItemSelecPPSpecialcodesModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ItemSelecPPSpecialcodesModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
          ),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  valueOrDefault<String>(
                    widget.ppSpecialcodes,
                    'ppSpecialcodes',
                  ),
                  textAlign: TextAlign.start,
                  style: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).labelMediumFamily,
                        color: FlutterFlowTheme.of(context).customColor1,
                        letterSpacing: 0.0,
                        useGoogleFonts:
                            !FlutterFlowTheme.of(context).labelMediumIsCustom,
                      ),
                ),
                Text(
                  valueOrDefault<String>(
                    widget.decription,
                    'decription',
                  ),
                  textAlign: TextAlign.start,
                  style: FlutterFlowTheme.of(context).bodySmall.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodySmallFamily,
                        letterSpacing: 0.0,
                        lineHeight: 1.7,
                        useGoogleFonts:
                            !FlutterFlowTheme.of(context).bodySmallIsCustom,
                      ),
                ),
              ].divide(const SizedBox(height: 4.0)),
            ),
          ),
        ),
        Divider(
          height: 1.0,
          thickness: 1.0,
          color: FlutterFlowTheme.of(context).alternate,
        ),
      ],
    );
  }
}
