import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'close_model.dart';
export 'close_model.dart';

class CloseWidget extends StatefulWidget {
  const CloseWidget({super.key});

  @override
  State<CloseWidget> createState() => _CloseWidgetState();
}

class _CloseWidgetState extends State<CloseWidget> {
  late CloseModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CloseModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () async {
        Navigator.pop(context);
      },
      child: Container(
        width: () {
          if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
            return 32.0;
          } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
            return 32.0;
          } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
            return 40.0;
          } else {
            return 40.0;
          }
        }(),
        height: () {
          if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
            return 32.0;
          } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
            return 32.0;
          } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
            return 40.0;
          } else {
            return 40.0;
          }
        }(),
        decoration: BoxDecoration(
          color: Color(0x266C6C6C),
          shape: BoxShape.circle,
        ),
        child: Align(
          alignment: AlignmentDirectional(0.0, 0.0),
          child: Icon(
            Icons.close_rounded,
            color: FlutterFlowTheme.of(context).secondaryText,
            size: () {
              if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                return 16.0;
              } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
                return 16.0;
              } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
                return 20.0;
              } else {
                return 20.0;
              }
            }(),
          ),
        ),
      ),
    );
  }
}
