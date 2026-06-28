import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'buttonnolmal_model.dart';
export 'buttonnolmal_model.dart';

class ButtonnolmalWidget extends StatefulWidget {
  const ButtonnolmalWidget({
    super.key,
    this.text,
  });

  /// text
  final String? text;

  @override
  State<ButtonnolmalWidget> createState() => _ButtonnolmalWidgetState();
}

class _ButtonnolmalWidgetState extends State<ButtonnolmalWidget> {
  late ButtonnolmalModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ButtonnolmalModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500.0,
      height: 56.0,
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            blurRadius: 4.0,
            color: Color(0x1A000000),
            offset: Offset(
              0.0,
              0.0,
            ),
          )
        ],
        gradient: LinearGradient(
          colors: [const Color(0xFF71BFFF), FlutterFlowTheme.of(context).primary],
          stops: const [0.0, 1.0],
          begin: const AlignmentDirectional(1.0, -1.0),
          end: const AlignmentDirectional(-1.0, 1.0),
        ),
        borderRadius: BorderRadius.circular(100.0),
        border: Border.all(
          color: FlutterFlowTheme.of(context).secondaryBackground,
        ),
      ),
      child: FFButtonWidget(
        onPressed: () {
          print('Button pressed ...');
        },
        text: widget.text!,
        options: FFButtonOptions(
          height: 40.0,
          padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
          iconAlignment: IconAlignment.start,
          iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
          color: const Color(0x00339FF3),
          textStyle: FlutterFlowTheme.of(context).labelMedium.override(
                fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                color: FlutterFlowTheme.of(context).secondaryBackground,
                letterSpacing: 0.0,
                useGoogleFonts:
                    !FlutterFlowTheme.of(context).labelMediumIsCustom,
              ),
          elevation: 0.0,
          borderSide: const BorderSide(
            width: 0.0,
          ),
          borderRadius: BorderRadius.circular(100.0),
        ),
      ),
    );
  }
}
