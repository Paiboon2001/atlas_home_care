import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'number_calendar_model.dart';
export 'number_calendar_model.dart';

class NumberCalendarWidget extends StatefulWidget {
  const NumberCalendarWidget({
    super.key,
    required this.numcalen,
    required this.piccorlor,
    required this.textcorlor,
  });

  final String? numcalen;
  final Color? piccorlor;
  final Color? textcorlor;

  @override
  State<NumberCalendarWidget> createState() => _NumberCalendarWidgetState();
}

class _NumberCalendarWidgetState extends State<NumberCalendarWidget> {
  late NumberCalendarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NumberCalendarModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: Container(
            width: 56.0,
            height: 56.0,
            decoration: BoxDecoration(
              color: valueOrDefault<Color>(
                widget.piccorlor,
                FlutterFlowTheme.of(context).tertiary,
              ),
              shape: BoxShape.circle,
            ),
            child: Align(
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: Text(
                valueOrDefault<String>(
                  widget.numcalen,
                  '0',
                ),
                style: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                      color: valueOrDefault<Color>(
                        widget.textcorlor,
                        FlutterFlowTheme.of(context).primaryText,
                      ),
                      letterSpacing: 0.0,
                      useGoogleFonts:
                          !FlutterFlowTheme.of(context).titleSmallIsCustom,
                    ),
              ),
            ),
          ),
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 6.0,
              height: 6.0,
              decoration: const BoxDecoration(
                color: Color(0xFFFFC83B),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24.0),
                  bottomLeft: Radius.circular(24.0),
                ),
              ),
            ),
            Container(
              width: 6.0,
              height: 6.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).error,
                borderRadius: const BorderRadius.only(),
              ),
            ),
            Container(
              width: 6.0,
              height: 6.0,
              decoration: const BoxDecoration(
                color: Color(0xFF2ED235),
                borderRadius: BorderRadius.only(),
              ),
            ),
            Container(
              width: 6.0,
              height: 6.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).accent1,
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(24.0),
                  bottomRight: Radius.circular(24.0),
                ),
              ),
            ),
          ],
        ),
      ].divide(SizedBox(height: () {
        if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
          return 4.0;
        } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
          return 4.0;
        } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
          return 12.0;
        } else {
          return 12.0;
        }
      }())),
    );
  }
}
