import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'nineseven_model.dart';
export 'nineseven_model.dart';

class NinesevenWidget extends StatefulWidget {
  const NinesevenWidget({
    super.key,
    this.num,
    this.text,
    this.nineq,
  });

  final String? num;
  final String? text;
  final String? nineq;

  @override
  State<NinesevenWidget> createState() => _NinesevenWidgetState();
}

class _NinesevenWidgetState extends State<NinesevenWidget> {
  late NinesevenModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NinesevenModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            FFAppState().nineseven == widget!.nineq
                ? FlutterFlowTheme.of(context).secondary
                : FlutterFlowTheme.of(context).secondaryBackground,
            FFAppState().nineseven == widget!.nineq
                ? FlutterFlowTheme.of(context).primary
                : FlutterFlowTheme.of(context).secondaryBackground
          ],
          stops: [0.0, 1.0],
          begin: AlignmentDirectional(1.0, 0.34),
          end: AlignmentDirectional(-1.0, -0.34),
        ),
        borderRadius: BorderRadius.circular(24.0),
      ),
      child: Padding(
        padding: EdgeInsets.all(12.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: 40.0,
              height: 40.0,
              decoration: BoxDecoration(
                color: FFAppState().nineseven == widget!.nineq
                    ? FlutterFlowTheme.of(context).secondaryBackground
                    : Color(0xFFDBF0FF),
                shape: BoxShape.circle,
              ),
              child: Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Text(
                  valueOrDefault<String>(
                    widget!.num,
                    '0',
                  ),
                  style: FlutterFlowTheme.of(context).titleLarge.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).titleLargeFamily,
                        color: FlutterFlowTheme.of(context).primary,
                        fontSize: 22.0,
                        letterSpacing: 0.0,
                        useGoogleFonts:
                            !FlutterFlowTheme.of(context).titleLargeIsCustom,
                      ),
                ),
              ),
            ),
            Expanded(
              child: Text(
                valueOrDefault<String>(
                  widget!.text,
                  'na',
                ),
                style: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                      color: FFAppState().nineseven == widget!.nineq
                          ? FlutterFlowTheme.of(context).secondaryBackground
                          : FlutterFlowTheme.of(context).primaryText,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.normal,
                      lineHeight: 1.5,
                      useGoogleFonts:
                          !FlutterFlowTheme.of(context).titleSmallIsCustom,
                    ),
              ),
            ),
          ].divide(SizedBox(width: 8.0)),
        ),
      ),
    );
  }
}
