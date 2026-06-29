import '/components/main_button_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/sakon_nakhon/crisisvictims/widget/ninefive/ninefive_widget.dart';
import '/sakon_nakhon/crisisvictims/widget/ninefore/ninefore_widget.dart';
import '/sakon_nakhon/crisisvictims/widget/nineone/nineone_widget.dart';
import '/sakon_nakhon/crisisvictims/widget/nineseven/nineseven_widget.dart';
import '/sakon_nakhon/crisisvictims/widget/ninesix/ninesix_widget.dart';
import '/sakon_nakhon/crisisvictims/widget/ninethree/ninethree_widget.dart';
import '/sakon_nakhon/crisisvictims/widget/ninetwo/ninetwo_widget.dart';
import 'dart:math';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'm_n_a_short_model.dart';
export 'm_n_a_short_model.dart';

class MNAShortWidget extends StatefulWidget {
  const MNAShortWidget({super.key});

  static String routeName = 'MNA_short';
  static String routePath = '/mNAShort';

  @override
  State<MNAShortWidget> createState() => _MNAShortWidgetState();
}

class _MNAShortWidgetState extends State<MNAShortWidget>
    with TickerProviderStateMixin {
  late MNAShortModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MNAShortModel());

    animationsMap.addAll({
      'textOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(24.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(24.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(24.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(24.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation5': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(24.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation6': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(24.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation7': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(24.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation8': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(24.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'nineoneOnActionTriggerAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.bounceOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(1.02, 1.02),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
      'nineoneOnActionTriggerAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.bounceOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(1.02, 1.02),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
      'nineoneOnActionTriggerAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.bounceOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(1.02, 1.02),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
      'ninetwoOnActionTriggerAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.bounceOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(1.02, 1.02),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
      'ninetwoOnActionTriggerAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.bounceOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(1.02, 1.02),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
      'ninetwoOnActionTriggerAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.bounceOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(1.02, 1.02),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
      'ninetwoOnActionTriggerAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.bounceOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(1.02, 1.02),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
      'ninethreeOnActionTriggerAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.bounceOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(1.02, 1.02),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
      'ninethreeOnActionTriggerAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.bounceOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(1.02, 1.02),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
      'ninethreeOnActionTriggerAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.bounceOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(1.02, 1.02),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
      'nineforeOnActionTriggerAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.bounceOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(1.02, 1.02),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
      'nineforeOnActionTriggerAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.bounceOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(1.02, 1.02),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
      'ninefiveOnActionTriggerAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.bounceOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(1.02, 1.02),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
      'ninefiveOnActionTriggerAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.bounceOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(1.02, 1.02),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
      'ninefiveOnActionTriggerAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.bounceOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(1.02, 1.02),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
      'ninesixOnActionTriggerAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.bounceOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(1.02, 1.02),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
      'ninesixOnActionTriggerAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.bounceOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(1.02, 1.02),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
      'ninesixOnActionTriggerAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.bounceOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(1.02, 1.02),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
      'ninesixOnActionTriggerAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.bounceOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(1.02, 1.02),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
      'ninesevenOnActionTriggerAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.bounceOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(1.02, 1.02),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
      'ninesevenOnActionTriggerAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.bounceOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(1.02, 1.02),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primary,
      appBar: AppBar(
        toolbarHeight: 48.0,
        backgroundColor: FlutterFlowTheme.of(context).primary,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Builder(
              builder: (context) {
                if (_model.nineq == 1) {
                  return InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context
                          .pushNamed(InformationCommunityOneWidget.routeName);

                      _model.nineq = 1;
                      safeSetState(() {});
                      FFAppState().nineone = '';
                      FFAppState().ninetwo = '';
                      FFAppState().ninethree = '';
                      FFAppState().ninefore = '';
                      FFAppState().ninefive = '';
                      FFAppState().ninesix = '';
                      FFAppState().nineseven = '';
                      safeSetState(() {});
                    },
                    child: Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      size: 20.0,
                    ),
                  );
                } else if (_model.nineq == 2) {
                  return InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      _model.nineq = 1;
                      safeSetState(() {});
                    },
                    child: Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      size: 20.0,
                    ),
                  );
                } else if (_model.nineq == 3) {
                  return InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      _model.nineq = 2;
                      safeSetState(() {});
                    },
                    child: Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      size: 20.0,
                    ),
                  );
                } else if (_model.nineq == 4) {
                  return InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      _model.nineq = 3;
                      safeSetState(() {});
                    },
                    child: Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      size: 20.0,
                    ),
                  );
                } else if (_model.nineq == 5) {
                  return InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      _model.nineq = 4;
                      safeSetState(() {});
                    },
                    child: Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      size: 20.0,
                    ),
                  );
                } else if (_model.nineq == 6) {
                  return InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      _model.nineq = 5;
                      safeSetState(() {});
                    },
                    child: Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      size: 20.0,
                    ),
                  );
                } else if (_model.nineq == 7) {
                  return InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      _model.nineq = 6;
                      safeSetState(() {});
                    },
                    child: Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      size: 20.0,
                    ),
                  );
                } else {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  );
                }
              },
            ),
            Expanded(
              child: Builder(
                builder: (context) {
                  if (_model.nineq == 1) {
                    return Text(
                      'คำถามที่ 1',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).titleLarge.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).titleLargeFamily,
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            letterSpacing: 0.0,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .titleLargeIsCustom,
                          ),
                    ).animateOnPageLoad(
                        animationsMap['textOnPageLoadAnimation1']!);
                  } else if (_model.nineq == 2) {
                    return Text(
                      'คำถามที่ 2',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).titleLarge.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).titleLargeFamily,
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            letterSpacing: 0.0,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .titleLargeIsCustom,
                          ),
                    ).animateOnPageLoad(
                        animationsMap['textOnPageLoadAnimation2']!);
                  } else if (_model.nineq == 3) {
                    return Text(
                      'คำถามที่ 3',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).titleLarge.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).titleLargeFamily,
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            letterSpacing: 0.0,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .titleLargeIsCustom,
                          ),
                    ).animateOnPageLoad(
                        animationsMap['textOnPageLoadAnimation3']!);
                  } else if (_model.nineq == 4) {
                    return Text(
                      'คำถามที่ 4',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).titleLarge.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).titleLargeFamily,
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            letterSpacing: 0.0,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .titleLargeIsCustom,
                          ),
                    ).animateOnPageLoad(
                        animationsMap['textOnPageLoadAnimation4']!);
                  } else if (_model.nineq == 5) {
                    return Text(
                      'คำถามที่ 5',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).titleLarge.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).titleLargeFamily,
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            letterSpacing: 0.0,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .titleLargeIsCustom,
                          ),
                    ).animateOnPageLoad(
                        animationsMap['textOnPageLoadAnimation5']!);
                  } else if (_model.nineq == 6) {
                    return Text(
                      'คำถามที่ 6',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).titleLarge.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).titleLargeFamily,
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            letterSpacing: 0.0,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .titleLargeIsCustom,
                          ),
                    ).animateOnPageLoad(
                        animationsMap['textOnPageLoadAnimation6']!);
                  } else if (_model.nineq == 7) {
                    return Text(
                      'คำถามที่ 7',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).titleLarge.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).titleLargeFamily,
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            letterSpacing: 0.0,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .titleLargeIsCustom,
                          ),
                    ).animateOnPageLoad(
                        animationsMap['textOnPageLoadAnimation7']!);
                  } else if (_model.nineq == 8) {
                    return InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        FFAppState().gay = !(FFAppState().gay ?? true);
                        safeSetState(() {});
                      },
                      child: Text(
                        'สรุปผลการประเมิน',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).titleLarge.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).titleLargeFamily,
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              letterSpacing: 0.0,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .titleLargeIsCustom,
                            ),
                      ),
                    ).animateOnPageLoad(
                        animationsMap['textOnPageLoadAnimation8']!);
                  } else {
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    );
                  }
                },
              ),
            ),
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                context.pushNamed(InformationCommunityOneWidget.routeName);
              },
              child: Icon(
                Icons.close_rounded,
                color: FlutterFlowTheme.of(context).secondaryBackground,
                size: 24.0,
              ),
            ),
          ],
        ),
        actions: const [],
        centerTitle: false,
        elevation: 0.0,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              const Color(0xFF339FF3),
              FlutterFlowTheme.of(context).primaryBackground,
              FlutterFlowTheme.of(context).primaryBackground
            ],
            stops: const [0.0, 0.3, 1.0],
            begin: const AlignmentDirectional(0.0, -1.0),
            end: const AlignmentDirectional(0, 1.0),
          ),
          borderRadius: BorderRadius.circular(0.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Builder(
                builder: (context) {
                  if (_model.nineq == 1) {
                    return Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: 2.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: 2.0,
                                decoration: BoxDecoration(
                                  color: const Color(0x1AFFFFFF),
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: 2.0,
                                decoration: BoxDecoration(
                                  color: const Color(0x1AFFFFFF),
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: 2.0,
                                decoration: BoxDecoration(
                                  color: const Color(0x1AFFFFFF),
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: 2.0,
                                decoration: BoxDecoration(
                                  color: const Color(0x1AFFFFFF),
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: 2.0,
                                decoration: BoxDecoration(
                                  color: const Color(0x1AFFFFFF),
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: 2.0,
                                decoration: BoxDecoration(
                                  color: const Color(0x1AFFFFFF),
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 24.0, 16.0, 0.0),
                            child: ListView(
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: () {
                                        if (MediaQuery.sizeOf(context).width <
                                            kBreakpointSmall) {
                                          return 150.0;
                                        } else if (MediaQuery.sizeOf(context)
                                                .width <
                                            kBreakpointMedium) {
                                          return 150.0;
                                        } else if (MediaQuery.sizeOf(context)
                                                .width <
                                            kBreakpointLarge) {
                                          return 250.0;
                                        } else {
                                          return 250.0;
                                        }
                                      }(),
                                      height: () {
                                        if (MediaQuery.sizeOf(context).width <
                                            kBreakpointSmall) {
                                          return 150.0;
                                        } else if (MediaQuery.sizeOf(context)
                                                .width <
                                            kBreakpointMedium) {
                                          return 150.0;
                                        } else if (MediaQuery.sizeOf(context)
                                                .width <
                                            kBreakpointLarge) {
                                          return 250.0;
                                        } else {
                                          return 250.0;
                                        }
                                      }(),
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: Image.network(
                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/healflow-1ya11l/assets/osa2gr8ecvx9/boredfood.png',
                                          ).image,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  'ในช่วง 3 เดือนที่ผ่านมา รับประทานอาหารได้น้อยลงเนื่องจากความอยากอาหารลดลง มีปัญหาการย่อย การเคี้ยว หรือปัญหาการกลืนหรือไม่',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .titleLargeFamily,
                                        letterSpacing: 0.0,
                                        lineHeight: 1.8,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .titleLargeIsCustom,
                                      ),
                                ),
                                MasonryGridView.builder(
                                  physics: const NeverScrollableScrollPhysics(),
                                  gridDelegate:
                                      const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 1,
                                  ),
                                  crossAxisSpacing: () {
                                    if (MediaQuery.sizeOf(context).width <
                                        kBreakpointSmall) {
                                      return 8.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointMedium) {
                                      return 8.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointLarge) {
                                      return 16.0;
                                    } else {
                                      return 16.0;
                                    }
                                  }(),
                                  mainAxisSpacing: () {
                                    if (MediaQuery.sizeOf(context).width <
                                        kBreakpointSmall) {
                                      return 8.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointMedium) {
                                      return 8.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointLarge) {
                                      return 16.0;
                                    } else {
                                      return 16.0;
                                    }
                                  }(),
                                  itemCount: 3,
                                  shrinkWrap: true,
                                  itemBuilder: (context, index) {
                                    return [
                                      () => InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              if (animationsMap[
                                                      'nineoneOnActionTriggerAnimation1'] !=
                                                  null) {
                                                animationsMap[
                                                        'nineoneOnActionTriggerAnimation1']!
                                                    .controller
                                                    .forward(from: 0.0);
                                              }
                                              FFAppState().nineone = '1';
                                              safeSetState(() {});
                                              await Future.delayed(
                                                const Duration(
                                                  milliseconds: 100,
                                                ),
                                              );
                                              _model.nineq = 2;
                                              safeSetState(() {});
                                            },
                                            child: wrapWithModel(
                                              model: _model.nineoneModel1,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: const NineoneWidget(
                                                num: '0',
                                                text:
                                                    'รับประทานอาหารน้อยลงอย่างมาก',
                                                nineq: '1',
                                              ),
                                            ),
                                          ).animateOnActionTrigger(
                                            animationsMap[
                                                'nineoneOnActionTriggerAnimation1']!,
                                          ),
                                      () => InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              if (animationsMap[
                                                      'nineoneOnActionTriggerAnimation2'] !=
                                                  null) {
                                                animationsMap[
                                                        'nineoneOnActionTriggerAnimation2']!
                                                    .controller
                                                    .forward(from: 0.0);
                                              }
                                              FFAppState().nineone = '2';
                                              safeSetState(() {});
                                              await Future.delayed(
                                                const Duration(
                                                  milliseconds: 100,
                                                ),
                                              );
                                              _model.nineq = 2;
                                              safeSetState(() {});
                                            },
                                            child: wrapWithModel(
                                              model: _model.nineoneModel2,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: const NineoneWidget(
                                                num: '1',
                                                text:
                                                    'รับประทานอาหารน้อยลงปานกลาง',
                                                nineq: '2',
                                              ),
                                            ),
                                          ).animateOnActionTrigger(
                                            animationsMap[
                                                'nineoneOnActionTriggerAnimation2']!,
                                          ),
                                      () => InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              if (animationsMap[
                                                      'nineoneOnActionTriggerAnimation3'] !=
                                                  null) {
                                                animationsMap[
                                                        'nineoneOnActionTriggerAnimation3']!
                                                    .controller
                                                    .forward(from: 0.0);
                                              }
                                              FFAppState().nineone = '3';
                                              safeSetState(() {});
                                              await Future.delayed(
                                                const Duration(
                                                  milliseconds: 100,
                                                ),
                                              );
                                              _model.nineq = 2;
                                              safeSetState(() {});
                                            },
                                            child: wrapWithModel(
                                              model: _model.nineoneModel3,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: const NineoneWidget(
                                                num: '2',
                                                text:
                                                    'การรับประทานอาหารไม่เปลี่ยนแปลง',
                                                nineq: '3',
                                              ),
                                            ),
                                          ).animateOnActionTrigger(
                                            animationsMap[
                                                'nineoneOnActionTriggerAnimation3']!,
                                          ),
                                    ][index]();
                                  },
                                ),
                              ].divide(const SizedBox(height: 24.0)),
                            ),
                          ),
                        ),
                      ],
                    );
                  } else if (_model.nineq == 2) {
                    return Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: 2.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: 2.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: 2.0,
                                decoration: BoxDecoration(
                                  color: const Color(0x1AFFFFFF),
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: 2.0,
                                decoration: BoxDecoration(
                                  color: const Color(0x1AFFFFFF),
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: 2.0,
                                decoration: BoxDecoration(
                                  color: const Color(0x1AFFFFFF),
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: 2.0,
                                decoration: BoxDecoration(
                                  color: const Color(0x1AFFFFFF),
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: 2.0,
                                decoration: BoxDecoration(
                                  color: const Color(0x1AFFFFFF),
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 24.0, 16.0, 0.0),
                            child: ListView(
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: () {
                                        if (MediaQuery.sizeOf(context).width <
                                            kBreakpointSmall) {
                                          return 150.0;
                                        } else if (MediaQuery.sizeOf(context)
                                                .width <
                                            kBreakpointMedium) {
                                          return 150.0;
                                        } else if (MediaQuery.sizeOf(context)
                                                .width <
                                            kBreakpointLarge) {
                                          return 250.0;
                                        } else {
                                          return 250.0;
                                        }
                                      }(),
                                      height: () {
                                        if (MediaQuery.sizeOf(context).width <
                                            kBreakpointSmall) {
                                          return 150.0;
                                        } else if (MediaQuery.sizeOf(context)
                                                .width <
                                            kBreakpointMedium) {
                                          return 150.0;
                                        } else if (MediaQuery.sizeOf(context)
                                                .width <
                                            kBreakpointLarge) {
                                          return 250.0;
                                        } else {
                                          return 250.0;
                                        }
                                      }(),
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: Image.network(
                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/healflow-1ya11l/assets/iz6uovlm6zgw/thin.png',
                                          ).image,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  'ในช่วง 3 เดือนที่ผ่านมา น้ำหนักลดลงหรือไม่',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .titleLargeFamily,
                                        letterSpacing: 0.0,
                                        lineHeight: 1.8,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .titleLargeIsCustom,
                                      ),
                                ),
                                MasonryGridView.builder(
                                  physics: const NeverScrollableScrollPhysics(),
                                  gridDelegate:
                                      const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 1,
                                  ),
                                  crossAxisSpacing: () {
                                    if (MediaQuery.sizeOf(context).width <
                                        kBreakpointSmall) {
                                      return 8.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointMedium) {
                                      return 8.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointLarge) {
                                      return 16.0;
                                    } else {
                                      return 16.0;
                                    }
                                  }(),
                                  mainAxisSpacing: () {
                                    if (MediaQuery.sizeOf(context).width <
                                        kBreakpointSmall) {
                                      return 8.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointMedium) {
                                      return 8.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointLarge) {
                                      return 16.0;
                                    } else {
                                      return 16.0;
                                    }
                                  }(),
                                  itemCount: 4,
                                  shrinkWrap: true,
                                  itemBuilder: (context, index) {
                                    return [
                                      () => InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              if (animationsMap[
                                                      'ninetwoOnActionTriggerAnimation1'] !=
                                                  null) {
                                                animationsMap[
                                                        'ninetwoOnActionTriggerAnimation1']!
                                                    .controller
                                                    .forward(from: 0.0);
                                              }
                                              FFAppState().ninetwo = '1';
                                              safeSetState(() {});
                                              await Future.delayed(
                                                const Duration(
                                                  milliseconds: 100,
                                                ),
                                              );
                                              _model.nineq = 3;
                                              safeSetState(() {});
                                            },
                                            child: wrapWithModel(
                                              model: _model.ninetwoModel1,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: const NinetwoWidget(
                                                num: '0',
                                                text:
                                                    'น้ำหนักลดลงมากกว่า 3 กิโลกรัม',
                                                nineq: '1',
                                              ),
                                            ),
                                          ).animateOnActionTrigger(
                                            animationsMap[
                                                'ninetwoOnActionTriggerAnimation1']!,
                                          ),
                                      () => InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              if (animationsMap[
                                                      'nineoneOnActionTriggerAnimation2'] !=
                                                  null) {
                                                animationsMap[
                                                        'nineoneOnActionTriggerAnimation2']!
                                                    .controller
                                                    .forward(from: 0.0);
                                              }
                                              FFAppState().ninetwo = '2';
                                              safeSetState(() {});
                                              await Future.delayed(
                                                const Duration(
                                                  milliseconds: 100,
                                                ),
                                              );
                                              _model.nineq = 3;
                                              safeSetState(() {});
                                            },
                                            child: wrapWithModel(
                                              model: _model.ninetwoModel2,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: const NinetwoWidget(
                                                num: '1',
                                                text: 'ไม่ทราบ',
                                                nineq: '2',
                                              ),
                                            ),
                                          ).animateOnActionTrigger(
                                            animationsMap[
                                                'ninetwoOnActionTriggerAnimation2']!,
                                          ),
                                      () => InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              if (animationsMap[
                                                      'ninetwoOnActionTriggerAnimation3'] !=
                                                  null) {
                                                animationsMap[
                                                        'ninetwoOnActionTriggerAnimation3']!
                                                    .controller
                                                    .forward(from: 0.0);
                                              }
                                              FFAppState().ninetwo = '3';
                                              safeSetState(() {});
                                              await Future.delayed(
                                                const Duration(
                                                  milliseconds: 100,
                                                ),
                                              );
                                              _model.nineq = 3;
                                              safeSetState(() {});
                                            },
                                            child: wrapWithModel(
                                              model: _model.ninetwoModel3,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: const NinetwoWidget(
                                                num: '2',
                                                text:
                                                    'น้ำหนักลดลงระหว่าง -3 กิโลกรัม ',
                                                nineq: '3',
                                              ),
                                            ),
                                          ).animateOnActionTrigger(
                                            animationsMap[
                                                'ninetwoOnActionTriggerAnimation3']!,
                                          ),
                                      () => InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              if (animationsMap[
                                                      'ninetwoOnActionTriggerAnimation4'] !=
                                                  null) {
                                                animationsMap[
                                                        'ninetwoOnActionTriggerAnimation4']!
                                                    .controller
                                                    .forward(from: 0.0);
                                              }
                                              FFAppState().ninetwo = '4';
                                              safeSetState(() {});
                                              await Future.delayed(
                                                const Duration(
                                                  milliseconds: 100,
                                                ),
                                              );
                                              _model.nineq = 3;
                                              safeSetState(() {});
                                            },
                                            child: wrapWithModel(
                                              model: _model.ninetwoModel4,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: const NinetwoWidget(
                                                num: '3',
                                                text: 'น้ำหนักไม่ลดลง',
                                                nineq: '4',
                                              ),
                                            ),
                                          ).animateOnActionTrigger(
                                            animationsMap[
                                                'ninetwoOnActionTriggerAnimation4']!,
                                          ),
                                    ][index]();
                                  },
                                ),
                              ].divide(const SizedBox(height: 24.0)),
                            ),
                          ),
                        ),
                      ],
                    );
                  } else if (_model.nineq == 3) {
                    return Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: 2.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: 2.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: 2.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: 2.0,
                                decoration: BoxDecoration(
                                  color: const Color(0x1AFFFFFF),
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: 2.0,
                                decoration: BoxDecoration(
                                  color: const Color(0x1AFFFFFF),
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: 2.0,
                                decoration: BoxDecoration(
                                  color: const Color(0x1AFFFFFF),
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: 2.0,
                                decoration: BoxDecoration(
                                  color: const Color(0x1AFFFFFF),
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 24.0, 16.0, 0.0),
                            child: ListView(
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: () {
                                        if (MediaQuery.sizeOf(context).width <
                                            kBreakpointSmall) {
                                          return 150.0;
                                        } else if (MediaQuery.sizeOf(context)
                                                .width <
                                            kBreakpointMedium) {
                                          return 150.0;
                                        } else if (MediaQuery.sizeOf(context)
                                                .width <
                                            kBreakpointLarge) {
                                          return 250.0;
                                        } else {
                                          return 250.0;
                                        }
                                      }(),
                                      height: () {
                                        if (MediaQuery.sizeOf(context).width <
                                            kBreakpointSmall) {
                                          return 150.0;
                                        } else if (MediaQuery.sizeOf(context)
                                                .width <
                                            kBreakpointMedium) {
                                          return 150.0;
                                        } else if (MediaQuery.sizeOf(context)
                                                .width <
                                            kBreakpointLarge) {
                                          return 250.0;
                                        } else {
                                          return 250.0;
                                        }
                                      }(),
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: Image.network(
                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/healflow-1ya11l/assets/585flxnver1h/AHC_28.png',
                                          ).image,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  'สามารถเคลื่อนไหวได้เองหรือไม่',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .titleLargeFamily,
                                        letterSpacing: 0.0,
                                        lineHeight: 1.8,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .titleLargeIsCustom,
                                      ),
                                ),
                                MasonryGridView.builder(
                                  physics: const NeverScrollableScrollPhysics(),
                                  gridDelegate:
                                      const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 1,
                                  ),
                                  crossAxisSpacing: () {
                                    if (MediaQuery.sizeOf(context).width <
                                        kBreakpointSmall) {
                                      return 8.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointMedium) {
                                      return 8.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointLarge) {
                                      return 16.0;
                                    } else {
                                      return 16.0;
                                    }
                                  }(),
                                  mainAxisSpacing: () {
                                    if (MediaQuery.sizeOf(context).width <
                                        kBreakpointSmall) {
                                      return 8.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointMedium) {
                                      return 8.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointLarge) {
                                      return 16.0;
                                    } else {
                                      return 16.0;
                                    }
                                  }(),
                                  itemCount: 3,
                                  shrinkWrap: true,
                                  itemBuilder: (context, index) {
                                    return [
                                      () => InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              if (animationsMap[
                                                      'ninethreeOnActionTriggerAnimation1'] !=
                                                  null) {
                                                animationsMap[
                                                        'ninethreeOnActionTriggerAnimation1']!
                                                    .controller
                                                    .forward(from: 0.0);
                                              }
                                              FFAppState().ninethree = '1';
                                              safeSetState(() {});
                                              await Future.delayed(
                                                const Duration(
                                                  milliseconds: 100,
                                                ),
                                              );
                                              _model.nineq = 4;
                                              safeSetState(() {});
                                            },
                                            child: wrapWithModel(
                                              model: _model.ninethreeModel1,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: const NinethreeWidget(
                                                num: '0',
                                                text:
                                                    'นอนบนเตียงหรือต้องอาศัยรถเข็นตลอดเวลา',
                                                nineq: '1',
                                              ),
                                            ),
                                          ).animateOnActionTrigger(
                                            animationsMap[
                                                'ninethreeOnActionTriggerAnimation1']!,
                                          ),
                                      () => InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              if (animationsMap[
                                                      'ninethreeOnActionTriggerAnimation2'] !=
                                                  null) {
                                                animationsMap[
                                                        'ninethreeOnActionTriggerAnimation2']!
                                                    .controller
                                                    .forward(from: 0.0);
                                              }
                                              FFAppState().ninethree = '2';
                                              safeSetState(() {});
                                              await Future.delayed(
                                                const Duration(
                                                  milliseconds: 100,
                                                ),
                                              );
                                              _model.nineq = 4;
                                              safeSetState(() {});
                                            },
                                            child: wrapWithModel(
                                              model: _model.ninethreeModel2,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: const NinethreeWidget(
                                                num: '1',
                                                text:
                                                    'ลุกจากเตียงหรือรถเข็นได้บ้างแต่ไม่สามารถไปข้างนอกได้เอง',
                                                nineq: '2',
                                              ),
                                            ),
                                          ).animateOnActionTrigger(
                                            animationsMap[
                                                'ninethreeOnActionTriggerAnimation2']!,
                                          ),
                                      () => InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              if (animationsMap[
                                                      'ninethreeOnActionTriggerAnimation3'] !=
                                                  null) {
                                                animationsMap[
                                                        'ninethreeOnActionTriggerAnimation3']!
                                                    .controller
                                                    .forward(from: 0.0);
                                              }
                                              FFAppState().ninethree = '3';
                                              safeSetState(() {});
                                              await Future.delayed(
                                                const Duration(
                                                  milliseconds: 100,
                                                ),
                                              );
                                              _model.nineq = 4;
                                              safeSetState(() {});
                                            },
                                            child: wrapWithModel(
                                              model: _model.ninethreeModel3,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: const NinethreeWidget(
                                                num: '2',
                                                text:
                                                    'เดินและเคลื่อนไหวได้ตามปกติ',
                                                nineq: '3',
                                              ),
                                            ),
                                          ).animateOnActionTrigger(
                                            animationsMap[
                                                'ninethreeOnActionTriggerAnimation3']!,
                                          ),
                                    ][index]();
                                  },
                                ),
                              ].divide(const SizedBox(height: 24.0)),
                            ),
                          ),
                        ),
                      ],
                    );
                  } else if (_model.nineq == 4) {
                    return Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: 2.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: 2.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: 2.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: 2.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: 2.0,
                                decoration: BoxDecoration(
                                  color: const Color(0x1AFFFFFF),
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: 2.0,
                                decoration: BoxDecoration(
                                  color: const Color(0x1AFFFFFF),
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: 2.0,
                                decoration: BoxDecoration(
                                  color: const Color(0x1AFFFFFF),
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 24.0, 16.0, 0.0),
                            child: ListView(
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: () {
                                        if (MediaQuery.sizeOf(context).width <
                                            kBreakpointSmall) {
                                          return 150.0;
                                        } else if (MediaQuery.sizeOf(context)
                                                .width <
                                            kBreakpointMedium) {
                                          return 150.0;
                                        } else if (MediaQuery.sizeOf(context)
                                                .width <
                                            kBreakpointLarge) {
                                          return 250.0;
                                        } else {
                                          return 250.0;
                                        }
                                      }(),
                                      height: () {
                                        if (MediaQuery.sizeOf(context).width <
                                            kBreakpointSmall) {
                                          return 150.0;
                                        } else if (MediaQuery.sizeOf(context)
                                                .width <
                                            kBreakpointMedium) {
                                          return 150.0;
                                        } else if (MediaQuery.sizeOf(context)
                                                .width <
                                            kBreakpointLarge) {
                                          return 250.0;
                                        } else {
                                          return 250.0;
                                        }
                                      }(),
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: Image.network(
                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/healflow-1ya11l/assets/k0xg4mvrv6uu/AHC_22.png',
                                          ).image,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  'ใน 3 เดือนที่ผ่านมา มีความเครียดรุนแรงหรือป่วยเฉียบพลันหรือไม่',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .titleLargeFamily,
                                        letterSpacing: 0.0,
                                        lineHeight: 1.8,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .titleLargeIsCustom,
                                      ),
                                ),
                                MasonryGridView.builder(
                                  physics: const NeverScrollableScrollPhysics(),
                                  gridDelegate:
                                      const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 1,
                                  ),
                                  crossAxisSpacing: () {
                                    if (MediaQuery.sizeOf(context).width <
                                        kBreakpointSmall) {
                                      return 8.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointMedium) {
                                      return 8.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointLarge) {
                                      return 16.0;
                                    } else {
                                      return 16.0;
                                    }
                                  }(),
                                  mainAxisSpacing: () {
                                    if (MediaQuery.sizeOf(context).width <
                                        kBreakpointSmall) {
                                      return 8.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointMedium) {
                                      return 8.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointLarge) {
                                      return 16.0;
                                    } else {
                                      return 16.0;
                                    }
                                  }(),
                                  itemCount: 2,
                                  shrinkWrap: true,
                                  itemBuilder: (context, index) {
                                    return [
                                      () => InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              if (animationsMap[
                                                      'nineforeOnActionTriggerAnimation1'] !=
                                                  null) {
                                                animationsMap[
                                                        'nineforeOnActionTriggerAnimation1']!
                                                    .controller
                                                    .forward(from: 0.0);
                                              }
                                              FFAppState().ninefore = '1';
                                              safeSetState(() {});
                                              await Future.delayed(
                                                const Duration(
                                                  milliseconds: 100,
                                                ),
                                              );
                                              _model.nineq = 5;
                                              safeSetState(() {});
                                            },
                                            child: wrapWithModel(
                                              model: _model.nineforeModel1,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: const NineforeWidget(
                                                num: '0',
                                                text: 'มี',
                                                nineq: '1',
                                              ),
                                            ),
                                          ).animateOnActionTrigger(
                                            animationsMap[
                                                'nineforeOnActionTriggerAnimation1']!,
                                          ),
                                      () => InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              if (animationsMap[
                                                      'nineforeOnActionTriggerAnimation2'] !=
                                                  null) {
                                                animationsMap[
                                                        'nineforeOnActionTriggerAnimation2']!
                                                    .controller
                                                    .forward(from: 0.0);
                                              }
                                              FFAppState().ninefore = '2';
                                              safeSetState(() {});
                                              await Future.delayed(
                                                const Duration(
                                                  milliseconds: 100,
                                                ),
                                              );
                                              _model.nineq = 5;
                                              safeSetState(() {});
                                            },
                                            child: wrapWithModel(
                                              model: _model.nineforeModel2,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: const NineforeWidget(
                                                num: '2',
                                                text: 'ไม่มี',
                                                nineq: '2',
                                              ),
                                            ),
                                          ).animateOnActionTrigger(
                                            animationsMap[
                                                'nineforeOnActionTriggerAnimation2']!,
                                          ),
                                    ][index]();
                                  },
                                ),
                              ].divide(const SizedBox(height: 24.0)),
                            ),
                          ),
                        ),
                      ],
                    );
                  } else if (_model.nineq == 5) {
                    return Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: 2.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: 2.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: 2.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: 2.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: 2.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: 2.0,
                                decoration: BoxDecoration(
                                  color: const Color(0x1AFFFFFF),
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: 2.0,
                                decoration: BoxDecoration(
                                  color: const Color(0x1AFFFFFF),
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 24.0, 16.0, 0.0),
                            child: ListView(
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: () {
                                        if (MediaQuery.sizeOf(context).width <
                                            kBreakpointSmall) {
                                          return 150.0;
                                        } else if (MediaQuery.sizeOf(context)
                                                .width <
                                            kBreakpointMedium) {
                                          return 150.0;
                                        } else if (MediaQuery.sizeOf(context)
                                                .width <
                                            kBreakpointLarge) {
                                          return 250.0;
                                        } else {
                                          return 250.0;
                                        }
                                      }(),
                                      height: () {
                                        if (MediaQuery.sizeOf(context).width <
                                            kBreakpointSmall) {
                                          return 150.0;
                                        } else if (MediaQuery.sizeOf(context)
                                                .width <
                                            kBreakpointMedium) {
                                          return 150.0;
                                        } else if (MediaQuery.sizeOf(context)
                                                .width <
                                            kBreakpointLarge) {
                                          return 250.0;
                                        } else {
                                          return 250.0;
                                        }
                                      }(),
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: Image.network(
                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/healflow-1ya11l/assets/pz05k2hm1l34/AHC_25.png',
                                          ).image,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  'มีปัญหาทางจิตประสาท (Neuropsychological problems) หรือไม่',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .titleLargeFamily,
                                        letterSpacing: 0.0,
                                        lineHeight: 1.8,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .titleLargeIsCustom,
                                      ),
                                ),
                                MasonryGridView.builder(
                                  physics: const NeverScrollableScrollPhysics(),
                                  gridDelegate:
                                      const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 1,
                                  ),
                                  crossAxisSpacing: () {
                                    if (MediaQuery.sizeOf(context).width <
                                        kBreakpointSmall) {
                                      return 8.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointMedium) {
                                      return 8.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointLarge) {
                                      return 16.0;
                                    } else {
                                      return 16.0;
                                    }
                                  }(),
                                  mainAxisSpacing: () {
                                    if (MediaQuery.sizeOf(context).width <
                                        kBreakpointSmall) {
                                      return 8.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointMedium) {
                                      return 8.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointLarge) {
                                      return 16.0;
                                    } else {
                                      return 16.0;
                                    }
                                  }(),
                                  itemCount: 3,
                                  shrinkWrap: true,
                                  itemBuilder: (context, index) {
                                    return [
                                      () => InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              if (animationsMap[
                                                      'ninefiveOnActionTriggerAnimation1'] !=
                                                  null) {
                                                animationsMap[
                                                        'ninefiveOnActionTriggerAnimation1']!
                                                    .controller
                                                    .forward(from: 0.0);
                                              }
                                              FFAppState().ninefive = '1';
                                              safeSetState(() {});
                                              await Future.delayed(
                                                const Duration(
                                                  milliseconds: 100,
                                                ),
                                              );
                                              _model.nineq = 6;
                                              safeSetState(() {});
                                            },
                                            child: wrapWithModel(
                                              model: _model.ninefiveModel1,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: const NinefiveWidget(
                                                num: '0',
                                                text:
                                                    'ความจำเสื่อมหรือซึมเศร้าอย่างรุนแรง',
                                                nineq: '1',
                                              ),
                                            ),
                                          ).animateOnActionTrigger(
                                            animationsMap[
                                                'ninefiveOnActionTriggerAnimation1']!,
                                          ),
                                      () => InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              if (animationsMap[
                                                      'ninefiveOnActionTriggerAnimation2'] !=
                                                  null) {
                                                animationsMap[
                                                        'ninefiveOnActionTriggerAnimation2']!
                                                    .controller
                                                    .forward(from: 0.0);
                                              }
                                              FFAppState().ninefive = '2';
                                              safeSetState(() {});
                                              await Future.delayed(
                                                const Duration(
                                                  milliseconds: 100,
                                                ),
                                              );
                                              _model.nineq = 6;
                                              safeSetState(() {});
                                            },
                                            child: wrapWithModel(
                                              model: _model.ninefiveModel2,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: const NinefiveWidget(
                                                num: '1',
                                                text: 'ความจำเสื่อมเล็กน้อย',
                                                nineq: '2',
                                              ),
                                            ),
                                          ).animateOnActionTrigger(
                                            animationsMap[
                                                'ninefiveOnActionTriggerAnimation2']!,
                                          ),
                                      () => InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              if (animationsMap[
                                                      'ninefiveOnActionTriggerAnimation3'] !=
                                                  null) {
                                                animationsMap[
                                                        'ninefiveOnActionTriggerAnimation3']!
                                                    .controller
                                                    .forward(from: 0.0);
                                              }
                                              FFAppState().ninefive = '3';
                                              safeSetState(() {});
                                              await Future.delayed(
                                                const Duration(
                                                  milliseconds: 100,
                                                ),
                                              );
                                              _model.nineq = 6;
                                              safeSetState(() {});
                                            },
                                            child: wrapWithModel(
                                              model: _model.ninefiveModel3,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: const NinefiveWidget(
                                                num: '2',
                                                text: 'ไม่มีปัญหาทางประสาท',
                                                nineq: '3',
                                              ),
                                            ),
                                          ).animateOnActionTrigger(
                                            animationsMap[
                                                'ninefiveOnActionTriggerAnimation3']!,
                                          ),
                                    ][index]();
                                  },
                                ),
                              ].divide(const SizedBox(height: 24.0)),
                            ),
                          ),
                        ),
                      ],
                    );
                  } else if (_model.nineq == 6) {
                    return Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: 2.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: 2.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: 2.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: 2.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: 2.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: 2.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: 2.0,
                                decoration: BoxDecoration(
                                  color: const Color(0x1AFFFFFF),
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 24.0, 16.0, 0.0),
                            child: ListView(
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: () {
                                        if (MediaQuery.sizeOf(context).width <
                                            kBreakpointSmall) {
                                          return 150.0;
                                        } else if (MediaQuery.sizeOf(context)
                                                .width <
                                            kBreakpointMedium) {
                                          return 150.0;
                                        } else if (MediaQuery.sizeOf(context)
                                                .width <
                                            kBreakpointLarge) {
                                          return 250.0;
                                        } else {
                                          return 250.0;
                                        }
                                      }(),
                                      height: () {
                                        if (MediaQuery.sizeOf(context).width <
                                            kBreakpointSmall) {
                                          return 150.0;
                                        } else if (MediaQuery.sizeOf(context)
                                                .width <
                                            kBreakpointMedium) {
                                          return 150.0;
                                        } else if (MediaQuery.sizeOf(context)
                                                .width <
                                            kBreakpointLarge) {
                                          return 250.0;
                                        } else {
                                          return 250.0;
                                        }
                                      }(),
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: Image.network(
                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/healflow-1ya11l/assets/2736zi8wkhuf/AHC_27.png',
                                          ).image,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  'ดัชนีมวลกาย (BMI) = น้ำหนักตัว (กก.) / [ส่วนสูง (ม.) 2]',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .titleLargeFamily,
                                        letterSpacing: 0.0,
                                        lineHeight: 1.8,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .titleLargeIsCustom,
                                      ),
                                ),
                                MasonryGridView.builder(
                                  physics: const NeverScrollableScrollPhysics(),
                                  gridDelegate:
                                      const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 1,
                                  ),
                                  crossAxisSpacing: () {
                                    if (MediaQuery.sizeOf(context).width <
                                        kBreakpointSmall) {
                                      return 8.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointMedium) {
                                      return 8.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointLarge) {
                                      return 16.0;
                                    } else {
                                      return 16.0;
                                    }
                                  }(),
                                  mainAxisSpacing: () {
                                    if (MediaQuery.sizeOf(context).width <
                                        kBreakpointSmall) {
                                      return 8.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointMedium) {
                                      return 8.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointLarge) {
                                      return 16.0;
                                    } else {
                                      return 16.0;
                                    }
                                  }(),
                                  itemCount: 4,
                                  shrinkWrap: true,
                                  itemBuilder: (context, index) {
                                    return [
                                      () => InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              if (animationsMap[
                                                      'ninesixOnActionTriggerAnimation1'] !=
                                                  null) {
                                                animationsMap[
                                                        'ninesixOnActionTriggerAnimation1']!
                                                    .controller
                                                    .forward(from: 0.0);
                                              }
                                              FFAppState().ninesix = '1';
                                              safeSetState(() {});
                                              await Future.delayed(
                                                const Duration(
                                                  milliseconds: 100,
                                                ),
                                              );
                                              _model.nineq = 7;
                                              safeSetState(() {});
                                            },
                                            child: wrapWithModel(
                                              model: _model.ninesixModel1,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: const NinesixWidget(
                                                num: '0',
                                                text: 'BMI น้อยกว่า 9',
                                                nineq: '1',
                                              ),
                                            ),
                                          ).animateOnActionTrigger(
                                            animationsMap[
                                                'ninesixOnActionTriggerAnimation1']!,
                                          ),
                                      () => InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              if (animationsMap[
                                                      'ninesixOnActionTriggerAnimation2'] !=
                                                  null) {
                                                animationsMap[
                                                        'ninesixOnActionTriggerAnimation2']!
                                                    .controller
                                                    .forward(from: 0.0);
                                              }
                                              FFAppState().ninesix = '2';
                                              safeSetState(() {});
                                              await Future.delayed(
                                                const Duration(
                                                  milliseconds: 100,
                                                ),
                                              );
                                              _model.nineq = 7;
                                              safeSetState(() {});
                                            },
                                            child: wrapWithModel(
                                              model: _model.ninesixModel2,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: const NinesixWidget(
                                                num: '1',
                                                text:
                                                    'BMI ตั้งแต่ 9 แต่น้อยกว่า 21',
                                                nineq: '2',
                                              ),
                                            ),
                                          ).animateOnActionTrigger(
                                            animationsMap[
                                                'ninesixOnActionTriggerAnimation2']!,
                                          ),
                                      () => InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              if (animationsMap[
                                                      'ninesixOnActionTriggerAnimation3'] !=
                                                  null) {
                                                animationsMap[
                                                        'ninesixOnActionTriggerAnimation3']!
                                                    .controller
                                                    .forward(from: 0.0);
                                              }
                                              FFAppState().ninesix = '3';
                                              safeSetState(() {});
                                              await Future.delayed(
                                                const Duration(
                                                  milliseconds: 100,
                                                ),
                                              );
                                              _model.nineq = 7;
                                              safeSetState(() {});
                                            },
                                            child: wrapWithModel(
                                              model: _model.ninesixModel3,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: const NinesixWidget(
                                                num: '2',
                                                text:
                                                    'BMI ตั้งแต่ 21 แต่น้อยกว่า 23',
                                                nineq: '3',
                                              ),
                                            ),
                                          ).animateOnActionTrigger(
                                            animationsMap[
                                                'ninesixOnActionTriggerAnimation3']!,
                                          ),
                                      () => InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              if (animationsMap[
                                                      'ninesixOnActionTriggerAnimation4'] !=
                                                  null) {
                                                animationsMap[
                                                        'ninesixOnActionTriggerAnimation4']!
                                                    .controller
                                                    .forward(from: 0.0);
                                              }
                                              FFAppState().ninesix = '4';
                                              safeSetState(() {});
                                              await Future.delayed(
                                                const Duration(
                                                  milliseconds: 100,
                                                ),
                                              );
                                              _model.nineq = 7;
                                              safeSetState(() {});
                                            },
                                            child: wrapWithModel(
                                              model: _model.ninesixModel4,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: const NinesixWidget(
                                                num: '3',
                                                text: 'BMI ตั้งแต่ 23 ขึ้นไป',
                                                nineq: '4',
                                              ),
                                            ),
                                          ).animateOnActionTrigger(
                                            animationsMap[
                                                'ninesixOnActionTriggerAnimation4']!,
                                          ),
                                    ][index]();
                                  },
                                ),
                              ].divide(const SizedBox(height: 24.0)),
                            ),
                          ),
                        ),
                      ],
                    );
                  } else if (_model.nineq == 7) {
                    return Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: 2.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: 2.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: 2.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: 2.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: 2.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: 2.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: 2.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 24.0, 16.0, 0.0),
                            child: ListView(
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: () {
                                        if (MediaQuery.sizeOf(context).width <
                                            kBreakpointSmall) {
                                          return 150.0;
                                        } else if (MediaQuery.sizeOf(context)
                                                .width <
                                            kBreakpointMedium) {
                                          return 150.0;
                                        } else if (MediaQuery.sizeOf(context)
                                                .width <
                                            kBreakpointLarge) {
                                          return 250.0;
                                        } else {
                                          return 250.0;
                                        }
                                      }(),
                                      height: () {
                                        if (MediaQuery.sizeOf(context).width <
                                            kBreakpointSmall) {
                                          return 150.0;
                                        } else if (MediaQuery.sizeOf(context)
                                                .width <
                                            kBreakpointMedium) {
                                          return 150.0;
                                        } else if (MediaQuery.sizeOf(context)
                                                .width <
                                            kBreakpointLarge) {
                                          return 250.0;
                                        } else {
                                          return 250.0;
                                        }
                                      }(),
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: Image.network(
                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/healflow-1ya11l/assets/x5ty8mvcagdc/AHC_1.png',
                                          ).image,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  'เส้นรอบวงน่อง (Calf circumference; CC) หน่วยเป็นเซนติเมตร',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .titleLargeFamily,
                                        letterSpacing: 0.0,
                                        lineHeight: 1.8,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .titleLargeIsCustom,
                                      ),
                                ),
                                MasonryGridView.builder(
                                  physics: const NeverScrollableScrollPhysics(),
                                  gridDelegate:
                                      const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 1,
                                  ),
                                  crossAxisSpacing: () {
                                    if (MediaQuery.sizeOf(context).width <
                                        kBreakpointSmall) {
                                      return 8.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointMedium) {
                                      return 8.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointLarge) {
                                      return 16.0;
                                    } else {
                                      return 16.0;
                                    }
                                  }(),
                                  mainAxisSpacing: () {
                                    if (MediaQuery.sizeOf(context).width <
                                        kBreakpointSmall) {
                                      return 8.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointMedium) {
                                      return 8.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointLarge) {
                                      return 16.0;
                                    } else {
                                      return 16.0;
                                    }
                                  }(),
                                  itemCount: 2,
                                  shrinkWrap: true,
                                  itemBuilder: (context, index) {
                                    return [
                                      () => InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              if (animationsMap[
                                                      'ninesevenOnActionTriggerAnimation1'] !=
                                                  null) {
                                                animationsMap[
                                                        'ninesevenOnActionTriggerAnimation1']!
                                                    .controller
                                                    .forward(from: 0.0);
                                              }
                                              FFAppState().nineseven = '1';
                                              safeSetState(() {});
                                              await Future.delayed(
                                                const Duration(
                                                  milliseconds: 100,
                                                ),
                                              );
                                            },
                                            child: wrapWithModel(
                                              model: _model.ninesevenModel1,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: const NinesevenWidget(
                                                num: '0',
                                                text: 'CC น้อยกว่า 31',
                                                nineq: '1',
                                              ),
                                            ),
                                          ).animateOnActionTrigger(
                                            animationsMap[
                                                'ninesevenOnActionTriggerAnimation1']!,
                                          ),
                                      () => InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              if (animationsMap[
                                                      'ninesevenOnActionTriggerAnimation2'] !=
                                                  null) {
                                                animationsMap[
                                                        'ninesevenOnActionTriggerAnimation2']!
                                                    .controller
                                                    .forward(from: 0.0);
                                              }
                                              FFAppState().nineseven = '2';
                                              safeSetState(() {});
                                              await Future.delayed(
                                                const Duration(
                                                  milliseconds: 100,
                                                ),
                                              );
                                            },
                                            child: wrapWithModel(
                                              model: _model.ninesevenModel2,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: const NinesevenWidget(
                                                num: '3',
                                                text: 'CC ตั้งแต่ 31 ขึ้นไป',
                                                nineq: '2',
                                              ),
                                            ),
                                          ).animateOnActionTrigger(
                                            animationsMap[
                                                'ninesevenOnActionTriggerAnimation2']!,
                                          ),
                                    ][index]();
                                  },
                                ),
                              ].divide(const SizedBox(height: 24.0)),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 16.0, 16.0, 24.0),
                          child: MainButton(
                            text: 'บันทึก',
                            onPressed: () async {
                              _model.nineq = 8;
                              safeSetState(() {});
                            },
                          ),
                        ),
                      ],
                    );
                  } else if (_model.nineq == 8) {
                    return ListView(
                      padding: const EdgeInsets.fromLTRB(
                        0,
                        8.0,
                        0,
                        32.0,
                      ),
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(0.0, -1.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.network(
                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/healflow-1ya11l/assets/6y03lpmg3au4/New_Summary.png',
                              width: () {
                                if (MediaQuery.sizeOf(context).width <
                                    kBreakpointSmall) {
                                  return 150.0;
                                } else if (MediaQuery.sizeOf(context).width <
                                    kBreakpointMedium) {
                                  return 150.0;
                                } else if (MediaQuery.sizeOf(context).width <
                                    kBreakpointLarge) {
                                  return 250.0;
                                } else {
                                  return 250.0;
                                }
                              }(),
                              height: () {
                                if (MediaQuery.sizeOf(context).width <
                                    kBreakpointSmall) {
                                  return 150.0;
                                } else if (MediaQuery.sizeOf(context).width <
                                    kBreakpointMedium) {
                                  return 150.0;
                                } else if (MediaQuery.sizeOf(context).width <
                                    kBreakpointLarge) {
                                  return 250.0;
                                } else {
                                  return 250.0;
                                }
                              }(),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        if (FFAppState().gay == true)
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 24.0, 16.0, 0.0),
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                borderRadius: BorderRadius.circular(24.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        FaIcon(
                                          FontAwesomeIcons.solidFile,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 14.0,
                                        ),
                                        Expanded(
                                          child: Text(
                                            'เกณฑ์การวัดผลแบบประเมิน MNA (Short form)',
                                            style: FlutterFlowTheme.of(context)
                                                .labelSmall
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelSmallFamily,
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .labelSmallIsCustom,
                                                ),
                                          ),
                                        ),
                                      ].divide(const SizedBox(width: 8.0)),
                                    ),
                                    Text(
                                      'คุณได้ 12 คะแนน',
                                      style: FlutterFlowTheme.of(context)
                                          .headlineSmall
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .headlineSmallFamily,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .headlineSmallIsCustom,
                                          ),
                                    ),
                                    Text(
                                      'มีโภชนาการปกติ',
                                      style: FlutterFlowTheme.of(context)
                                          .labelLarge
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .labelLargeFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .labelLargeIsCustom,
                                          ),
                                    ),
                                    Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Text(
                                          'เป็นผู้มีความเสี่ยงโรคซึมเศร้า เพราะมีเหตุให้เกิดการกระทบกระทั้งจิตใจทำให้มีอาการวิตกกังวล และมีความคิดด้านลบหรือสิ้นหวังกับชีวิต',
                                          textAlign: TextAlign.start,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily,
                                                letterSpacing: 0.0,
                                                lineHeight: 1.5,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMediumIsCustom,
                                              ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 16.0, 0.0, 0.0),
                                      child: FFButtonWidget(
                                        onPressed: () async {
                                          context.pushNamed(
                                              InformationCommunityOneWidget
                                                  .routeName);
                                        },
                                        text: 'กลับสู่หน้าหลัก',
                                        options: FFButtonOptions(
                                          width: double.infinity,
                                          height: 48.0,
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 0.0, 16.0, 0.0),
                                          iconAlignment: IconAlignment.start,
                                          iconPadding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: FlutterFlowTheme.of(context)
                                              .customColor5,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .bodyMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                letterSpacing: 0.0,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMediumIsCustom,
                                              ),
                                          elevation: 0.0,
                                          borderRadius:
                                              BorderRadius.circular(100.0),
                                        ),
                                      ),
                                    ),
                                  ].divide(const SizedBox(height: 16.0)),
                                ),
                              ),
                            ),
                          ),
                        if (FFAppState().gay == false)
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 24.0, 16.0, 0.0),
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                borderRadius: BorderRadius.circular(24.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        FaIcon(
                                          FontAwesomeIcons.solidFile,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 14.0,
                                        ),
                                        Text(
                                          'เกณฑ์การวัดผลแบบประเมิน MNA (Short form)',
                                          style: FlutterFlowTheme.of(context)
                                              .labelSmall
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .labelSmallFamily,
                                                letterSpacing: 0.0,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .labelSmallIsCustom,
                                              ),
                                        ),
                                      ].divide(const SizedBox(width: 8.0)),
                                    ),
                                    Text(
                                      'คุณได้ 7 คะแนน',
                                      style: FlutterFlowTheme.of(context)
                                          .headlineSmall
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .headlineSmallFamily,
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .headlineSmallIsCustom,
                                          ),
                                    ),
                                    Text(
                                      'มีภาวะขาดสารอาหาร',
                                      style: FlutterFlowTheme.of(context)
                                          .labelLarge
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .labelLargeFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .labelLargeIsCustom,
                                          ),
                                    ),
                                    Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFFFEDED),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Text(
                                          'เป็นผู้มีความเสี่ยงโรคซึมเศร้า เพราะมีเหตุให้เกิดการกระทบกระทั้งจิตใจทำให้มีอาการวิตกกังวล และมีความคิดด้านลบหรือสิ้นหวังกับชีวิต\n\nให้ประเมินต่อด้วยแบบประเมิน Mini Nutritional Assessment : MNA (Full form)',
                                          textAlign: TextAlign.start,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily,
                                                letterSpacing: 0.0,
                                                lineHeight: 1.5,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMediumIsCustom,
                                              ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 16.0, 0.0, 0.0),
                                      child: MasonryGridView.builder(
                                        physics:
                                            const NeverScrollableScrollPhysics(),
                                        gridDelegate:
                                            SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                kBreakpointSmall) {
                                              return 1;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointMedium) {
                                              return 1;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointLarge) {
                                              return 2;
                                            } else {
                                              return 2;
                                            }
                                          }(),
                                        ),
                                        crossAxisSpacing: () {
                                          if (MediaQuery.sizeOf(context).width <
                                              kBreakpointSmall) {
                                            return 8.0;
                                          } else if (MediaQuery.sizeOf(context)
                                                  .width <
                                              kBreakpointMedium) {
                                            return 8.0;
                                          } else if (MediaQuery.sizeOf(context)
                                                  .width <
                                              kBreakpointLarge) {
                                            return 16.0;
                                          } else {
                                            return 16.0;
                                          }
                                        }(),
                                        mainAxisSpacing: () {
                                          if (MediaQuery.sizeOf(context).width <
                                              kBreakpointSmall) {
                                            return 8.0;
                                          } else if (MediaQuery.sizeOf(context)
                                                  .width <
                                              kBreakpointMedium) {
                                            return 8.0;
                                          } else if (MediaQuery.sizeOf(context)
                                                  .width <
                                              kBreakpointLarge) {
                                            return 16.0;
                                          } else {
                                            return 16.0;
                                          }
                                        }(),
                                        itemCount: 2,
                                        shrinkWrap: true,
                                        itemBuilder: (context, index) {
                                          return [
                                            () => MainButton(
                                                  text:
                                                      'ทำแบบประเมิน MNA (Full form)',
                                                  onPressed: () async {
                                                    context.pushNamed(
                                                        MNAFullWidget
                                                            .routeName);

                                                    FFAppState().nineone = '';
                                                    FFAppState().ninetwo = '';
                                                    FFAppState().ninethree = '';
                                                    FFAppState().ninefore = '';
                                                    FFAppState().ninefive = '';
                                                    FFAppState().ninesix = '';
                                                    FFAppState().nineseven = '';
                                                    safeSetState(() {});
                                                  },
                                                ),
                                            () => FFButtonWidget(
                                                  onPressed: () async {
                                                    context.pushNamed(
                                                        InformationCommunityOneWidget
                                                            .routeName);

                                                    FFAppState().nineone = '';
                                                    FFAppState().ninetwo = '';
                                                    FFAppState().ninethree = '';
                                                    FFAppState().ninefore = '';
                                                    FFAppState().ninefive = '';
                                                    FFAppState().ninesix = '';
                                                    FFAppState().nineseven = '';
                                                    safeSetState(() {});
                                                  },
                                                  text: 'ยกเลิก',
                                                  options: FFButtonOptions(
                                                    width: double.infinity,
                                                    height: 48.0,
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(16.0, 0.0,
                                                                16.0, 0.0),
                                                    iconAlignment:
                                                        IconAlignment.start,
                                                    iconPadding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 0.0),
                                                    color: const Color(0x00164874),
                                                    textStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .customColor5,
                                                              letterSpacing:
                                                                  0.0,
                                                              useGoogleFonts:
                                                                  !FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumIsCustom,
                                                            ),
                                                    elevation: 0.0,
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .customColor5,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            100.0),
                                                  ),
                                                ),
                                          ][index]();
                                        },
                                      ),
                                    ),
                                  ].divide(const SizedBox(height: 16.0)),
                                ),
                              ),
                            ),
                          ),
                      ],
                    );
                  } else {
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
