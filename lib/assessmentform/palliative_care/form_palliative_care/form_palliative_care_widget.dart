import '/assessmentform/highbloodpressure/widget/bloodpage/bloodpage_widget.dart';
import '/assessmentform/thirtytree/widget/start_as_bottom/start_as_bottom_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'form_palliative_care_model.dart';
export 'form_palliative_care_model.dart';

class FormPalliativeCareWidget extends StatefulWidget {
  const FormPalliativeCareWidget({super.key});

  static String routeName = 'Form_Palliative_Care';
  static String routePath = '/formPalliativeCare';

  @override
  State<FormPalliativeCareWidget> createState() =>
      _FormPalliativeCareWidgetState();
}

class _FormPalliativeCareWidgetState extends State<FormPalliativeCareWidget>
    with TickerProviderStateMixin {
  late FormPalliativeCareModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FormPalliativeCareModel());

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
      'bloodpageOnActionTriggerAnimation1': AnimationInfo(
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
      'bloodpageOnActionTriggerAnimation2': AnimationInfo(
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
      'bloodpageOnActionTriggerAnimation3': AnimationInfo(
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
      'bloodpageOnActionTriggerAnimation4': AnimationInfo(
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
      'bloodpageOnActionTriggerAnimation5': AnimationInfo(
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
      'bloodpageOnActionTriggerAnimation6': AnimationInfo(
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
      'bloodpageOnActionTriggerAnimation7': AnimationInfo(
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
      'bloodpageOnActionTriggerAnimation8': AnimationInfo(
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
      'bloodpageOnActionTriggerAnimation9': AnimationInfo(
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
      'bloodpageOnActionTriggerAnimation10': AnimationInfo(
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
      'bloodpageOnActionTriggerAnimation11': AnimationInfo(
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
      'bloodpageOnActionTriggerAnimation12': AnimationInfo(
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
      'bloodpageOnActionTriggerAnimation13': AnimationInfo(
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
      'bloodpageOnActionTriggerAnimation14': AnimationInfo(
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
      'bloodpageOnActionTriggerAnimation15': AnimationInfo(
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
      'bloodpageOnActionTriggerAnimation16': AnimationInfo(
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
      'bloodpageOnActionTriggerAnimation17': AnimationInfo(
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
      'bloodpageOnActionTriggerAnimation18': AnimationInfo(
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
      'bloodpageOnActionTriggerAnimation19': AnimationInfo(
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
      'bloodpageOnActionTriggerAnimation20': AnimationInfo(
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
      'bloodpageOnActionTriggerAnimation21': AnimationInfo(
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
      'bloodpageOnActionTriggerAnimation22': AnimationInfo(
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
      'bloodpageOnActionTriggerAnimation23': AnimationInfo(
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
      'bloodpageOnActionTriggerAnimation24': AnimationInfo(
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
      'bloodpageOnActionTriggerAnimation25': AnimationInfo(
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
      'bloodpageOnActionTriggerAnimation26': AnimationInfo(
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
      'bloodpageOnActionTriggerAnimation27': AnimationInfo(
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
      'bloodpageOnActionTriggerAnimation28': AnimationInfo(
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
      'bloodpageOnActionTriggerAnimation29': AnimationInfo(
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
            Align(
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: Builder(
                builder: (context) {
                  if (_model.pagepalliative == 1) {
                    return InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context
                            .pushNamed(InformationCommunityOneWidget.routeName);

                        _model.pagepalliative = 1;
                        safeSetState(() {});
                        FFAppState().exer = '';
                        safeSetState(() {});
                      },
                      child: Icon(
                        Icons.arrow_back_ios_new_rounded,
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        size: 20.0,
                      ),
                    );
                  } else if (_model.pagepalliative == 2) {
                    return InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        _model.pagepalliative = 1;
                        safeSetState(() {});
                      },
                      child: Icon(
                        Icons.arrow_back_ios_new_rounded,
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        size: 20.0,
                      ),
                    );
                  } else if (_model.pagepalliative == 3) {
                    return InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        _model.pagepalliative = 2;
                        safeSetState(() {});
                      },
                      child: Icon(
                        Icons.arrow_back_ios_new_rounded,
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        size: 20.0,
                      ),
                    );
                  } else if (_model.pagepalliative == 4) {
                    return InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        _model.pagepalliative = 3;
                        safeSetState(() {});
                      },
                      child: Icon(
                        Icons.arrow_back_ios_new_rounded,
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        size: 20.0,
                      ),
                    );
                  } else if (_model.pagepalliative == 5) {
                    return InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        _model.pagepalliative = 4;
                        safeSetState(() {});
                      },
                      child: Icon(
                        Icons.arrow_back_ios_new_rounded,
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        size: 20.0,
                      ),
                    );
                  } else if (_model.pagepalliative == 6) {
                    return InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        _model.pagepalliative = 5;
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
                      width: 0.0,
                      height: 0.0,
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
                    );
                  }
                },
              ),
            ),
            Expanded(
              child: Builder(
                builder: (context) {
                  if (_model.pagepalliative == 1) {
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
                  } else if (_model.pagepalliative == 2) {
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
                  } else if (_model.pagepalliative == 3) {
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
                  } else if (_model.pagepalliative == 4) {
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
                  } else if (_model.pagepalliative == 5) {
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
                  } else if (_model.pagepalliative == 6) {
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
                  } else if (_model.pagepalliative == 7) {
                    return Text(
                      'สรุปผลประเมิน',
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
                  } else {
                    return Container(
                      width: 0.0,
                      height: 0.0,
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

                _model.pagepalliative = 1;
                safeSetState(() {});
                FFAppState().exer = '';
                safeSetState(() {});
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
        centerTitle: true,
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
        child: Builder(
          builder: (context) {
            if (_model.pagepalliative == 1) {
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
                    ],
                  ),
                  Expanded(
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 0.0),
                      child: ListView(
                        padding: const EdgeInsets.fromLTRB(
                          0,
                          16.0,
                          0,
                          24.0,
                        ),
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(0.0, -1.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                    'assets/images/move.png',
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
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          RichText(
                            textScaler: MediaQuery.of(context).textScaler,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'การเคลื่อนไหว',
                                  style: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .titleLargeFamily,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        letterSpacing: 0.0,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .titleLargeIsCustom,
                                      ),
                                )
                              ],
                              style: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .titleMediumFamily,
                                    letterSpacing: 0.0,
                                    lineHeight: 1.8,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .titleMediumIsCustom,
                                  ),
                            ),
                            textAlign: TextAlign.center,
                          ),
                          MasonryGridView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            gridDelegate:
                                SliverSimpleGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: () {
                                if (MediaQuery.sizeOf(context).width <
                                    kBreakpointSmall) {
                                  return 1;
                                } else if (MediaQuery.sizeOf(context).width <
                                    kBreakpointMedium) {
                                  return 1;
                                } else if (MediaQuery.sizeOf(context).width <
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
                              } else if (MediaQuery.sizeOf(context).width <
                                  kBreakpointMedium) {
                                return 8.0;
                              } else if (MediaQuery.sizeOf(context).width <
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
                              } else if (MediaQuery.sizeOf(context).width <
                                  kBreakpointMedium) {
                                return 8.0;
                              } else if (MediaQuery.sizeOf(context).width <
                                  kBreakpointLarge) {
                                return 16.0;
                              } else {
                                return 16.0;
                              }
                            }(),
                            itemCount: 6,
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
                                                'bloodpageOnActionTriggerAnimation1'] !=
                                            null) {
                                          animationsMap[
                                                  'bloodpageOnActionTriggerAnimation1']!
                                              .controller
                                              .forward(from: 0.0);
                                        }
                                        await Future.delayed(
                                          const Duration(
                                            milliseconds: 100,
                                          ),
                                        );
                                        FFAppState().exer = '1';
                                        safeSetState(() {});
                                        _model.pagepalliative = 2;
                                        safeSetState(() {});
                                      },
                                      child: wrapWithModel(
                                        model: _model.bloodpageModel1,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: const BloodpageWidget(
                                          text: 'ปกติ',
                                          exer: '1',
                                        ),
                                      ),
                                    ).animateOnActionTrigger(
                                      animationsMap[
                                          'bloodpageOnActionTriggerAnimation1']!,
                                    ),
                                () => InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        if (animationsMap[
                                                'bloodpageOnActionTriggerAnimation2'] !=
                                            null) {
                                          animationsMap[
                                                  'bloodpageOnActionTriggerAnimation2']!
                                              .controller
                                              .forward(from: 0.0);
                                        }
                                        await Future.delayed(
                                          const Duration(
                                            milliseconds: 100,
                                          ),
                                        );
                                        FFAppState().exer = '2';
                                        safeSetState(() {});
                                        _model.pagepalliative = 2;
                                        safeSetState(() {});
                                      },
                                      child: wrapWithModel(
                                        model: _model.bloodpageModel2,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: const BloodpageWidget(
                                          text: 'ความสามารถลดลง',
                                          exer: '2',
                                        ),
                                      ),
                                    ).animateOnActionTrigger(
                                      animationsMap[
                                          'bloodpageOnActionTriggerAnimation2']!,
                                    ),
                                () => InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        if (animationsMap[
                                                'bloodpageOnActionTriggerAnimation3'] !=
                                            null) {
                                          animationsMap[
                                                  'bloodpageOnActionTriggerAnimation3']!
                                              .controller
                                              .forward(from: 0.0);
                                        }
                                        await Future.delayed(
                                          const Duration(
                                            milliseconds: 100,
                                          ),
                                        );
                                        FFAppState().exer = '3';
                                        safeSetState(() {});
                                        _model.pagepalliative = 2;
                                        safeSetState(() {});
                                      },
                                      child: wrapWithModel(
                                        model: _model.bloodpageModel3,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: const BloodpageWidget(
                                          text: 'นั่ง/นอน เป็นส่วนใหญ่',
                                          exer: '3',
                                        ),
                                      ),
                                    ).animateOnActionTrigger(
                                      animationsMap[
                                          'bloodpageOnActionTriggerAnimation3']!,
                                    ),
                                () => InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        if (animationsMap[
                                                'bloodpageOnActionTriggerAnimation4'] !=
                                            null) {
                                          animationsMap[
                                                  'bloodpageOnActionTriggerAnimation4']!
                                              .controller
                                              .forward(from: 0.0);
                                        }
                                        await Future.delayed(
                                          const Duration(
                                            milliseconds: 100,
                                          ),
                                        );
                                        FFAppState().exer = '4';
                                        safeSetState(() {});
                                        _model.pagepalliative = 2;
                                        safeSetState(() {});
                                      },
                                      child: wrapWithModel(
                                        model: _model.bloodpageModel4,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: const BloodpageWidget(
                                          text: 'นอนอยู่บนเตียงเป็นส่วนใหญ่',
                                          exer: '4',
                                        ),
                                      ),
                                    ).animateOnActionTrigger(
                                      animationsMap[
                                          'bloodpageOnActionTriggerAnimation4']!,
                                    ),
                                () => InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        if (animationsMap[
                                                'bloodpageOnActionTriggerAnimation5'] !=
                                            null) {
                                          animationsMap[
                                                  'bloodpageOnActionTriggerAnimation5']!
                                              .controller
                                              .forward(from: 0.0);
                                        }
                                        await Future.delayed(
                                          const Duration(
                                            milliseconds: 100,
                                          ),
                                        );
                                        FFAppState().exer = '5';
                                        safeSetState(() {});
                                        _model.pagepalliative = 2;
                                        safeSetState(() {});
                                      },
                                      child: wrapWithModel(
                                        model: _model.bloodpageModel5,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: const BloodpageWidget(
                                          text: 'นอนอยู่บนเตียงตลอดเวลา',
                                          exer: '5',
                                        ),
                                      ),
                                    ).animateOnActionTrigger(
                                      animationsMap[
                                          'bloodpageOnActionTriggerAnimation5']!,
                                    ),
                                () => InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        if (animationsMap[
                                                'bloodpageOnActionTriggerAnimation6'] !=
                                            null) {
                                          animationsMap[
                                                  'bloodpageOnActionTriggerAnimation6']!
                                              .controller
                                              .forward(from: 0.0);
                                        }
                                        await Future.delayed(
                                          const Duration(
                                            milliseconds: 100,
                                          ),
                                        );
                                        FFAppState().exer = '6';
                                        safeSetState(() {});
                                        _model.pagepalliative = 2;
                                        safeSetState(() {});
                                      },
                                      child: wrapWithModel(
                                        model: _model.bloodpageModel6,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: const BloodpageWidget(
                                          text: 'เสียชีวิต',
                                          exer: '6',
                                        ),
                                      ),
                                    ).animateOnActionTrigger(
                                      animationsMap[
                                          'bloodpageOnActionTriggerAnimation6']!,
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
            } else if (_model.pagepalliative == 2) {
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
                    ],
                  ),
                  Expanded(
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 0.0),
                      child: ListView(
                        padding: const EdgeInsets.fromLTRB(
                          0,
                          16.0,
                          0,
                          16.0,
                        ),
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(0.0, -1.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                    'assets/images/grow.png',
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
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          RichText(
                            textScaler: MediaQuery.of(context).textScaler,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'การปฏิบัติกิจกรรม ',
                                  style: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .titleLargeFamily,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        letterSpacing: 0.0,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .titleLargeIsCustom,
                                      ),
                                )
                              ],
                              style: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .titleMediumFamily,
                                    letterSpacing: 0.0,
                                    lineHeight: 1.8,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .titleMediumIsCustom,
                                  ),
                            ),
                            textAlign: TextAlign.center,
                          ),
                          MasonryGridView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            gridDelegate:
                                SliverSimpleGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: () {
                                if (MediaQuery.sizeOf(context).width <
                                    kBreakpointSmall) {
                                  return 1;
                                } else if (MediaQuery.sizeOf(context).width <
                                    kBreakpointMedium) {
                                  return 1;
                                } else if (MediaQuery.sizeOf(context).width <
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
                              } else if (MediaQuery.sizeOf(context).width <
                                  kBreakpointMedium) {
                                return 8.0;
                              } else if (MediaQuery.sizeOf(context).width <
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
                              } else if (MediaQuery.sizeOf(context).width <
                                  kBreakpointMedium) {
                                return 8.0;
                              } else if (MediaQuery.sizeOf(context).width <
                                  kBreakpointLarge) {
                                return 16.0;
                              } else {
                                return 16.0;
                              }
                            }(),
                            itemCount: 7,
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
                                                'bloodpageOnActionTriggerAnimation7'] !=
                                            null) {
                                          animationsMap[
                                                  'bloodpageOnActionTriggerAnimation7']!
                                              .controller
                                              .forward(from: 0.0);
                                        }
                                        await Future.delayed(
                                          const Duration(
                                            milliseconds: 100,
                                          ),
                                        );
                                        FFAppState().exer = '1';
                                        safeSetState(() {});
                                        _model.pagepalliative = 3;
                                        safeSetState(() {});
                                      },
                                      child: wrapWithModel(
                                        model: _model.bloodpageModel7,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: const BloodpageWidget(
                                          text: 'ทำกิจกรรมและทำงานได้ปกติ',
                                          exer: '1',
                                        ),
                                      ),
                                    ).animateOnActionTrigger(
                                      animationsMap[
                                          'bloodpageOnActionTriggerAnimation7']!,
                                    ),
                                () => InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        if (animationsMap[
                                                'bloodpageOnActionTriggerAnimation8'] !=
                                            null) {
                                          animationsMap[
                                                  'bloodpageOnActionTriggerAnimation8']!
                                              .controller
                                              .forward(from: 0.0);
                                        }
                                        await Future.delayed(
                                          const Duration(
                                            milliseconds: 100,
                                          ),
                                        );
                                        FFAppState().exer = '2';
                                        safeSetState(() {});
                                        _model.pagepalliative = 3;
                                        safeSetState(() {});
                                      },
                                      child: wrapWithModel(
                                        model: _model.bloodpageModel8,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: const BloodpageWidget(
                                          text:
                                              'ต้องออกแรงอย่างมากในการทำกิจกรรมตามปกติ',
                                          exer: '2',
                                        ),
                                      ),
                                    ).animateOnActionTrigger(
                                      animationsMap[
                                          'bloodpageOnActionTriggerAnimation8']!,
                                    ),
                                () => InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        if (animationsMap[
                                                'bloodpageOnActionTriggerAnimation9'] !=
                                            null) {
                                          animationsMap[
                                                  'bloodpageOnActionTriggerAnimation9']!
                                              .controller
                                              .forward(from: 0.0);
                                        }
                                        await Future.delayed(
                                          const Duration(
                                            milliseconds: 100,
                                          ),
                                        );
                                        FFAppState().exer = '3';
                                        safeSetState(() {});
                                        _model.pagepalliative = 3;
                                        safeSetState(() {});
                                      },
                                      child: wrapWithModel(
                                        model: _model.bloodpageModel9,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: const BloodpageWidget(
                                          text: 'ไม่สามารถทำงานได้ตามปกติ',
                                          exer: '3',
                                        ),
                                      ),
                                    ).animateOnActionTrigger(
                                      animationsMap[
                                          'bloodpageOnActionTriggerAnimation9']!,
                                    ),
                                () => InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        if (animationsMap[
                                                'bloodpageOnActionTriggerAnimation10'] !=
                                            null) {
                                          animationsMap[
                                                  'bloodpageOnActionTriggerAnimation10']!
                                              .controller
                                              .forward(from: 0.0);
                                        }
                                        await Future.delayed(
                                          const Duration(
                                            milliseconds: 100,
                                          ),
                                        );
                                        FFAppState().exer = '4';
                                        safeSetState(() {});
                                        _model.pagepalliative = 3;
                                        safeSetState(() {});
                                      },
                                      child: wrapWithModel(
                                        model: _model.bloodpageModel10,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: const BloodpageWidget(
                                          text:
                                              'ไม่สามารถทำงานอดิเรกหรืองานบ้านได้',
                                          exer: '4',
                                        ),
                                      ),
                                    ).animateOnActionTrigger(
                                      animationsMap[
                                          'bloodpageOnActionTriggerAnimation10']!,
                                    ),
                                () => InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        if (animationsMap[
                                                'bloodpageOnActionTriggerAnimation11'] !=
                                            null) {
                                          animationsMap[
                                                  'bloodpageOnActionTriggerAnimation11']!
                                              .controller
                                              .forward(from: 0.0);
                                        }
                                        await Future.delayed(
                                          const Duration(
                                            milliseconds: 100,
                                          ),
                                        );
                                        FFAppState().exer = '5';
                                        safeSetState(() {});
                                        _model.pagepalliative = 3;
                                        safeSetState(() {});
                                      },
                                      child: wrapWithModel(
                                        model: _model.bloodpageModel11,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: const BloodpageWidget(
                                          text: 'ไม่สามารถทำงานได้เลย',
                                          exer: '5',
                                        ),
                                      ),
                                    ).animateOnActionTrigger(
                                      animationsMap[
                                          'bloodpageOnActionTriggerAnimation11']!,
                                    ),
                                () => InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        if (animationsMap[
                                                'bloodpageOnActionTriggerAnimation12'] !=
                                            null) {
                                          animationsMap[
                                                  'bloodpageOnActionTriggerAnimation12']!
                                              .controller
                                              .forward(from: 0.0);
                                        }
                                        await Future.delayed(
                                          const Duration(
                                            milliseconds: 100,
                                          ),
                                        );
                                        FFAppState().exer = '6';
                                        safeSetState(() {});
                                        _model.pagepalliative = 3;
                                        safeSetState(() {});
                                      },
                                      child: wrapWithModel(
                                        model: _model.bloodpageModel12,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: const BloodpageWidget(
                                          text: 'ทำกิจกรรมได้น้อยมาก',
                                          exer: '6',
                                        ),
                                      ),
                                    ).animateOnActionTrigger(
                                      animationsMap[
                                          'bloodpageOnActionTriggerAnimation12']!,
                                    ),
                                () => InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        if (animationsMap[
                                                'bloodpageOnActionTriggerAnimation13'] !=
                                            null) {
                                          animationsMap[
                                                  'bloodpageOnActionTriggerAnimation13']!
                                              .controller
                                              .forward(from: 0.0);
                                        }
                                        await Future.delayed(
                                          const Duration(
                                            milliseconds: 100,
                                          ),
                                        );
                                        FFAppState().exer = '7';
                                        safeSetState(() {});
                                        _model.pagepalliative = 3;
                                        safeSetState(() {});
                                      },
                                      child: wrapWithModel(
                                        model: _model.bloodpageModel13,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: const BloodpageWidget(
                                          text: 'ไม่สามารถทำกิจกรรมใดๆ',
                                          exer: '7',
                                        ),
                                      ),
                                    ).animateOnActionTrigger(
                                      animationsMap[
                                          'bloodpageOnActionTriggerAnimation13']!,
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
            } else if (_model.pagepalliative == 3) {
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
                    ],
                  ),
                  Expanded(
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 0.0),
                      child: ListView(
                        padding: const EdgeInsets.fromLTRB(
                          0,
                          16.0,
                          0,
                          16.0,
                        ),
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(0.0, -1.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                    'assets/images/hurt.png',
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
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          RichText(
                            textScaler: MediaQuery.of(context).textScaler,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'ลักษณะอาการของโรคในปัจจุบัน',
                                  style: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .titleLargeFamily,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        letterSpacing: 0.0,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .titleLargeIsCustom,
                                      ),
                                )
                              ],
                              style: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .titleMediumFamily,
                                    letterSpacing: 0.0,
                                    lineHeight: 1.8,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .titleMediumIsCustom,
                                  ),
                            ),
                            textAlign: TextAlign.center,
                          ),
                          MasonryGridView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            gridDelegate:
                                SliverSimpleGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: () {
                                if (MediaQuery.sizeOf(context).width <
                                    kBreakpointSmall) {
                                  return 1;
                                } else if (MediaQuery.sizeOf(context).width <
                                    kBreakpointMedium) {
                                  return 1;
                                } else if (MediaQuery.sizeOf(context).width <
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
                              } else if (MediaQuery.sizeOf(context).width <
                                  kBreakpointMedium) {
                                return 8.0;
                              } else if (MediaQuery.sizeOf(context).width <
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
                              } else if (MediaQuery.sizeOf(context).width <
                                  kBreakpointMedium) {
                                return 8.0;
                              } else if (MediaQuery.sizeOf(context).width <
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
                                                'bloodpageOnActionTriggerAnimation14'] !=
                                            null) {
                                          animationsMap[
                                                  'bloodpageOnActionTriggerAnimation14']!
                                              .controller
                                              .forward(from: 0.0);
                                        }
                                        await Future.delayed(
                                          const Duration(
                                            milliseconds: 100,
                                          ),
                                        );
                                        FFAppState().exer = '1';
                                        safeSetState(() {});
                                        _model.pagepalliative = 4;
                                        safeSetState(() {});
                                      },
                                      child: wrapWithModel(
                                        model: _model.bloodpageModel14,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: const BloodpageWidget(
                                          text: 'ไม่มีอาการของโรค',
                                          exer: '1',
                                        ),
                                      ),
                                    ).animateOnActionTrigger(
                                      animationsMap[
                                          'bloodpageOnActionTriggerAnimation14']!,
                                    ),
                                () => InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        if (animationsMap[
                                                'bloodpageOnActionTriggerAnimation15'] !=
                                            null) {
                                          animationsMap[
                                                  'bloodpageOnActionTriggerAnimation15']!
                                              .controller
                                              .forward(from: 0.0);
                                        }
                                        await Future.delayed(
                                          const Duration(
                                            milliseconds: 100,
                                          ),
                                        );
                                        FFAppState().exer = '2';
                                        safeSetState(() {});
                                        _model.pagepalliative = 4;
                                        safeSetState(() {});
                                      },
                                      child: wrapWithModel(
                                        model: _model.bloodpageModel15,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: const BloodpageWidget(
                                          text: 'มีอาการของโรค บางประการ',
                                          exer: '2',
                                        ),
                                      ),
                                    ).animateOnActionTrigger(
                                      animationsMap[
                                          'bloodpageOnActionTriggerAnimation15']!,
                                    ),
                                () => InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        if (animationsMap[
                                                'bloodpageOnActionTriggerAnimation16'] !=
                                            null) {
                                          animationsMap[
                                                  'bloodpageOnActionTriggerAnimation16']!
                                              .controller
                                              .forward(from: 0.0);
                                        }
                                        await Future.delayed(
                                          const Duration(
                                            milliseconds: 100,
                                          ),
                                        );
                                        FFAppState().exer = '3';
                                        safeSetState(() {});
                                        _model.pagepalliative = 4;
                                        safeSetState(() {});
                                      },
                                      child: wrapWithModel(
                                        model: _model.bloodpageModel16,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: const BloodpageWidget(
                                          text: 'นั่ง/นอน เป็นส่วนใหญ่',
                                          exer: '3',
                                        ),
                                      ),
                                    ).animateOnActionTrigger(
                                      animationsMap[
                                          'bloodpageOnActionTriggerAnimation16']!,
                                    ),
                                () => InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        if (animationsMap[
                                                'bloodpageOnActionTriggerAnimation17'] !=
                                            null) {
                                          animationsMap[
                                                  'bloodpageOnActionTriggerAnimation17']!
                                              .controller
                                              .forward(from: 0.0);
                                        }
                                        await Future.delayed(
                                          const Duration(
                                            milliseconds: 100,
                                          ),
                                        );
                                        FFAppState().exer = '4';
                                        safeSetState(() {});
                                        _model.pagepalliative = 4;
                                        safeSetState(() {});
                                      },
                                      child: wrapWithModel(
                                        model: _model.bloodpageModel17,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: const BloodpageWidget(
                                          text: 'มีการลุกลามของโรค',
                                          exer: '4',
                                        ),
                                      ),
                                    ).animateOnActionTrigger(
                                      animationsMap[
                                          'bloodpageOnActionTriggerAnimation17']!,
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
            } else if (_model.pagepalliative == 4) {
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
                    ],
                  ),
                  Expanded(
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 0.0),
                      child: ListView(
                        padding: const EdgeInsets.fromLTRB(
                          0,
                          16.0,
                          0,
                          16.0,
                        ),
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(0.0, -1.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                    'assets/images/gotoilet.png',
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
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          RichText(
                            textScaler: MediaQuery.of(context).textScaler,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text:
                                      'การทำกิจวัตรประจำวัน การต้องการความช่วยเหลือ',
                                  style: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .titleLargeFamily,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        letterSpacing: 0.0,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .titleLargeIsCustom,
                                      ),
                                )
                              ],
                              style: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .titleMediumFamily,
                                    letterSpacing: 0.0,
                                    lineHeight: 1.8,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .titleMediumIsCustom,
                                  ),
                            ),
                            textAlign: TextAlign.center,
                          ),
                          MasonryGridView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            gridDelegate:
                                SliverSimpleGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: () {
                                if (MediaQuery.sizeOf(context).width <
                                    kBreakpointSmall) {
                                  return 1;
                                } else if (MediaQuery.sizeOf(context).width <
                                    kBreakpointMedium) {
                                  return 1;
                                } else if (MediaQuery.sizeOf(context).width <
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
                              } else if (MediaQuery.sizeOf(context).width <
                                  kBreakpointMedium) {
                                return 8.0;
                              } else if (MediaQuery.sizeOf(context).width <
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
                              } else if (MediaQuery.sizeOf(context).width <
                                  kBreakpointMedium) {
                                return 8.0;
                              } else if (MediaQuery.sizeOf(context).width <
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
                                                'bloodpageOnActionTriggerAnimation18'] !=
                                            null) {
                                          animationsMap[
                                                  'bloodpageOnActionTriggerAnimation18']!
                                              .controller
                                              .forward(from: 0.0);
                                        }
                                        await Future.delayed(
                                          const Duration(
                                            milliseconds: 100,
                                          ),
                                        );
                                        FFAppState().exer = '1';
                                        safeSetState(() {});
                                        _model.pagepalliative = 5;
                                        safeSetState(() {});
                                      },
                                      child: wrapWithModel(
                                        model: _model.bloodpageModel18,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: const BloodpageWidget(
                                          text: 'ทำได้เอง',
                                          exer: '1',
                                        ),
                                      ),
                                    ).animateOnActionTrigger(
                                      animationsMap[
                                          'bloodpageOnActionTriggerAnimation18']!,
                                    ),
                                () => InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        if (animationsMap[
                                                'bloodpageOnActionTriggerAnimation19'] !=
                                            null) {
                                          animationsMap[
                                                  'bloodpageOnActionTriggerAnimation19']!
                                              .controller
                                              .forward(from: 0.0);
                                        }
                                        await Future.delayed(
                                          const Duration(
                                            milliseconds: 100,
                                          ),
                                        );
                                        FFAppState().exer = '2';
                                        safeSetState(() {});
                                        _model.pagepalliative = 5;
                                        safeSetState(() {});
                                      },
                                      child: wrapWithModel(
                                        model: _model.bloodpageModel19,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: const BloodpageWidget(
                                          text: 'เป็นบางครั้ง/บางเรื่อง',
                                          exer: '2',
                                        ),
                                      ),
                                    ).animateOnActionTrigger(
                                      animationsMap[
                                          'bloodpageOnActionTriggerAnimation19']!,
                                    ),
                                () => InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        if (animationsMap[
                                                'bloodpageOnActionTriggerAnimation20'] !=
                                            null) {
                                          animationsMap[
                                                  'bloodpageOnActionTriggerAnimation20']!
                                              .controller
                                              .forward(from: 0.0);
                                        }
                                        await Future.delayed(
                                          const Duration(
                                            milliseconds: 100,
                                          ),
                                        );
                                        FFAppState().exer = '3';
                                        safeSetState(() {});
                                        _model.pagepalliative = 5;
                                        safeSetState(() {});
                                      },
                                      child: wrapWithModel(
                                        model: _model.bloodpageModel20,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: const BloodpageWidget(
                                          text: 'มากขึ้น',
                                          exer: '3',
                                        ),
                                      ),
                                    ).animateOnActionTrigger(
                                      animationsMap[
                                          'bloodpageOnActionTriggerAnimation20']!,
                                    ),
                                () => InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        if (animationsMap[
                                                'bloodpageOnActionTriggerAnimation21'] !=
                                            null) {
                                          animationsMap[
                                                  'bloodpageOnActionTriggerAnimation21']!
                                              .controller
                                              .forward(from: 0.0);
                                        }
                                        await Future.delayed(
                                          const Duration(
                                            milliseconds: 100,
                                          ),
                                        );
                                        FFAppState().exer = '4';
                                        safeSetState(() {});
                                        _model.pagepalliative = 5;
                                        safeSetState(() {});
                                      },
                                      child: wrapWithModel(
                                        model: _model.bloodpageModel21,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: const BloodpageWidget(
                                          text: 'มีการลุกลามของโรค',
                                          exer: '4',
                                        ),
                                      ),
                                    ).animateOnActionTrigger(
                                      animationsMap[
                                          'bloodpageOnActionTriggerAnimation21']!,
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
            } else if (_model.pagepalliative == 5) {
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
                    ],
                  ),
                  Expanded(
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 0.0),
                      child: ListView(
                        padding: const EdgeInsets.fromLTRB(
                          0,
                          16.0,
                          0,
                          16.0,
                        ),
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(0.0, -1.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                    'assets/images/EATFOOOD.png',
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
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          RichText(
                            textScaler: MediaQuery.of(context).textScaler,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'การรับประทานอาหาร',
                                  style: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .titleLargeFamily,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        letterSpacing: 0.0,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .titleLargeIsCustom,
                                      ),
                                )
                              ],
                              style: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .titleMediumFamily,
                                    letterSpacing: 0.0,
                                    lineHeight: 1.8,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .titleMediumIsCustom,
                                  ),
                            ),
                            textAlign: TextAlign.center,
                          ),
                          MasonryGridView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            gridDelegate:
                                SliverSimpleGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: () {
                                if (MediaQuery.sizeOf(context).width <
                                    kBreakpointSmall) {
                                  return 1;
                                } else if (MediaQuery.sizeOf(context).width <
                                    kBreakpointMedium) {
                                  return 1;
                                } else if (MediaQuery.sizeOf(context).width <
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
                              } else if (MediaQuery.sizeOf(context).width <
                                  kBreakpointMedium) {
                                return 8.0;
                              } else if (MediaQuery.sizeOf(context).width <
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
                              } else if (MediaQuery.sizeOf(context).width <
                                  kBreakpointMedium) {
                                return 8.0;
                              } else if (MediaQuery.sizeOf(context).width <
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
                                                'bloodpageOnActionTriggerAnimation22'] !=
                                            null) {
                                          animationsMap[
                                                  'bloodpageOnActionTriggerAnimation22']!
                                              .controller
                                              .forward(from: 0.0);
                                        }
                                        await Future.delayed(
                                          const Duration(
                                            milliseconds: 100,
                                          ),
                                        );
                                        FFAppState().exer = '1';
                                        safeSetState(() {});
                                        _model.pagepalliative = 6;
                                        safeSetState(() {});
                                      },
                                      child: wrapWithModel(
                                        model: _model.bloodpageModel22,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: const BloodpageWidget(
                                          text: 'ปกติ',
                                          exer: '1',
                                        ),
                                      ),
                                    ).animateOnActionTrigger(
                                      animationsMap[
                                          'bloodpageOnActionTriggerAnimation22']!,
                                    ),
                                () => InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        if (animationsMap[
                                                'bloodpageOnActionTriggerAnimation23'] !=
                                            null) {
                                          animationsMap[
                                                  'bloodpageOnActionTriggerAnimation23']!
                                              .controller
                                              .forward(from: 0.0);
                                        }
                                        await Future.delayed(
                                          const Duration(
                                            milliseconds: 100,
                                          ),
                                        );
                                        FFAppState().exer = '2';
                                        safeSetState(() {});
                                        _model.pagepalliative = 6;
                                        safeSetState(() {});
                                      },
                                      child: wrapWithModel(
                                        model: _model.bloodpageModel23,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: const BloodpageWidget(
                                          text: 'ปกติ / ลดลง',
                                          exer: '2',
                                        ),
                                      ),
                                    ).animateOnActionTrigger(
                                      animationsMap[
                                          'bloodpageOnActionTriggerAnimation23']!,
                                    ),
                                () => InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        if (animationsMap[
                                                'bloodpageOnActionTriggerAnimation24'] !=
                                            null) {
                                          animationsMap[
                                                  'bloodpageOnActionTriggerAnimation24']!
                                              .controller
                                              .forward(from: 0.0);
                                        }
                                        await Future.delayed(
                                          const Duration(
                                            milliseconds: 100,
                                          ),
                                        );
                                        FFAppState().exer = '3';
                                        safeSetState(() {});
                                        _model.pagepalliative = 6;
                                        safeSetState(() {});
                                      },
                                      child: wrapWithModel(
                                        model: _model.bloodpageModel24,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: const BloodpageWidget(
                                          text: 'จิ๊บน้ำได้เล็กน้อย',
                                          exer: '3',
                                        ),
                                      ),
                                    ).animateOnActionTrigger(
                                      animationsMap[
                                          'bloodpageOnActionTriggerAnimation24']!,
                                    ),
                                () => InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        if (animationsMap[
                                                'bloodpageOnActionTriggerAnimation25'] !=
                                            null) {
                                          animationsMap[
                                                  'bloodpageOnActionTriggerAnimation25']!
                                              .controller
                                              .forward(from: 0.0);
                                        }
                                        await Future.delayed(
                                          const Duration(
                                            milliseconds: 100,
                                          ),
                                        );
                                        FFAppState().exer = '4';
                                        safeSetState(() {});
                                        _model.pagepalliative = 6;
                                        safeSetState(() {});
                                      },
                                      child: wrapWithModel(
                                        model: _model.bloodpageModel25,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: const BloodpageWidget(
                                          text: 'รับประทานทางปากไม่ได้',
                                          exer: '4',
                                        ),
                                      ),
                                    ).animateOnActionTrigger(
                                      animationsMap[
                                          'bloodpageOnActionTriggerAnimation25']!,
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
            } else if (_model.pagepalliative == 6) {
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
                              16.0, 8.0, 16.0, 0.0),
                          child: ListView(
                            padding: const EdgeInsets.fromLTRB(
                              0,
                              16.0,
                              0,
                              16.0,
                            ),
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Align(
                                    alignment: const AlignmentDirectional(0.0, -1.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.asset(
                                        'assets/images/watchTV.png',
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
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              RichText(
                                textScaler: MediaQuery.of(context).textScaler,
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'ระดับความรู้สึกตัว',
                                      style: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .titleLargeFamily,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .titleLargeIsCustom,
                                          ),
                                    )
                                  ],
                                  style: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .titleMediumFamily,
                                        letterSpacing: 0.0,
                                        lineHeight: 1.8,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .titleMediumIsCustom,
                                      ),
                                ),
                                textAlign: TextAlign.center,
                              ),
                              MasonryGridView.builder(
                                physics: const NeverScrollableScrollPhysics(),
                                gridDelegate:
                                    SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: () {
                                    if (MediaQuery.sizeOf(context).width <
                                        kBreakpointSmall) {
                                      return 1;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointMedium) {
                                      return 1;
                                    } else if (MediaQuery.sizeOf(context)
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
                                  } else if (MediaQuery.sizeOf(context).width <
                                      kBreakpointMedium) {
                                    return 8.0;
                                  } else if (MediaQuery.sizeOf(context).width <
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
                                  } else if (MediaQuery.sizeOf(context).width <
                                      kBreakpointMedium) {
                                    return 8.0;
                                  } else if (MediaQuery.sizeOf(context).width <
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
                                                    'bloodpageOnActionTriggerAnimation26'] !=
                                                null) {
                                              animationsMap[
                                                      'bloodpageOnActionTriggerAnimation26']!
                                                  .controller
                                                  .forward(from: 0.0);
                                            }
                                            await Future.delayed(
                                              const Duration(
                                                milliseconds: 100,
                                              ),
                                            );
                                            FFAppState().exer = '1';
                                            safeSetState(() {});
                                          },
                                          child: wrapWithModel(
                                            model: _model.bloodpageModel26,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: const BloodpageWidget(
                                              text: 'รู้สึกตัวดี',
                                              exer: '1',
                                            ),
                                          ),
                                        ).animateOnActionTrigger(
                                          animationsMap[
                                              'bloodpageOnActionTriggerAnimation26']!,
                                        ),
                                    () => InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            if (animationsMap[
                                                    'bloodpageOnActionTriggerAnimation27'] !=
                                                null) {
                                              animationsMap[
                                                      'bloodpageOnActionTriggerAnimation27']!
                                                  .controller
                                                  .forward(from: 0.0);
                                            }
                                            await Future.delayed(
                                              const Duration(
                                                milliseconds: 100,
                                              ),
                                            );
                                            FFAppState().exer = '2';
                                            safeSetState(() {});
                                          },
                                          child: wrapWithModel(
                                            model: _model.bloodpageModel27,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: const BloodpageWidget(
                                              text: 'รู้สึกตัวดี หรือสับสน',
                                              exer: '2',
                                            ),
                                          ),
                                        ).animateOnActionTrigger(
                                          animationsMap[
                                              'bloodpageOnActionTriggerAnimation27']!,
                                        ),
                                    () => InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            if (animationsMap[
                                                    'bloodpageOnActionTriggerAnimation28'] !=
                                                null) {
                                              animationsMap[
                                                      'bloodpageOnActionTriggerAnimation28']!
                                                  .controller
                                                  .forward(from: 0.0);
                                            }
                                            await Future.delayed(
                                              const Duration(
                                                milliseconds: 100,
                                              ),
                                            );
                                            FFAppState().exer = '3';
                                            safeSetState(() {});
                                          },
                                          child: wrapWithModel(
                                            model: _model.bloodpageModel28,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: const BloodpageWidget(
                                              text:
                                                  'รู้สึกตัวดี หรือง่วงซึม มีหรือไม่มีอาการสับสน',
                                              exer: '3',
                                            ),
                                          ),
                                        ).animateOnActionTrigger(
                                          animationsMap[
                                              'bloodpageOnActionTriggerAnimation28']!,
                                        ),
                                    () => InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            if (animationsMap[
                                                    'bloodpageOnActionTriggerAnimation29'] !=
                                                null) {
                                              animationsMap[
                                                      'bloodpageOnActionTriggerAnimation29']!
                                                  .controller
                                                  .forward(from: 0.0);
                                            }
                                            await Future.delayed(
                                              const Duration(
                                                milliseconds: 100,
                                              ),
                                            );
                                            FFAppState().exer = '4';
                                            safeSetState(() {});
                                          },
                                          child: wrapWithModel(
                                            model: _model.bloodpageModel29,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: const BloodpageWidget(
                                              text:
                                                  'ง่วงซึมหรือไม่รู้สึกตัว มีหรือไม่มีอาการสับสน',
                                              exer: '4',
                                            ),
                                          ),
                                        ).animateOnActionTrigger(
                                          animationsMap[
                                              'bloodpageOnActionTriggerAnimation29']!,
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
                        _model.pagepalliative = 7;
                        safeSetState(() {});
                      },
                      child: wrapWithModel(
                        model: _model.startAsBottomModel1,
                        updateCallback: () => safeSetState(() {}),
                        child: const StartAsBottomWidget(
                          text: 'บันทึก',
                        ),
                      ),
                    ),
                  ),
                ],
              );
            } else if (_model.pagepalliative == 7) {
              return Stack(
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 0.0),
                    child: ListView(
                      padding: const EdgeInsets.fromLTRB(
                        0,
                        16.0,
                        0,
                        104.0,
                      ),
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
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
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 4.0, 0.0, 0.0),
                                          child: FaIcon(
                                            FontAwesomeIcons.solidFile,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: 16.0,
                                          ),
                                        ),
                                        Text(
                                          'สรุปผลโดยรวมผู้ป่วย Palliative Care',
                                          style: FlutterFlowTheme.of(context)
                                              .titleSmall
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmallFamily,
                                                letterSpacing: 0.0,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .titleSmallIsCustom,
                                              ),
                                        ),
                                      ].divide(const SizedBox(width: 8.0)),
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
                                          'ผู้ป่วยอยู่ในระยะที่มีข้อจำกัดในการเคลื่อนไหวและการทำกิจวัตรประจำวันสูง มีภาวะโภชนาการที่น่าเป็นห่วง และต้องพึ่งพาผู้อื่นอย่างต่อเนื่อง แม้ว่ายังรับรู้และสื่อสารได้ แต่คุณภาพชีวิตโดยรวมลดลงอย่างชัดเจน ',
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
                                  ].divide(const SizedBox(height: 12.0)),
                                ),
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                borderRadius: BorderRadius.circular(24.0),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(valueOrDefault<double>(
                                  () {
                                    if (MediaQuery.sizeOf(context).width <
                                        kBreakpointSmall) {
                                      return 12.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointMedium) {
                                      return 12.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointLarge) {
                                      return 16.0;
                                    } else {
                                      return 16.0;
                                    }
                                  }(),
                                  0.0,
                                )),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 4.0, 0.0, 0.0),
                                          child: FaIcon(
                                            FontAwesomeIcons.solidFile,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: 16.0,
                                          ),
                                        ),
                                        Text(
                                          'ผลแบบประเมินผู้ป่วย Palliative Care',
                                          style: FlutterFlowTheme.of(context)
                                              .titleSmall
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmallFamily,
                                                letterSpacing: 0.0,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .titleSmallIsCustom,
                                              ),
                                        ),
                                      ].divide(const SizedBox(width: 8.0)),
                                    ),
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(16.0),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            width: 1.0,
                                          ),
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child: Text(
                                                    '1. การเคลื่อนไหว',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .labelSmall
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelSmallFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .labelSmallIsCustom,
                                                        ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 48.0,
                                                  child: VerticalDivider(
                                                    width: 1.0,
                                                    thickness: 1.0,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .alternate,
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Text(
                                                    'ความสามารถลดลง',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodySmall
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmallFamily,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodySmallIsCustom,
                                                        ),
                                                  ),
                                                ),
                                              ]
                                                  .divide(const SizedBox(width: 16.0))
                                                  .around(
                                                      const SizedBox(width: 16.0)),
                                            ),
                                            Divider(
                                              height: 1.0,
                                              thickness: 1.0,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child: Text(
                                                    '2. การปฏิบัติกิจกรรม ',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .labelSmall
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelSmallFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .labelSmallIsCustom,
                                                        ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 56.0,
                                                  child: VerticalDivider(
                                                    width: 1.0,
                                                    thickness: 1.0,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .alternate,
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Text(
                                                    'ต้องออกแรงอย่างมากในการทำกิจกรรมตามปกติ',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodySmall
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmallFamily,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodySmallIsCustom,
                                                        ),
                                                  ),
                                                ),
                                              ]
                                                  .divide(const SizedBox(width: 16.0))
                                                  .around(
                                                      const SizedBox(width: 16.0)),
                                            ),
                                            Divider(
                                              height: 1.0,
                                              thickness: 1.0,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child: Text(
                                                    '3. ลักษณะอาการของโรคในปัจจุบัน',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .labelSmall
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelSmallFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .labelSmallIsCustom,
                                                        ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 48.0,
                                                  child: VerticalDivider(
                                                    width: 1.0,
                                                    thickness: 1.0,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .alternate,
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Text(
                                                    'นั่ง/นอน เป็นส่วนใหญ่',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodySmall
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmallFamily,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodySmallIsCustom,
                                                        ),
                                                  ),
                                                ),
                                              ]
                                                  .divide(const SizedBox(width: 16.0))
                                                  .around(
                                                      const SizedBox(width: 16.0)),
                                            ),
                                            Divider(
                                              height: 1.0,
                                              thickness: 1.0,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child: Text(
                                                    '4. การทำกิจวัตรประจำวัน การต้องการความช่วยเหลือ',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .labelSmall
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelSmallFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .labelSmallIsCustom,
                                                        ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 56.0,
                                                  child: VerticalDivider(
                                                    width: 1.0,
                                                    thickness: 1.0,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .alternate,
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Text(
                                                    'มากขึ้น',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodySmall
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmallFamily,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodySmallIsCustom,
                                                        ),
                                                  ),
                                                ),
                                              ]
                                                  .divide(const SizedBox(width: 16.0))
                                                  .around(
                                                      const SizedBox(width: 16.0)),
                                            ),
                                            Divider(
                                              height: 1.0,
                                              thickness: 1.0,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child: Text(
                                                    '5. การรับประทานอาหาร',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .labelSmall
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelSmallFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .labelSmallIsCustom,
                                                        ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 48.0,
                                                  child: VerticalDivider(
                                                    width: 1.0,
                                                    thickness: 1.0,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .alternate,
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Text(
                                                    'จิ๊บน้ำได้เล็กน้อย',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodySmall
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmallFamily,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodySmallIsCustom,
                                                        ),
                                                  ),
                                                ),
                                              ]
                                                  .divide(const SizedBox(width: 16.0))
                                                  .around(
                                                      const SizedBox(width: 16.0)),
                                            ),
                                            Divider(
                                              height: 1.0,
                                              thickness: 1.0,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child: Text(
                                                    '6. ระดับความรู้สึกตัว',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .labelSmall
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelSmallFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .labelSmallIsCustom,
                                                        ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 48.0,
                                                  child: VerticalDivider(
                                                    width: 1.0,
                                                    thickness: 1.0,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .alternate,
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Text(
                                                    'รู้สึกตัวดี หรือสับสน',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodySmall
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmallFamily,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodySmallIsCustom,
                                                        ),
                                                  ),
                                                ),
                                              ]
                                                  .divide(const SizedBox(width: 16.0))
                                                  .around(
                                                      const SizedBox(width: 16.0)),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ].divide(const SizedBox(height: 12.0)),
                                ),
                              ),
                            ),
                          ].divide(const SizedBox(height: 12.0)),
                        ),
                      ].divide(const SizedBox(height: 24.0)),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.0, 1.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context
                            .pushNamed(InformationCommunityOneWidget.routeName);

                        _model.pagepalliative = 1;
                        safeSetState(() {});
                        FFAppState().exer = '';
                        safeSetState(() {});
                      },
                      child: wrapWithModel(
                        model: _model.startAsBottomModel2,
                        updateCallback: () => safeSetState(() {}),
                        child: const StartAsBottomWidget(
                          text: 'กลับสู่หน้าหลัก',
                        ),
                      ),
                    ),
                  ),
                ],
              );
            } else {
              return Container(
                width: 0.0,
                height: 0.0,
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
              );
            }
          },
        ),
      ),
    );
  }
}
