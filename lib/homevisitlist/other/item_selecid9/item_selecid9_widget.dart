import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'item_selecid9_model.dart';
export 'item_selecid9_model.dart';

class ItemSelecid9Widget extends StatefulWidget {
  const ItemSelecid9Widget({
    super.key,
    this.cid9code,
    this.decription,
  });

  /// cid9code
  final String? cid9code;

  /// decription
  final String? decription;

  @override
  State<ItemSelecid9Widget> createState() => _ItemSelecid9WidgetState();
}

class _ItemSelecid9WidgetState extends State<ItemSelecid9Widget> {
  late ItemSelecid9Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ItemSelecid9Model());

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
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  valueOrDefault<String>(
                    widget!.cid9code,
                    'cid9code',
                  ),
                  textAlign: TextAlign.start,
                  style: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).labelMediumFamily,
                        color: FlutterFlowTheme.of(context).accent2,
                        letterSpacing: 0.0,
                        useGoogleFonts:
                            !FlutterFlowTheme.of(context).labelMediumIsCustom,
                      ),
                ),
                Text(
                  valueOrDefault<String>(
                    widget!.decription,
                    'decription',
                  ),
                  textAlign: TextAlign.start,
                  maxLines: 1,
                  style: FlutterFlowTheme.of(context).bodySmall.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodySmallFamily,
                        letterSpacing: 0.0,
                        lineHeight: 1.7,
                        useGoogleFonts:
                            !FlutterFlowTheme.of(context).bodySmallIsCustom,
                      ),
                  overflow: TextOverflow.ellipsis,
                ),
              ].divide(SizedBox(height: 4.0)),
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
