import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'number_model.dart';
export 'number_model.dart';

class NumberWidget extends StatefulWidget {
  const NumberWidget({
    super.key,
    required this.ccorlor,
    required this.ctext,
    required this.pcorlor,
  });

  final Color? ccorlor;
  final String? ctext;
  final Color? pcorlor;

  @override
  State<NumberWidget> createState() => _NumberWidgetState();
}

class _NumberWidgetState extends State<NumberWidget> {
  late NumberModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NumberModel());

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
      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: 48.0,
            height: 48.0,
            decoration: BoxDecoration(
              color: valueOrDefault<Color>(
                widget.ccorlor,
                FlutterFlowTheme.of(context).secondaryBackground,
              ),
              shape: BoxShape.circle,
            ),
            child: Align(
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: Text(
                valueOrDefault<String>(
                  widget.ctext,
                  '0',
                ),
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).titleMedium.override(
                      fontFamily:
                          FlutterFlowTheme.of(context).titleMediumFamily,
                      color: widget.pcorlor,
                      letterSpacing: 0.0,
                      useGoogleFonts:
                          !FlutterFlowTheme.of(context).titleMediumIsCustom,
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
            return 8.0;
          } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
            return 8.0;
          } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
            return 12.0;
          } else {
            return 12.0;
          }
        }())),
      ),
    );
  }
}
