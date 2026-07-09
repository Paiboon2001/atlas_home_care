import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'assignments_model.dart';
export 'assignments_model.dart';

class AssignmentsWidget extends StatefulWidget {
  const AssignmentsWidget({
    super.key,
    this.picture,
    required this.text,
  });

  final String? picture;
  final String? text;

  @override
  State<AssignmentsWidget> createState() => _AssignmentsWidgetState();
}

class _AssignmentsWidgetState extends State<AssignmentsWidget> {
  late AssignmentsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AssignmentsModel());

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
      height: () {
        if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
          return 108.0;
        } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
          return 108.0;
        } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
          return 116.0;
        } else {
          return 116.0;
        }
      }(),
      decoration: const BoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          ClipRRect(
            child: Container(
              width: () {
                if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                  return 56.0;
                } else if (MediaQuery.sizeOf(context).width <
                    kBreakpointMedium) {
                  return 56.0;
                } else if (MediaQuery.sizeOf(context).width <
                    kBreakpointLarge) {
                  return 64.0;
                } else {
                  return 64.0;
                }
              }(),
              height: () {
                if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                  return 56.0;
                } else if (MediaQuery.sizeOf(context).width <
                    kBreakpointMedium) {
                  return 56.0;
                } else if (MediaQuery.sizeOf(context).width <
                    kBreakpointLarge) {
                  return 64.0;
                } else {
                  return 64.0;
                }
              }(),
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: Image.network(
                    widget.picture!,
                  ).image,
                ),
                shape: BoxShape.rectangle,
              ),
            ),
          ),
          Text(
            valueOrDefault<String>(
              widget.text,
              'na',
            ),
            textAlign: TextAlign.center,
            maxLines: 2,
            style: FlutterFlowTheme.of(context).labelSmall.override(
                  fontFamily: FlutterFlowTheme.of(context).labelSmallFamily,
                  color: FlutterFlowTheme.of(context).primary,
                  letterSpacing: 0.0,
                  lineHeight: 1.5,
                  useGoogleFonts:
                      !FlutterFlowTheme.of(context).labelSmallIsCustom,
                ),
            overflow: TextOverflow.ellipsis,
          ),
        ].divide(const SizedBox(height: 4.0)),
      ),
    );
  }
}
