import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'healthone_model.dart';
export 'healthone_model.dart';

class HealthoneWidget extends StatefulWidget {
  const HealthoneWidget({
    super.key,
    required this.texts,
    this.healthone,
  });

  final String? texts;
  final String? healthone;

  @override
  State<HealthoneWidget> createState() => _HealthoneWidgetState();
}

class _HealthoneWidgetState extends State<HealthoneWidget> {
  late HealthoneModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HealthoneModel());

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
            FFAppState().healthone == widget!.healthone
                ? FlutterFlowTheme.of(context).secondary
                : FlutterFlowTheme.of(context).secondaryBackground,
            FFAppState().healthone == widget!.healthone
                ? FlutterFlowTheme.of(context).primary
                : FlutterFlowTheme.of(context).secondaryBackground
          ],
          stops: [0.0, 1.0],
          begin: AlignmentDirectional(1.0, 0.34),
          end: AlignmentDirectional(-1.0, -0.34),
        ),
        borderRadius: BorderRadius.circular(24.0),
        border: Border.all(
          color: FFAppState().healthone == widget!.healthone
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
                  color: FFAppState().healthone == widget!.healthone
                      ? FlutterFlowTheme.of(context).secondaryBackground
                      : FlutterFlowTheme.of(context).secondaryText,
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
