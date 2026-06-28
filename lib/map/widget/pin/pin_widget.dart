import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'pin_model.dart';
export 'pin_model.dart';

class PinWidget extends StatefulWidget {
  const PinWidget({
    super.key,
    String? num,
    Color? color2,
    Color? color1,
  })  : num = num ?? '0',
        color2 = color2 ?? const Color(0xFF5B5B5B),
        color1 = color1 ?? const Color(0xFFACACAC);

  /// People in the house
  final String num;

  /// color2
  final Color color2;

  /// color1
  final Color color1;

  @override
  State<PinWidget> createState() => _PinWidgetState();
}

class _PinWidgetState extends State<PinWidget> with TickerProviderStateMixin {
  late PinModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PinModel());

    animationsMap.addAll({
      'stackOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(1.0, 1.0),
            end: const Offset(1.2, 1.2),
          ),
        ],
      ),
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.0, 0.0),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: () {
        if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
          return 40.0;
        } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
          return 40.0;
        } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
          return 48.0;
        } else {
          return 48.0;
        }
      }(),
      height: () {
        if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
          return 64.0;
        } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
          return 64.0;
        } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
          return 67.0;
        } else {
          return 67.0;
        }
      }(),
      child: Stack(
        children: [
          SizedBox(
            width: 48.0,
            height: 54.0,
            child: Stack(
              children: [
                Container(
                  width: 48.0,
                  height: 48.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 8.0,
                        color: Color(0x33000000),
                        offset: Offset(
                          0.0,
                          0.0,
                        ),
                      )
                    ],
                    shape: BoxShape.circle,
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(
                      0.0,
                      valueOrDefault<double>(
                        () {
                          if (MediaQuery.sizeOf(context).width <
                              kBreakpointSmall) {
                            return 0.4;
                          } else if (MediaQuery.sizeOf(context).width <
                              kBreakpointMedium) {
                            return 0.4;
                          } else if (MediaQuery.sizeOf(context).width <
                              kBreakpointLarge) {
                            return 0.7;
                          } else {
                            return 0.7;
                          }
                        }(),
                        0.0,
                      )),
                  child: Transform.rotate(
                    angle: 45.0 * (math.pi / 180),
                    child: Container(
                      width: 24.0,
                      height: 24.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(100.0),
                          bottomLeft: Radius.circular(100.0),
                          bottomRight: Radius.circular(8.0),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 48.0,
                  height: 48.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    shape: BoxShape.circle,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      width: 100.0,
                      height: 100.0,
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
                          colors: [widget.color1, widget.color2],
                          stops: const [0.0, 1.0],
                          begin: const AlignmentDirectional(0.0, -1.0),
                          end: const AlignmentDirectional(0, 1.0),
                        ),
                        shape: BoxShape.circle,
                      ),
                      child: Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Text(
                          valueOrDefault<String>(
                            widget.num,
                            '0',
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodyLarge
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyLargeFamily,
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w500,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .bodyLargeIsCustom,
                              ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ).animateOnPageLoad(animationsMap['stackOnPageLoadAnimation']!),
          Align(
            alignment: const AlignmentDirectional(0.0, 1.0),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 1.0, 0.0, 0.0),
              child: Container(
                width: 10.0,
                height: 10.0,
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 4.0,
                      color: Color(0x17000000),
                      offset: Offset(
                        0.0,
                        0.0,
                      ),
                    )
                  ],
                  gradient: LinearGradient(
                    colors: [widget.color1, widget.color2],
                    stops: const [0.0, 1.0],
                    begin: const AlignmentDirectional(0.0, -1.0),
                    end: const AlignmentDirectional(0, 1.0),
                  ),
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    width: 1.5,
                  ),
                ),
              ).animateOnPageLoad(
                  animationsMap['containerOnPageLoadAnimation']!),
            ),
          ),
        ],
      ),
    );
  }
}
