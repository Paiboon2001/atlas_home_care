import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'pic_model.dart';
export 'pic_model.dart';

class PicWidget extends StatefulWidget {
  const PicWidget({super.key});

  @override
  State<PicWidget> createState() => _PicWidgetState();
}

class _PicWidgetState extends State<PicWidget> {
  late PicModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PicModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.network(
            'https://images.unsplash.com/photo-1472552944129-b035e9ea3744?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHw0fHxuaWdodCUyMHNreXxlbnwwfHx8fDE3NTMyODc0NDV8MA&ixlib=rb-4.1.0&q=80&w=1080',
            width: 200.0,
            height: 120.0,
            fit: BoxFit.cover,
          ),
        ),
        Align(
          alignment: const AlignmentDirectional(1.0, -1.0),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 8.0, 0.0),
            child: Container(
              width: () {
                if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                  return 24.0;
                } else if (MediaQuery.sizeOf(context).width <
                    kBreakpointMedium) {
                  return 24.0;
                } else if (MediaQuery.sizeOf(context).width <
                    kBreakpointLarge) {
                  return 36.0;
                } else {
                  return 36.0;
                }
              }(),
              height: () {
                if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                  return 24.0;
                } else if (MediaQuery.sizeOf(context).width <
                    kBreakpointMedium) {
                  return 24.0;
                } else if (MediaQuery.sizeOf(context).width <
                    kBreakpointLarge) {
                  return 36.0;
                } else {
                  return 36.0;
                }
              }(),
              decoration: const BoxDecoration(
                color: Color(0xACF5F7FA),
                shape: BoxShape.circle,
              ),
              child: Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Icon(
                  Icons.close_rounded,
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  size: () {
                    if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                      return 16.0;
                    } else if (MediaQuery.sizeOf(context).width <
                        kBreakpointMedium) {
                      return 16.0;
                    } else if (MediaQuery.sizeOf(context).width <
                        kBreakpointLarge) {
                      return 20.0;
                    } else {
                      return 20.0;
                    }
                  }(),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
