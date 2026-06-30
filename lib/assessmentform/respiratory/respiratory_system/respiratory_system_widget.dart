import '/assessmentform/thirtytree/widget/start_as_bottom/start_as_bottom_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/sakon_nakhon/crisisvictims/widget/ninefive/ninefive_widget.dart';
import '/sakon_nakhon/crisisvictims/widget/ninefore/ninefore_widget.dart';
import '/sakon_nakhon/crisisvictims/widget/nineone/nineone_widget.dart';
import '/sakon_nakhon/crisisvictims/widget/ninethree/ninethree_widget.dart';
import '/sakon_nakhon/crisisvictims/widget/ninetwo/ninetwo_widget.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'respiratory_system_model.dart';
export 'respiratory_system_model.dart';

class RespiratorySystemWidget extends StatefulWidget {
  const RespiratorySystemWidget({super.key});

  static String routeName = 'respiratory_system';
  static String routePath = '/respiratorySystem';

  @override
  State<RespiratorySystemWidget> createState() =>
      _RespiratorySystemWidgetState();
}

class _RespiratorySystemWidgetState extends State<RespiratorySystemWidget>
    with TickerProviderStateMixin {
  late RespiratorySystemModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RespiratorySystemModel());

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
      'nineoneOnActionTriggerAnimation4': AnimationInfo(
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
      'nineoneOnActionTriggerAnimation5': AnimationInfo(
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
      'ninetwoOnActionTriggerAnimation5': AnimationInfo(
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
      'ninethreeOnActionTriggerAnimation4': AnimationInfo(
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
      'ninethreeOnActionTriggerAnimation5': AnimationInfo(
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
      'nineforeOnActionTriggerAnimation3': AnimationInfo(
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
      'nineforeOnActionTriggerAnimation4': AnimationInfo(
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
      'nineforeOnActionTriggerAnimation5': AnimationInfo(
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
      'ninefiveOnActionTriggerAnimation4': AnimationInfo(
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
      'ninefiveOnActionTriggerAnimation5': AnimationInfo(
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
                    ).animateOnPageLoad(
                        animationsMap['textOnPageLoadAnimation6']!);
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
                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/healflow-1ya11l/assets/w3yj1d076ei9/AHC_11.png',
                                          ).image,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  'ในช่วง 4 สัปดาห์ที่ผ่านมา บ่อยแค่ไหนที่โรคหืด ทำให้คุณไม่สามารถทำงานที่เคยทำได้ ไม่ว่าจะเป็นงานที่ทำงาน ที่โรงเรียน หรือที่บ้าน ',
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
                                  itemCount: 5,
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
                                                num: '1',
                                                text: 'ตลอดเวลา',
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
                                                num: '2',
                                                text: 'บ่อยมาก',
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
                                                num: '3',
                                                text: 'บางครั้ง',
                                                nineq: '3',
                                              ),
                                            ),
                                          ).animateOnActionTrigger(
                                            animationsMap[
                                                'nineoneOnActionTriggerAnimation3']!,
                                          ),
                                      () => InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              if (animationsMap[
                                                      'nineoneOnActionTriggerAnimation4'] !=
                                                  null) {
                                                animationsMap[
                                                        'nineoneOnActionTriggerAnimation4']!
                                                    .controller
                                                    .forward(from: 0.0);
                                              }
                                              FFAppState().nineone = '4';
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
                                              model: _model.nineoneModel4,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: const NineoneWidget(
                                                num: '4',
                                                text: 'น้อยมาก',
                                                nineq: '4',
                                              ),
                                            ),
                                          ).animateOnActionTrigger(
                                            animationsMap[
                                                'nineoneOnActionTriggerAnimation4']!,
                                          ),
                                      () => InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              if (animationsMap[
                                                      'nineoneOnActionTriggerAnimation5'] !=
                                                  null) {
                                                animationsMap[
                                                        'nineoneOnActionTriggerAnimation5']!
                                                    .controller
                                                    .forward(from: 0.0);
                                              }
                                              FFAppState().nineone = '5';
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
                                              model: _model.nineoneModel5,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: const NineoneWidget(
                                                num: '5',
                                                text: 'ไม่เคยเลย',
                                                nineq: '5',
                                              ),
                                            ),
                                          ).animateOnActionTrigger(
                                            animationsMap[
                                                'nineoneOnActionTriggerAnimation5']!,
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
                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/healflow-1ya11l/assets/ox1clijr53qp/AHC_24.png',
                                          ).image,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  'ใน 4 สัปดาห์ที่ผ่านมา บ่อยแค่ไหนที่คุณรู้สึกหายใจไม่อิ่ม',
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
                                  itemCount: 5,
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
                                                num: '1',
                                                text: 'มากกว่า 1 ครั้งต่อวัน',
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
                                                num: '2',
                                                text: 'วันละครั้ง',
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
                                                num: '3',
                                                text: '3-6 ครั้งต่อสัปดาห์',
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
                                                num: '4',
                                                text: '1-2 สัปดาห์ต่อครั้ง',
                                                nineq: '4',
                                              ),
                                            ),
                                          ).animateOnActionTrigger(
                                            animationsMap[
                                                'ninetwoOnActionTriggerAnimation4']!,
                                          ),
                                      () => InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              if (animationsMap[
                                                      'ninetwoOnActionTriggerAnimation5'] !=
                                                  null) {
                                                animationsMap[
                                                        'ninetwoOnActionTriggerAnimation5']!
                                                    .controller
                                                    .forward(from: 0.0);
                                              }
                                              FFAppState().ninetwo = '5';
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
                                              model: _model.ninetwoModel5,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: const NinetwoWidget(
                                                num: '5',
                                                text: 'ไม่เคยเลย',
                                                nineq: '5',
                                              ),
                                            ),
                                          ).animateOnActionTrigger(
                                            animationsMap[
                                                'ninetwoOnActionTriggerAnimation5']!,
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
                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/healflow-1ya11l/assets/z3xj3p86nhmn/AHC_19.png',
                                          ).image,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  'ใน 4 สัปดาห์ที่ผ่านมา บ่อยแค่ไหนที่คุณมีอาการของโรคหืด (หายใจมีเสียงวี๊ดๆ, ไอ, หายใจไม่อิ่มแน่นหน้าอกหรือเจ็บหน้าอก) จนทำให้ต้องตื่นขึ้นกลางดึก หรือตื่นเช้ากว่าปกติ',
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
                                  itemCount: 5,
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
                                                num: '1',
                                                text:
                                                    '4 คืนหรือมากกว่าต่อสัปดาห์',
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
                                                num: '2',
                                                text: '2-3 คืนต่อสัปดาห์',
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
                                                num: '3',
                                                text: '1 คืนต่อสัปดาห์',
                                                nineq: '3',
                                              ),
                                            ),
                                          ).animateOnActionTrigger(
                                            animationsMap[
                                                'ninethreeOnActionTriggerAnimation3']!,
                                          ),
                                      () => InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              if (animationsMap[
                                                      'ninethreeOnActionTriggerAnimation4'] !=
                                                  null) {
                                                animationsMap[
                                                        'ninethreeOnActionTriggerAnimation4']!
                                                    .controller
                                                    .forward(from: 0.0);
                                              }
                                              FFAppState().ninethree = '4';
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
                                              model: _model.ninethreeModel4,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: const NinethreeWidget(
                                                num: '4',
                                                text: '1-2 คืน',
                                                nineq: '4',
                                              ),
                                            ),
                                          ).animateOnActionTrigger(
                                            animationsMap[
                                                'ninethreeOnActionTriggerAnimation4']!,
                                          ),
                                      () => InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              if (animationsMap[
                                                      'ninethreeOnActionTriggerAnimation5'] !=
                                                  null) {
                                                animationsMap[
                                                        'ninethreeOnActionTriggerAnimation5']!
                                                    .controller
                                                    .forward(from: 0.0);
                                              }
                                              FFAppState().ninethree = '5';
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
                                              model: _model.ninethreeModel5,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: const NinethreeWidget(
                                                num: '5',
                                                text: 'ไม่เคยเลย',
                                                nineq: '5',
                                              ),
                                            ),
                                          ).animateOnActionTrigger(
                                            animationsMap[
                                                'ninethreeOnActionTriggerAnimation5']!,
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
                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/healflow-1ya11l/assets/eoqzlkp25woy/AHC_10.png',
                                          ).image,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  'ใน 4 สัปดาห์ที่ผ่านมา คุณต้องใช้ยาสูดพ่นขยายหลอดลมชนิดออกฤทธิ์เร็ว หรือยาเม็ดขยายหลอดลมชนิดออกฤทธิ์เร็วบ่อยแค่ไหน เพื่อช่วยให้คุณหายใจดีขึ้น',
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
                                  itemCount: 5,
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
                                                num: '1',
                                                text:
                                                    '3 ครั้งหรือมากกว่าต่อวัน',
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
                                                text: '1-2 ครั้งต่อวัน',
                                                nineq: '2',
                                              ),
                                            ),
                                          ).animateOnActionTrigger(
                                            animationsMap[
                                                'nineforeOnActionTriggerAnimation2']!,
                                          ),
                                      () => InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              if (animationsMap[
                                                      'nineforeOnActionTriggerAnimation3'] !=
                                                  null) {
                                                animationsMap[
                                                        'nineforeOnActionTriggerAnimation3']!
                                                    .controller
                                                    .forward(from: 0.0);
                                              }
                                              FFAppState().ninefore = '3';
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
                                              model: _model.nineforeModel3,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: const NineforeWidget(
                                                num: '3',
                                                text: '2-3 ครั้งต่อสัปดาห์',
                                                nineq: '3',
                                              ),
                                            ),
                                          ).animateOnActionTrigger(
                                            animationsMap[
                                                'nineforeOnActionTriggerAnimation3']!,
                                          ),
                                      () => InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              if (animationsMap[
                                                      'nineforeOnActionTriggerAnimation4'] !=
                                                  null) {
                                                animationsMap[
                                                        'nineforeOnActionTriggerAnimation4']!
                                                    .controller
                                                    .forward(from: 0.0);
                                              }
                                              FFAppState().ninefore = '4';
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
                                              model: _model.nineforeModel4,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: const NineforeWidget(
                                                num: '4',
                                                text:
                                                    '1 ครั้งต่อสัปดาห์หรือน้อยกว่า',
                                                nineq: '4',
                                              ),
                                            ),
                                          ).animateOnActionTrigger(
                                            animationsMap[
                                                'nineforeOnActionTriggerAnimation4']!,
                                          ),
                                      () => InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              if (animationsMap[
                                                      'nineforeOnActionTriggerAnimation5'] !=
                                                  null) {
                                                animationsMap[
                                                        'nineforeOnActionTriggerAnimation5']!
                                                    .controller
                                                    .forward(from: 0.0);
                                              }
                                              FFAppState().ninefore = '5';
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
                                              model: _model.nineforeModel5,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: const NineforeWidget(
                                                num: '5',
                                                text: 'ไม่เคยเลย',
                                                nineq: '5',
                                              ),
                                            ),
                                          ).animateOnActionTrigger(
                                            animationsMap[
                                                'nineforeOnActionTriggerAnimation5']!,
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
                    return Stack(
                      children: [
                        Column(
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
                                      borderRadius:
                                          BorderRadius.circular(100.0),
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
                                      borderRadius:
                                          BorderRadius.circular(100.0),
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
                                      borderRadius:
                                          BorderRadius.circular(100.0),
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
                                      borderRadius:
                                          BorderRadius.circular(100.0),
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
                                      borderRadius:
                                          BorderRadius.circular(100.0),
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                kBreakpointSmall) {
                                              return 150.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointMedium) {
                                              return 150.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointLarge) {
                                              return 250.0;
                                            } else {
                                              return 250.0;
                                            }
                                          }(),
                                          height: () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                kBreakpointSmall) {
                                              return 150.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointMedium) {
                                              return 150.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
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
                                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/healflow-1ya11l/assets/hcugjxr3irna/AHC_20.png',
                                              ).image,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      'ใน 4 สัปดาห์ที่ผ่านมา คุณคิดว่าคุณสามารถคุมโรคหืดของคุณได้ดีมากน้อยแค่ไหน',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .titleLargeFamily,
                                            letterSpacing: 0.0,
                                            lineHeight: 1.8,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .titleLargeIsCustom,
                                          ),
                                    ),
                                    MasonryGridView.builder(
                                      physics:
                                          const NeverScrollableScrollPhysics(),
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
                                      itemCount: 5,
                                      shrinkWrap: true,
                                      itemBuilder: (context, index) {
                                        return [
                                          () => InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
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
                                                },
                                                child: wrapWithModel(
                                                  model: _model.ninefiveModel1,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: const NinefiveWidget(
                                                    num: '1',
                                                    text: 'ควบคุมไม่ได้',
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
                                                highlightColor:
                                                    Colors.transparent,
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
                                                },
                                                child: wrapWithModel(
                                                  model: _model.ninefiveModel2,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: const NinefiveWidget(
                                                    num: '2',
                                                    text: 'ควบคุมได้ไม่ค่อยดี',
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
                                                highlightColor:
                                                    Colors.transparent,
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
                                                },
                                                child: wrapWithModel(
                                                  model: _model.ninefiveModel3,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: const NinefiveWidget(
                                                    num: '3',
                                                    text: 'ควบคุมได้บ้าง',
                                                    nineq: '3',
                                                  ),
                                                ),
                                              ).animateOnActionTrigger(
                                                animationsMap[
                                                    'ninefiveOnActionTriggerAnimation3']!,
                                              ),
                                          () => InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  if (animationsMap[
                                                          'ninefiveOnActionTriggerAnimation4'] !=
                                                      null) {
                                                    animationsMap[
                                                            'ninefiveOnActionTriggerAnimation4']!
                                                        .controller
                                                        .forward(from: 0.0);
                                                  }
                                                  FFAppState().ninefive = '4';
                                                  safeSetState(() {});
                                                  await Future.delayed(
                                                    const Duration(
                                                      milliseconds: 100,
                                                    ),
                                                  );
                                                },
                                                child: wrapWithModel(
                                                  model: _model.ninefiveModel4,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: const NinefiveWidget(
                                                    num: '4',
                                                    text: 'ควบคุมได้ดี',
                                                    nineq: '4',
                                                  ),
                                                ),
                                              ).animateOnActionTrigger(
                                                animationsMap[
                                                    'ninefiveOnActionTriggerAnimation4']!,
                                              ),
                                          () => InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  if (animationsMap[
                                                          'ninefiveOnActionTriggerAnimation5'] !=
                                                      null) {
                                                    animationsMap[
                                                            'ninefiveOnActionTriggerAnimation5']!
                                                        .controller
                                                        .forward(from: 0.0);
                                                  }
                                                  FFAppState().ninefive = '5';
                                                  safeSetState(() {});
                                                  await Future.delayed(
                                                    const Duration(
                                                      milliseconds: 100,
                                                    ),
                                                  );
                                                },
                                                child: wrapWithModel(
                                                  model: _model.ninefiveModel5,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: const NinefiveWidget(
                                                    num: '5',
                                                    text: 'ควบคุมได้สมบูรณ์',
                                                    nineq: '5',
                                                  ),
                                                ),
                                              ).animateOnActionTrigger(
                                                animationsMap[
                                                    'ninefiveOnActionTriggerAnimation5']!,
                                              ),
                                        ][index]();
                                      },
                                    ),
                                  ].divide(const SizedBox(height: 24.0)),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.0, 1.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              _model.nineq = 6;
                              safeSetState(() {});
                            },
                            child: wrapWithModel(
                              model: _model.startAsBottomModel,
                              updateCallback: () => safeSetState(() {}),
                              child: const StartAsBottomWidget(
                                text: 'บันทึก',
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  } else if (_model.nineq == 6) {
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
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
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
                                        'แบบประเมินผู้ป่วยหอบหืด',
                                        style: FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .labelSmallFamily,
                                              letterSpacing: 0.0,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .labelSmallIsCustom,
                                            ),
                                      ),
                                    ].divide(const SizedBox(width: 8.0)),
                                  ),
                                  Text(
                                    'คุณได้ 6 คะแนน',
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
                                  Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      borderRadius: BorderRadius.circular(16.0),
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
                                                  !FlutterFlowTheme.of(context)
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

                                        FFAppState().nineone = '';
                                        FFAppState().ninetwo = '';
                                        FFAppState().ninethree = '';
                                        FFAppState().ninefore = '';
                                        FFAppState().ninefive = '';
                                        safeSetState(() {});
                                      },
                                      text: 'กลับสู่หน้าหลัก',
                                      options: FFButtonOptions(
                                        width: double.infinity,
                                        height: 48.0,
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            16.0, 0.0, 16.0, 0.0),
                                        iconAlignment: IconAlignment.start,
                                        iconPadding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: FlutterFlowTheme.of(context)
                                            .customColor5,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              letterSpacing: 0.0,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
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
                      ].divide(const SizedBox(height: 24.0)),
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
