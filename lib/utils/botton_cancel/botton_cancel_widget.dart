import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'botton_cancel_model.dart';
export 'botton_cancel_model.dart';

class BottonCancelWidget extends StatefulWidget {
  const BottonCancelWidget({super.key});

  @override
  State<BottonCancelWidget> createState() => _BottonCancelWidgetState();
}

class _BottonCancelWidgetState extends State<BottonCancelWidget> {
  late BottonCancelModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BottonCancelModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FFButtonWidget(
      onPressed: () async {
        Navigator.pop(context);
      },
      text: 'ยกเลิก',
      options: FFButtonOptions(
        width: double.infinity,
        height: () {
          if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
            return 48.0;
          } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
            return 48.0;
          } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
            return 56.0;
          } else {
            return 56.0;
          }
        }(),
        padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
        iconAlignment: IconAlignment.start,
        iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
        color: FlutterFlowTheme.of(context).secondaryBackground,
        textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
              color: FlutterFlowTheme.of(context).primaryText,
              letterSpacing: 0.0,
              fontWeight: FontWeight.w600,
              useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
            ),
        elevation: 0.0,
        borderSide: BorderSide(
          color: FlutterFlowTheme.of(context).secondaryText,
          width: 0.0,
        ),
        borderRadius: BorderRadius.circular(100.0),
      ),
    );
  }
}
