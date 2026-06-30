import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'eleven_model.dart';
export 'eleven_model.dart';

class ElevenWidget extends StatefulWidget {
  const ElevenWidget({
    super.key,
    this.num,
    this.text,
    this.nineq,
  });

  final String? num;
  final String? text;
  final String? nineq;

  @override
  State<ElevenWidget> createState() => _ElevenWidgetState();
}

class _ElevenWidgetState extends State<ElevenWidget> {
  late ElevenModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ElevenModel());

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
            FFAppState().eleven == widget.nineq
                ? FlutterFlowTheme.of(context).secondary
                : FlutterFlowTheme.of(context).secondaryBackground,
            FFAppState().eleven == widget.nineq
                ? FlutterFlowTheme.of(context).primary
                : FlutterFlowTheme.of(context).secondaryBackground
          ],
          stops: const [0.0, 1.0],
          begin: const AlignmentDirectional(1.0, 0.34),
          end: const AlignmentDirectional(-1.0, -0.34),
        ),
        borderRadius: BorderRadius.circular(24.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: 40.0,
              height: 40.0,
              decoration: BoxDecoration(
                color: FFAppState().eleven == widget.nineq
                    ? FlutterFlowTheme.of(context).secondaryBackground
                    : const Color(0xFFDBF0FF),
                shape: BoxShape.circle,
              ),
              child: Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Text(
                  valueOrDefault<String>(
                    widget.num,
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
                  widget.text,
                  'na',
                ),
                style: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                      color: FFAppState().eleven == widget.nineq
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
          ].divide(const SizedBox(width: 8.0)),
        ),
      ),
    );
  }
}
