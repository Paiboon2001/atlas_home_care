import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'hospital_cs_model.dart';
export 'hospital_cs_model.dart';

class HospitalCsWidget extends StatefulWidget {
  const HospitalCsWidget({
    super.key,
    required this.photo,
    required this.text,
    required this.chand,
  });

  final String? photo;
  final String? text;
  final String? chand;

  @override
  State<HospitalCsWidget> createState() => _HospitalCsWidgetState();
}

class _HospitalCsWidgetState extends State<HospitalCsWidget> {
  late HospitalCsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HospitalCsModel());

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

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              FFAppState().cshospi == widget!.chand
                  ? FlutterFlowTheme.of(context).secondary
                  : FlutterFlowTheme.of(context).secondaryBackground,
              FFAppState().cshospi == widget!.chand
                  ? FlutterFlowTheme.of(context).primary
                  : FlutterFlowTheme.of(context).secondaryBackground
            ],
            stops: [0.0, 1.0],
            begin: AlignmentDirectional(1.0, 0.34),
            end: AlignmentDirectional(-1.0, -0.34),
          ),
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Padding(
          padding: EdgeInsets.all(valueOrDefault<double>(
            () {
              if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                return 12.0;
              } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
                return 12.0;
              } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
                return 16.0;
              } else {
                return 16.0;
              }
            }(),
            0.0,
          )),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              ClipOval(
                child: Container(
                  width: () {
                    if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                      return 32.0;
                    } else if (MediaQuery.sizeOf(context).width <
                        kBreakpointMedium) {
                      return 32.0;
                    } else if (MediaQuery.sizeOf(context).width <
                        kBreakpointLarge) {
                      return 40.0;
                    } else {
                      return 40.0;
                    }
                  }(),
                  height: () {
                    if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                      return 32.0;
                    } else if (MediaQuery.sizeOf(context).width <
                        kBreakpointMedium) {
                      return 32.0;
                    } else if (MediaQuery.sizeOf(context).width <
                        kBreakpointLarge) {
                      return 40.0;
                    } else {
                      return 40.0;
                    }
                  }(),
                  decoration: BoxDecoration(
                    color: FFAppState().cshospi == widget!.chand
                        ? FlutterFlowTheme.of(context).secondaryBackground
                        : Color(0xFFE0F9FF),
                    shape: BoxShape.circle,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Container(
                      width: 200.0,
                      height: 200.0,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.network(
                        widget!.photo!,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Text(
                  valueOrDefault<String>(
                    widget!.text,
                    'na',
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodyMediumFamily,
                        color: FFAppState().cshospi == widget!.chand
                            ? FlutterFlowTheme.of(context).secondaryBackground
                            : FlutterFlowTheme.of(context).primaryText,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w500,
                        useGoogleFonts:
                            !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                      ),
                ),
              ),
            ].divide(SizedBox(width: 12.0)),
          ),
        ),
      ),
    );
  }
}
