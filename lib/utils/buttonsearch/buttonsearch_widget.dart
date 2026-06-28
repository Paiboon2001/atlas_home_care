import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'buttonsearch_model.dart';
export 'buttonsearch_model.dart';

class ButtonsearchWidget extends StatefulWidget {
  const ButtonsearchWidget({
    super.key,
    this.icon,
  });

  /// icon
  final Widget? icon;

  @override
  State<ButtonsearchWidget> createState() => _ButtonsearchWidgetState();
}

class _ButtonsearchWidgetState extends State<ButtonsearchWidget> {
  late ButtonsearchModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ButtonsearchModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
      child: Container(
        width: 40.0,
        height: 40.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          shape: BoxShape.circle,
        ),
        child: Align(
          alignment: const AlignmentDirectional(0.0, 0.0),
          child: widget.icon!,
        ),
      ),
    );
  }
}
