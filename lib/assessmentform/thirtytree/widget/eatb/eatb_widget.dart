import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'eatb_model.dart';
export 'eatb_model.dart';

class EatbWidget extends StatefulWidget {
  const EatbWidget({
    super.key,
    required this.texts,
    this.persona,
  });

  final String? texts;
  final String? persona;

  @override
  State<EatbWidget> createState() => _EatbWidgetState();
}

class _EatbWidgetState extends State<EatbWidget> {
  late EatbModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EatbModel());

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
            FFAppState().eatb == widget.persona
                ? FlutterFlowTheme.of(context).secondary
                : FlutterFlowTheme.of(context).secondaryBackground,
            FFAppState().eatb == widget.persona
                ? FlutterFlowTheme.of(context).primary
                : FlutterFlowTheme.of(context).secondaryBackground
          ],
          stops: const [0.0, 1.0],
          begin: const AlignmentDirectional(1.0, 0.34),
          end: const AlignmentDirectional(-1.0, -0.34),
        ),
        borderRadius: BorderRadius.circular(24.0),
        border: Border.all(
          color: FFAppState().eatb == widget.persona
              ? const Color(0x00FFFFFF)
              : const Color(0xFFCED4E6),
          width: 1.0,
        ),
      ),
      child: Align(
        alignment: const AlignmentDirectional(0.0, 0.0),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(12.0, 20.0, 12.0, 20.0),
          child: Text(
            valueOrDefault<String>(
              widget.texts,
              'na',
            ),
            style: FlutterFlowTheme.of(context).labelLarge.override(
                  fontFamily: FlutterFlowTheme.of(context).labelLargeFamily,
                  color: FFAppState().eatb == widget.persona
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
