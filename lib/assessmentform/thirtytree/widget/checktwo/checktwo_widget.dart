import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'checktwo_model.dart';
export 'checktwo_model.dart';

class ChecktwoWidget extends StatefulWidget {
  const ChecktwoWidget({
    super.key,
    required this.names,
    required this.checktwo,
  });

  final String? names;
  final String? checktwo;

  @override
  State<ChecktwoWidget> createState() => _ChecktwoWidgetState();
}

class _ChecktwoWidgetState extends State<ChecktwoWidget> {
  late ChecktwoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChecktwoModel());

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
            FFAppState().checktwo == widget.checktwo
                ? FlutterFlowTheme.of(context).secondary
                : FlutterFlowTheme.of(context).secondaryBackground,
            FFAppState().checktwo == widget.checktwo
                ? FlutterFlowTheme.of(context).primary
                : FlutterFlowTheme.of(context).secondaryBackground
          ],
          stops: const [0.0, 1.0],
          begin: const AlignmentDirectional(1.0, 0.34),
          end: const AlignmentDirectional(-1.0, -0.34),
        ),
        borderRadius: BorderRadius.circular(16.0),
        border: Border.all(
          color: FFAppState().checktwo == widget.checktwo
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
                  color: FFAppState().checktwo == widget.checktwo
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
