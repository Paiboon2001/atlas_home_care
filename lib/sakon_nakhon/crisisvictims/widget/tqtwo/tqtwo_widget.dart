import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'tqtwo_model.dart';
export 'tqtwo_model.dart';

class TqtwoWidget extends StatefulWidget {
  const TqtwoWidget({
    super.key,
    required this.texts,
    this.tqone,
  });

  final String? texts;
  final String? tqone;

  @override
  State<TqtwoWidget> createState() => _TqtwoWidgetState();
}

class _TqtwoWidgetState extends State<TqtwoWidget> {
  late TqtwoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TqtwoModel());

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
            FFAppState().twoq2 == widget!.tqone
                ? FlutterFlowTheme.of(context).secondary
                : FlutterFlowTheme.of(context).secondaryBackground,
            FFAppState().twoq2 == widget!.tqone
                ? FlutterFlowTheme.of(context).primary
                : FlutterFlowTheme.of(context).secondaryBackground
          ],
          stops: [0.0, 1.0],
          begin: AlignmentDirectional(1.0, 0.34),
          end: AlignmentDirectional(-1.0, -0.34),
        ),
        borderRadius: BorderRadius.circular(24.0),
        border: Border.all(
          color: FFAppState().twoq2 == widget!.tqone
              ? Color(0x00FFFFFF)
              : Color(0xFFCED4E6),
          width: 1.0,
        ),
      ),
      child: Align(
        alignment: AlignmentDirectional(0.0, 0.0),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(12.0, 20.0, 12.0, 20.0),
          child: Text(
            valueOrDefault<String>(
              widget!.texts,
              'na',
            ),
            style: FlutterFlowTheme.of(context).labelLarge.override(
                  fontFamily: FlutterFlowTheme.of(context).labelLargeFamily,
                  color: FFAppState().twoq2 == widget!.tqone
                      ? FlutterFlowTheme.of(context).secondaryBackground
                      : FlutterFlowTheme.of(context).secondaryText,
                  fontSize: 18.0,
                  letterSpacing: 0.0,
                  useGoogleFonts:
                      !FlutterFlowTheme.of(context).labelLargeIsCustom,
                ),
          ),
        ),
      ),
    );
  }
}
