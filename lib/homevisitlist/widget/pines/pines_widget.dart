import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'pines_model.dart';
export 'pines_model.dart';

class PinesWidget extends StatefulWidget {
  const PinesWidget({super.key});

  @override
  State<PinesWidget> createState() => _PinesWidgetState();
}

class _PinesWidgetState extends State<PinesWidget> {
  late PinesModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PinesModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      elevation: 3.0,
      shape: const CircleBorder(),
      child: Container(
        width: () {
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
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          shape: BoxShape.circle,
        ),
        child: Align(
          alignment: AlignmentDirectional(0.0, 0.0),
          child: Icon(
            Icons.my_location_rounded,
            color: FlutterFlowTheme.of(context).primary,
            size: 24.0,
          ),
        ),
      ),
    );
  }
}
