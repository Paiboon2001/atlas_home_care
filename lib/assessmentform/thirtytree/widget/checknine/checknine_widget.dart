import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'checknine_model.dart';
export 'checknine_model.dart';

class ChecknineWidget extends StatefulWidget {
  const ChecknineWidget({
    super.key,
    required this.names,
    required this.checknine,
  });

  final String? names;
  final String? checknine;

  @override
  State<ChecknineWidget> createState() => _ChecknineWidgetState();
}

class _ChecknineWidgetState extends State<ChecknineWidget> {
  late ChecknineModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChecknineModel());

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
            FFAppState().checknine == widget.checknine
                ? FlutterFlowTheme.of(context).secondary
                : FlutterFlowTheme.of(context).secondaryBackground,
            FFAppState().checknine == widget.checknine
                ? FlutterFlowTheme.of(context).primary
                : FlutterFlowTheme.of(context).secondaryBackground
          ],
          stops: const [0.0, 1.0],
          begin: const AlignmentDirectional(1.0, 0.34),
          end: const AlignmentDirectional(-1.0, -0.34),
        ),
        borderRadius: BorderRadius.circular(16.0),
        border: Border.all(
          color: FFAppState().checknine == widget.checknine
              ? const Color(0x00FFFFFF)
              : const Color(0xFFCED4E6),
          width: 1.0,
        ),
      ),
      child: Align(
        alignment: const AlignmentDirectional(0.0, 0.0),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(12.0, 16.0, 12.0, 16.0),
          child: Text(
            valueOrDefault<String>(
              widget.names,
              'na',
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                  color: FFAppState().checknine == widget.checknine
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
