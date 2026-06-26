import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'checkfive_model.dart';
export 'checkfive_model.dart';

class CheckfiveWidget extends StatefulWidget {
  const CheckfiveWidget({
    super.key,
    required this.names,
    required this.checkfive,
  });

  final String? names;
  final String? checkfive;

  @override
  State<CheckfiveWidget> createState() => _CheckfiveWidgetState();
}

class _CheckfiveWidgetState extends State<CheckfiveWidget> {
  late CheckfiveModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CheckfiveModel());

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
            FFAppState().checkfive == widget!.checkfive
                ? FlutterFlowTheme.of(context).secondary
                : FlutterFlowTheme.of(context).secondaryBackground,
            FFAppState().checkfive == widget!.checkfive
                ? FlutterFlowTheme.of(context).primary
                : FlutterFlowTheme.of(context).secondaryBackground
          ],
          stops: [0.0, 1.0],
          begin: AlignmentDirectional(1.0, 0.34),
          end: AlignmentDirectional(-1.0, -0.34),
        ),
        borderRadius: BorderRadius.circular(16.0),
        border: Border.all(
          color: FFAppState().checkfive == widget!.checkfive
              ? Color(0x00FFFFFF)
              : Color(0xFFCED4E6),
          width: 1.0,
        ),
      ),
      child: Align(
        alignment: AlignmentDirectional(0.0, 0.0),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(12.0, 16.0, 12.0, 16.0),
          child: Text(
            valueOrDefault<String>(
              widget!.names,
              'na',
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                  color: FFAppState().checkfive == widget!.checkfive
                      ? FlutterFlowTheme.of(context).secondaryBackground
                      : FlutterFlowTheme.of(context).secondaryText,
                  letterSpacing: 0.0,
                  useGoogleFonts:
                      !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                ),
          ),
        ),
      ),
    );
  }
}
