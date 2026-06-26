import '/assessmentform/barthel/index1/index1_widget.dart';
import '/assessmentform/barthel/index10/index10_widget.dart';
import '/assessmentform/barthel/index2/index2_widget.dart';
import '/assessmentform/barthel/index3/index3_widget.dart';
import '/assessmentform/barthel/index4/index4_widget.dart';
import '/assessmentform/barthel/index5/index5_widget.dart';
import '/assessmentform/barthel/index6/index6_widget.dart';
import '/assessmentform/barthel/index7/index7_widget.dart';
import '/assessmentform/barthel/index8/index8_widget.dart';
import '/assessmentform/barthel/index9/index9_widget.dart';
import '/assessmentform/thirtytree/widget/start_as_bottom/start_as_bottom_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
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
import 'a_d_l_everyday_model.dart';
export 'a_d_l_everyday_model.dart';

class ADLEverydayWidget extends StatefulWidget {
  const ADLEverydayWidget({
    super.key,
    this.pagebarthel,
  });

  final bool? pagebarthel;

  static String routeName = 'ADL_Everyday';
  static String routePath = '/aDLEveryday';

  @override
  State<ADLEverydayWidget> createState() => _ADLEverydayWidgetState();
}

class _ADLEverydayWidgetState extends State<ADLEverydayWidget>
    with TickerProviderStateMixin {
  late ADLEverydayModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ADLEverydayModel());

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
            begin: Offset(24.0, 0.0),
            end: Offset(0.0, 0.0),
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
            begin: Offset(24.0, 0.0),
            end: Offset(0.0, 0.0),
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
            begin: Offset(24.0, 0.0),
            end: Offset(0.0, 0.0),
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
            begin: Offset(24.0, 0.0),
            end: Offset(0.0, 0.0),
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
            begin: Offset(24.0, 0.0),
            end: Offset(0.0, 0.0),
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
            begin: Offset(24.0, 0.0),
            end: Offset(0.0, 0.0),
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
            begin: Offset(24.0, 0.0),
            end: Offset(0.0, 0.0),
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
            begin: Offset(24.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation9': AnimationInfo(
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
            begin: Offset(24.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation10': AnimationInfo(
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
            begin: Offset(24.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation11': AnimationInfo(
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
            begin: Offset(24.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'index1OnActionTriggerAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.bounceOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.02, 1.02),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'index1OnActionTriggerAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.bounceOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.02, 1.02),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'index1OnActionTriggerAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.bounceOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.02, 1.02),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'index2OnActionTriggerAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.bounceOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.02, 1.02),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'index2OnActionTriggerAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.bounceOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.02, 1.02),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'index2OnActionTriggerAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.bounceOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.02, 1.02),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'index2OnActionTriggerAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.bounceOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.02, 1.02),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'index3OnActionTriggerAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.bounceOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.02, 1.02),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'index3OnActionTriggerAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.bounceOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.02, 1.02),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'index4OnActionTriggerAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.bounceOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.02, 1.02),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'index4OnActionTriggerAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.bounceOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.02, 1.02),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'index4OnActionTriggerAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.bounceOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.02, 1.02),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'index5OnActionTriggerAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.bounceOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.02, 1.02),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'index5OnActionTriggerAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.bounceOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.02, 1.02),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'index6OnActionTriggerAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.bounceOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.0, 1.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'index6OnActionTriggerAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.bounceOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.0, 1.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'index6OnActionTriggerAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.bounceOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.0, 1.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'index6OnActionTriggerAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.bounceOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.0, 1.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'index7OnActionTriggerAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.bounceOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.02, 1.02),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'index7OnActionTriggerAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.bounceOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.02, 1.02),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'index7OnActionTriggerAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.bounceOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.02, 1.02),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'index8OnActionTriggerAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.bounceOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.02, 1.02),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'index8OnActionTriggerAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.bounceOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.02, 1.02),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'index8OnActionTriggerAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.bounceOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.02, 1.02),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'index9OnActionTriggerAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.bounceOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.02, 1.02),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'index9OnActionTriggerAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.bounceOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.02, 1.02),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'index9OnActionTriggerAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.bounceOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.02, 1.02),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'index10OnActionTriggerAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.bounceOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.02, 1.02),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'index10OnActionTriggerAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.bounceOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.02, 1.02),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'index10OnActionTriggerAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.bounceOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.02, 1.02),
            end: Offset(1.0, 1.0),
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
                if (_model.pagebarthel == 1) {
                  return InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context
                          .pushNamed(InformationCommunityOneWidget.routeName);

                      FFAppState().Bquest1 = '';
                      FFAppState().Bquest2 = '';
                      FFAppState().Bquest3 = '';
                      FFAppState().Bquest4 = '';
                      FFAppState().Bquest5 = '';
                      FFAppState().Bquest6 = '';
                      FFAppState().Bquest7 = '';
                      FFAppState().Bquest8 = '';
                      FFAppState().Bquest9 = '';
                      FFAppState().Bquest10 = '';
                      FFAppState().Bquest11 = '';
                      safeSetState(() {});
                      _model.pagebarthel = 1;
                      _model.voiceQuast1 = false;
                      _model.voiceQuast2 = false;
                      _model.voiceQuast3 = false;
                      _model.voiceQuast4 = false;
                      _model.voiceQuast5 = false;
                      _model.voiceQuast6 = false;
                      _model.voiceQuast7 = false;
                      _model.voiceQuast8 = false;
                      _model.voiceQuast9 = false;
                      _model.voiceQuast10 = false;
                      safeSetState(() {});
                    },
                    child: Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      size: 20.0,
                    ),
                  );
                } else if (_model.pagebarthel == 2) {
                  return InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      _model.pagebarthel = 1;
                      safeSetState(() {});
                    },
                    child: Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      size: 20.0,
                    ),
                  );
                } else if (_model.pagebarthel == 3) {
                  return InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      _model.pagebarthel = 2;
                      safeSetState(() {});
                    },
                    child: Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      size: 20.0,
                    ),
                  );
                } else if (_model.pagebarthel == 4) {
                  return InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      _model.pagebarthel = 3;
                      safeSetState(() {});
                    },
                    child: Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      size: 20.0,
                    ),
                  );
                } else if (_model.pagebarthel == 5) {
                  return InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      _model.pagebarthel = 4;
                      safeSetState(() {});
                    },
                    child: Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      size: 20.0,
                    ),
                  );
                } else if (_model.pagebarthel == 6) {
                  return InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      _model.pagebarthel = 5;
                      safeSetState(() {});
                    },
                    child: Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      size: 20.0,
                    ),
                  );
                } else if (_model.pagebarthel == 7) {
                  return InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      _model.pagebarthel = 6;
                      safeSetState(() {});
                    },
                    child: Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      size: 20.0,
                    ),
                  );
                } else if (_model.pagebarthel == 8) {
                  return InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      _model.pagebarthel = 7;
                      safeSetState(() {});
                    },
                    child: Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      size: 20.0,
                    ),
                  );
                } else if (_model.pagebarthel == 9) {
                  return InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      _model.pagebarthel = 8;
                      safeSetState(() {});
                    },
                    child: Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      size: 20.0,
                    ),
                  );
                } else if (_model.pagebarthel == 10) {
                  return InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      _model.pagebarthel = 9;
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
                    width: 10.0,
                    height: 10.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                  );
                }
              },
            ),
            Expanded(
              child: Builder(
                builder: (context) {
                  if (_model.pagebarthel == 1) {
                    return Text(
                      'คำถามที่ 1',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).titleMedium.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).titleMediumFamily,
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            letterSpacing: 0.0,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .titleMediumIsCustom,
                          ),
                    ).animateOnPageLoad(
                        animationsMap['textOnPageLoadAnimation1']!);
                  } else if (_model.pagebarthel == 2) {
                    return Text(
                      'คำถามที่ 2',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).titleMedium.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).titleMediumFamily,
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            letterSpacing: 0.0,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .titleMediumIsCustom,
                          ),
                    ).animateOnPageLoad(
                        animationsMap['textOnPageLoadAnimation2']!);
                  } else if (_model.pagebarthel == 3) {
                    return Text(
                      'คำถามที่ 3',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).titleMedium.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).titleMediumFamily,
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            letterSpacing: 0.0,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .titleMediumIsCustom,
                          ),
                    ).animateOnPageLoad(
                        animationsMap['textOnPageLoadAnimation3']!);
                  } else if (_model.pagebarthel == 4) {
                    return Text(
                      'คำถามที่ 4',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).titleMedium.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).titleMediumFamily,
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            letterSpacing: 0.0,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .titleMediumIsCustom,
                          ),
                    ).animateOnPageLoad(
                        animationsMap['textOnPageLoadAnimation4']!);
                  } else if (_model.pagebarthel == 5) {
                    return Text(
                      'คำถามที่ 5',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).titleMedium.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).titleMediumFamily,
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            letterSpacing: 0.0,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .titleMediumIsCustom,
                          ),
                    ).animateOnPageLoad(
                        animationsMap['textOnPageLoadAnimation5']!);
                  } else if (_model.pagebarthel == 6) {
                    return Text(
                      'คำถามที่ 6',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).titleMedium.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).titleMediumFamily,
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            letterSpacing: 0.0,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .titleMediumIsCustom,
                          ),
                    ).animateOnPageLoad(
                        animationsMap['textOnPageLoadAnimation6']!);
                  } else if (_model.pagebarthel == 7) {
                    return Text(
                      'คำถามที่ 7',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).titleMedium.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).titleMediumFamily,
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            letterSpacing: 0.0,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .titleMediumIsCustom,
                          ),
                    ).animateOnPageLoad(
                        animationsMap['textOnPageLoadAnimation7']!);
                  } else if (_model.pagebarthel == 8) {
                    return Text(
                      'คำถามที่ 8',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).titleMedium.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).titleMediumFamily,
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            letterSpacing: 0.0,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .titleMediumIsCustom,
                          ),
                    ).animateOnPageLoad(
                        animationsMap['textOnPageLoadAnimation8']!);
                  } else if (_model.pagebarthel == 9) {
                    return Text(
                      'คำถามที่ 9',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).titleMedium.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).titleMediumFamily,
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            letterSpacing: 0.0,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .titleMediumIsCustom,
                          ),
                    ).animateOnPageLoad(
                        animationsMap['textOnPageLoadAnimation9']!);
                  } else if (_model.pagebarthel == 10) {
                    return Text(
                      'คำถามที่ 10',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).titleMedium.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).titleMediumFamily,
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            letterSpacing: 0.0,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .titleMediumIsCustom,
                          ),
                    ).animateOnPageLoad(
                        animationsMap['textOnPageLoadAnimation10']!);
                  } else if (_model.pagebarthel == 11) {
                    return Text(
                      'สรุปผลการประเมิน',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).titleMedium.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).titleMediumFamily,
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            letterSpacing: 0.0,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .titleMediumIsCustom,
                          ),
                    ).animateOnPageLoad(
                        animationsMap['textOnPageLoadAnimation11']!);
                  } else {
                    return Container(
                      width: 10.0,
                      height: 10.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
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

                FFAppState().Bquest1 = '';
                FFAppState().Bquest2 = '';
                FFAppState().Bquest3 = '';
                FFAppState().Bquest4 = '';
                FFAppState().Bquest5 = '';
                FFAppState().Bquest6 = '';
                FFAppState().Bquest7 = '';
                FFAppState().Bquest8 = '';
                FFAppState().Bquest9 = '';
                FFAppState().Bquest10 = '';
                FFAppState().Bquest11 = '';
                safeSetState(() {});
                _model.pagebarthel = 1;
                _model.voiceQuast1 = false;
                _model.voiceQuast2 = false;
                _model.voiceQuast3 = false;
                _model.voiceQuast4 = false;
                _model.voiceQuast5 = false;
                _model.voiceQuast6 = false;
                _model.voiceQuast7 = false;
                _model.voiceQuast8 = false;
                _model.voiceQuast9 = false;
                _model.voiceQuast10 = false;
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
        actions: [],
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF339FF3),
              FlutterFlowTheme.of(context).primaryBackground,
              FlutterFlowTheme.of(context).primaryBackground
            ],
            stops: [0.0, 0.3, 1.0],
            begin: AlignmentDirectional(0.0, -1.0),
            end: AlignmentDirectional(0, 1.0),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Builder(
                builder: (context) {
                  if (_model.pagebarthel == 1) {
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
                                  color: Color(0x1AFFFFFF),
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: 2.0,
                                decoration: BoxDecoration(
                                  color: Color(0x1AFFFFFF),
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: 2.0,
                                decoration: BoxDecoration(
                                  color: Color(0x1AFFFFFF),
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: 2.0,
                                decoration: BoxDecoration(
                                  color: Color(0x1AFFFFFF),
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: 2.0,
                                decoration: BoxDecoration(
                                  color: Color(0x1AFFFFFF),
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: 2.0,
                                decoration: BoxDecoration(
                                  color: Color(0x1AFFFFFF),
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: 2.0,
                                decoration: BoxDecoration(
                                  color: Color(0x1AFFFFFF),
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: 2.0,
                                decoration: BoxDecoration(
                                  color: Color(0x1AFFFFFF),
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: 2.0,
                                decoration: BoxDecoration(
                                  color: Color(0x1AFFFFFF),
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: ListView(
                            padding: EdgeInsets.fromLTRB(
                              0,
                              8.0,
                              0,
                              32.0,
                            ),
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            children: [
                              Align(
                                alignment: AlignmentDirectional(0.0, -1.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.network(
                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/healflow-1ya11l/assets/7o4q15snmtim/ChatGPT_Image_17_เม.ย._2568_15_37_37-removebg-preview.png',
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
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Text(
                                        'รับประทานอาหารเมื่อเตรียมสำรับไว้ให้เรียบร้อยต่อหน้า',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .titleMediumFamily,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.normal,
                                              lineHeight: 1.8,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .titleMediumIsCustom,
                                            ),
                                      ),
                                    ),
                                  ].divide(SizedBox(height: 4.0)),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 0.0),
                                child: MasonryGridView.builder(
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
                                  crossAxisSpacing: 16.0,
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
                                  padding: EdgeInsets.fromLTRB(
                                    0,
                                    0,
                                    0,
                                    0,
                                  ),
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
                                                      'index1OnActionTriggerAnimation1'] !=
                                                  null) {
                                                animationsMap[
                                                        'index1OnActionTriggerAnimation1']!
                                                    .controller
                                                    .forward(from: 0.0);
                                              }
                                              FFAppState().Bquest1 = '1';
                                              safeSetState(() {});
                                              await Future.delayed(
                                                Duration(
                                                  milliseconds: 100,
                                                ),
                                              );
                                              _model.pagebarthel = 2;
                                              safeSetState(() {});
                                            },
                                            child: wrapWithModel(
                                              model: _model.index1Model1,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: Index1Widget(
                                                num: '0',
                                                text:
                                                    'ไม่สามารถตักอาหารเข้าปากได้',
                                                barthel: '1',
                                              ),
                                            ),
                                          ).animateOnActionTrigger(
                                            animationsMap[
                                                'index1OnActionTriggerAnimation1']!,
                                          ),
                                      () => InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              if (animationsMap[
                                                      'index1OnActionTriggerAnimation2'] !=
                                                  null) {
                                                animationsMap[
                                                        'index1OnActionTriggerAnimation2']!
                                                    .controller
                                                    .forward(from: 0.0);
                                              }
                                              FFAppState().Bquest1 = '2';
                                              safeSetState(() {});
                                              await Future.delayed(
                                                Duration(
                                                  milliseconds: 100,
                                                ),
                                              );
                                              _model.pagebarthel = 2;
                                              safeSetState(() {});
                                            },
                                            child: wrapWithModel(
                                              model: _model.index1Model2,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: Index1Widget(
                                                num: '1',
                                                text:
                                                    'ตักอาหารเองได้แต่ต้องมีคนช่วย เช่น ช่วยใช้ช้อนตักเตรียมให้/ตัดเป็นชิ้นเล็กๆ',
                                                barthel: '2',
                                              ),
                                            ),
                                          ).animateOnActionTrigger(
                                            animationsMap[
                                                'index1OnActionTriggerAnimation2']!,
                                          ),
                                      () => InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              if (animationsMap[
                                                      'index1OnActionTriggerAnimation3'] !=
                                                  null) {
                                                animationsMap[
                                                        'index1OnActionTriggerAnimation3']!
                                                    .controller
                                                    .forward(from: 0.0);
                                              }
                                              FFAppState().Bquest1 = '3';
                                              safeSetState(() {});
                                              await Future.delayed(
                                                Duration(
                                                  milliseconds: 100,
                                                ),
                                              );
                                              _model.pagebarthel = 2;
                                              safeSetState(() {});
                                            },
                                            child: wrapWithModel(
                                              model: _model.index1Model3,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: Index1Widget(
                                                num: '2',
                                                text:
                                                    'ตักอาหารและช่วยตัวเองได้ปกติ',
                                                barthel: '3',
                                              ),
                                            ),
                                          ).animateOnActionTrigger(
                                            animationsMap[
                                                'index1OnActionTriggerAnimation3']!,
                                          ),
                                    ][index]();
                                  },
                                ),
                              ),
                            ].divide(SizedBox(height: 24.0)),
                          ),
                        ),
                      ],
                    );
                  } else if (_model.pagebarthel == 2) {
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
                                  color: Color(0x1AFFFFFF),
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: 2.0,
                                decoration: BoxDecoration(
                                  color: Color(0x1AFFFFFF),
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: 2.0,
                                decoration: BoxDecoration(
                                  color: Color(0x1AFFFFFF),
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: 2.0,
                                decoration: BoxDecoration(
                                  color: Color(0x1AFFFFFF),
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: 2.0,
                                decoration: BoxDecoration(
                                  color: Color(0x1AFFFFFF),
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: 2.0,
                                decoration: BoxDecoration(
                                  color: Color(0x1AFFFFFF),
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: 2.0,
                                decoration: BoxDecoration(
                                  color: Color(0x1AFFFFFF),
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: 2.0,
                                decoration: BoxDecoration(
                                  color: Color(0x1AFFFFFF),
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: ListView(
                            padding: EdgeInsets.fromLTRB(
                              0,
                              8.0,
                              0,
                              32.0,
                            ),
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            children: [
                              Align(
                                alignment: AlignmentDirectional(0.0, -1.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.network(
                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/healflow-1ya11l/assets/x8akk48px1bl/ChatGPT_Image_18_เม.ย._2568_13_26_11-removebg-preview.png',
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
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Text(
                                        'ลุกนั่งจากที่นอน หรือจากเตียงไปยังเก้าอี้',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .titleMediumFamily,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.normal,
                                              lineHeight: 1.8,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .titleMediumIsCustom,
                                            ),
                                      ),
                                    ),
                                  ].divide(SizedBox(height: 4.0)),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 0.0),
                                child: MasonryGridView.builder(
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
                                  crossAxisSpacing: 16.0,
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
                                  padding: EdgeInsets.fromLTRB(
                                    0,
                                    0,
                                    0,
                                    0,
                                  ),
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
                                                      'index2OnActionTriggerAnimation1'] !=
                                                  null) {
                                                animationsMap[
                                                        'index2OnActionTriggerAnimation1']!
                                                    .controller
                                                    .forward(from: 0.0);
                                              }
                                              FFAppState().Bquest2 = '1';
                                              safeSetState(() {});
                                              await Future.delayed(
                                                Duration(
                                                  milliseconds: 100,
                                                ),
                                              );
                                              _model.pagebarthel = 3;
                                              safeSetState(() {});
                                            },
                                            child: wrapWithModel(
                                              model: _model.index2Model1,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: Index2Widget(
                                                num: '0',
                                                text:
                                                    'ไม่สามารถนั่งได้(นั่งแล้วจะล้มเสมอ) หรือต้องใช้ 2 คนช่วยกันยกขึ้นมา',
                                                barthel: '1',
                                              ),
                                            ),
                                          ).animateOnActionTrigger(
                                            animationsMap[
                                                'index2OnActionTriggerAnimation1']!,
                                          ),
                                      () => InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              if (animationsMap[
                                                      'index2OnActionTriggerAnimation2'] !=
                                                  null) {
                                                animationsMap[
                                                        'index2OnActionTriggerAnimation2']!
                                                    .controller
                                                    .forward(from: 0.0);
                                              }
                                              FFAppState().Bquest2 = '2';
                                              safeSetState(() {});
                                              await Future.delayed(
                                                Duration(
                                                  milliseconds: 100,
                                                ),
                                              );
                                              _model.pagebarthel = 3;
                                              safeSetState(() {});
                                            },
                                            child: wrapWithModel(
                                              model: _model.index2Model2,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: Index2Widget(
                                                num: '1',
                                                text:
                                                    'ต้องใช้คนแข็งแรงหรือมีทักษะ 1 คน/ใช้คนทั่วไป 2 คนพยุงดันขึ้นมาจึงจะนั้งอยู่ได้',
                                                barthel: '2',
                                              ),
                                            ),
                                          ).animateOnActionTrigger(
                                            animationsMap[
                                                'index2OnActionTriggerAnimation2']!,
                                          ),
                                      () => InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              if (animationsMap[
                                                      'index2OnActionTriggerAnimation3'] !=
                                                  null) {
                                                animationsMap[
                                                        'index2OnActionTriggerAnimation3']!
                                                    .controller
                                                    .forward(from: 0.0);
                                              }
                                              FFAppState().Bquest2 = '3';
                                              safeSetState(() {});
                                              await Future.delayed(
                                                Duration(
                                                  milliseconds: 100,
                                                ),
                                              );
                                              _model.pagebarthel = 3;
                                              safeSetState(() {});
                                            },
                                            child: wrapWithModel(
                                              model: _model.index2Model3,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: Index2Widget(
                                                num: '2',
                                                text:
                                                    'ต้องการความช่วยเหลือบ้าง เช่นช่วยพยุงเล็กน้อย/ต้องมีคนดูแลเพื่อความปลอดภัย',
                                                barthel: '3',
                                              ),
                                            ),
                                          ).animateOnActionTrigger(
                                            animationsMap[
                                                'index2OnActionTriggerAnimation3']!,
                                          ),
                                      () => InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              if (animationsMap[
                                                      'index2OnActionTriggerAnimation4'] !=
                                                  null) {
                                                animationsMap[
                                                        'index2OnActionTriggerAnimation4']!
                                                    .controller
                                                    .forward(from: 0.0);
                                              }
                                              FFAppState().Bquest2 = '4';
                                              safeSetState(() {});
                                              await Future.delayed(
                                                Duration(
                                                  milliseconds: 100,
                                                ),
                                              );
                                              _model.pagebarthel = 3;
                                              safeSetState(() {});
                                            },
                                            child: wrapWithModel(
                                              model: _model.index2Model4,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: Index2Widget(
                                                num: '3',
                                                text: 'ทำได้เอง',
                                                barthel: '4',
                                              ),
                                            ),
                                          ).animateOnActionTrigger(
                                            animationsMap[
                                                'index2OnActionTriggerAnimation4']!,
                                          ),
                                    ][index]();
                                  },
                                ),
                              ),
                            ].divide(SizedBox(height: 24.0)),
                          ),
                        ),
                      ],
                    );
                  } else if (_model.pagebarthel == 3) {
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
                                  color: Color(0x1AFFFFFF),
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: 2.0,
                                decoration: BoxDecoration(
                                  color: Color(0x1AFFFFFF),
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: 2.0,
                                decoration: BoxDecoration(
                                  color: Color(0x1AFFFFFF),
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: 2.0,
                                decoration: BoxDecoration(
                                  color: Color(0x1AFFFFFF),
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: 2.0,
                                decoration: BoxDecoration(
                                  color: Color(0x1AFFFFFF),
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: 2.0,
                                decoration: BoxDecoration(
                                  color: Color(0x1AFFFFFF),
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: 2.0,
                                decoration: BoxDecoration(
                                  color: Color(0x1AFFFFFF),
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: ListView(
                            padding: EdgeInsets.fromLTRB(
                              0,
                              8.0,
                              0,
                              32.0,
                            ),
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            children: [
                              Align(
                                alignment: AlignmentDirectional(0.0, -1.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.network(
                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/healflow-1ya11l/assets/l9m33ahoopth/ChatGPT_Image_18_เม.ย._2568_13_23_56.png',
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
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Text(
                                        'การล้างหน้า หวีผม แปรงฟัน โกนหนวดในระยะเวลา 24-48 ชม. ผ่านมา',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .titleMediumFamily,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.normal,
                                              lineHeight: 1.8,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .titleMediumIsCustom,
                                            ),
                                      ),
                                    ),
                                  ].divide(SizedBox(height: 4.0)),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 0.0),
                                child: MasonryGridView.builder(
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
                                  crossAxisSpacing: 16.0,
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
                                  padding: EdgeInsets.fromLTRB(
                                    0,
                                    0,
                                    0,
                                    0,
                                  ),
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
                                                      'index3OnActionTriggerAnimation1'] !=
                                                  null) {
                                                animationsMap[
                                                        'index3OnActionTriggerAnimation1']!
                                                    .controller
                                                    .forward(from: 0.0);
                                              }
                                              FFAppState().Bquest3 = '1';
                                              safeSetState(() {});
                                              await Future.delayed(
                                                Duration(
                                                  milliseconds: 100,
                                                ),
                                              );
                                              _model.pagebarthel = 4;
                                              safeSetState(() {});
                                            },
                                            child: wrapWithModel(
                                              model: _model.index3Model1,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: Index3Widget(
                                                num: '0',
                                                text: 'ต้องการความช่วยเหลือ',
                                                barthel: '1',
                                              ),
                                            ),
                                          ).animateOnActionTrigger(
                                            animationsMap[
                                                'index3OnActionTriggerAnimation1']!,
                                          ),
                                      () => InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              if (animationsMap[
                                                      'index3OnActionTriggerAnimation2'] !=
                                                  null) {
                                                animationsMap[
                                                        'index3OnActionTriggerAnimation2']!
                                                    .controller
                                                    .forward(from: 0.0);
                                              }
                                              FFAppState().Bquest3 = '2';
                                              safeSetState(() {});
                                              await Future.delayed(
                                                Duration(
                                                  milliseconds: 100,
                                                ),
                                              );
                                              _model.pagebarthel = 4;
                                              safeSetState(() {});
                                            },
                                            child: wrapWithModel(
                                              model: _model.index3Model2,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: Index3Widget(
                                                num: '1',
                                                text:
                                                    'ทำได้เอง (รวมทั้งที่ทำได้เองถ้าเตรียมอุปกรณ์ไว้ให้)',
                                                barthel: '2',
                                              ),
                                            ),
                                          ).animateOnActionTrigger(
                                            animationsMap[
                                                'index3OnActionTriggerAnimation2']!,
                                          ),
                                    ][index]();
                                  },
                                ),
                              ),
                            ].divide(SizedBox(height: 24.0)),
                          ),
                        ),
                      ],
                    );
                  } else if (_model.pagebarthel == 4) {
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
                                  color: Color(0x1AFFFFFF),
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: 2.0,
                                decoration: BoxDecoration(
                                  color: Color(0x1AFFFFFF),
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: 2.0,
                                decoration: BoxDecoration(
                                  color: Color(0x1AFFFFFF),
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: 2.0,
                                decoration: BoxDecoration(
                                  color: Color(0x1AFFFFFF),
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: 2.0,
                                decoration: BoxDecoration(
                                  color: Color(0x1AFFFFFF),
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: 2.0,
                                decoration: BoxDecoration(
                                  color: Color(0x1AFFFFFF),
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: ListView(
                            padding: EdgeInsets.fromLTRB(
                              0,
                              8.0,
                              0,
                              32.0,
                            ),
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            children: [
                              Align(
                                alignment: AlignmentDirectional(0.0, -1.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.network(
                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/healflow-1ya11l/assets/bosdnea9ni5d/Gemini_Generated_Image_tbl33ntbl33ntbl3-removebg-preview.png',
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
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Text(
                                        'การใช้ห้องน้ำ',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .titleMediumFamily,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.normal,
                                              lineHeight: 1.8,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .titleMediumIsCustom,
                                            ),
                                      ),
                                    ),
                                  ].divide(SizedBox(height: 4.0)),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 0.0),
                                child: MasonryGridView.builder(
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
                                  crossAxisSpacing: 16.0,
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
                                  padding: EdgeInsets.fromLTRB(
                                    0,
                                    0,
                                    0,
                                    0,
                                  ),
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
                                                      'index4OnActionTriggerAnimation1'] !=
                                                  null) {
                                                animationsMap[
                                                        'index4OnActionTriggerAnimation1']!
                                                    .controller
                                                    .forward(from: 0.0);
                                              }
                                              FFAppState().Bquest4 = '1';
                                              safeSetState(() {});
                                              await Future.delayed(
                                                Duration(
                                                  milliseconds: 100,
                                                ),
                                              );
                                              _model.pagebarthel = 5;
                                              safeSetState(() {});
                                            },
                                            child: wrapWithModel(
                                              model: _model.index4Model1,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: Index4Widget(
                                                num: '0',
                                                text: 'ช่วยตัวเองไม่ได้',
                                                barthel: '1',
                                              ),
                                            ),
                                          ).animateOnActionTrigger(
                                            animationsMap[
                                                'index4OnActionTriggerAnimation1']!,
                                          ),
                                      () => InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              if (animationsMap[
                                                      'index4OnActionTriggerAnimation2'] !=
                                                  null) {
                                                animationsMap[
                                                        'index4OnActionTriggerAnimation2']!
                                                    .controller
                                                    .forward(from: 0.0);
                                              }
                                              FFAppState().Bquest4 = '2';
                                              safeSetState(() {});
                                              await Future.delayed(
                                                Duration(
                                                  milliseconds: 100,
                                                ),
                                              );
                                              _model.pagebarthel = 5;
                                              safeSetState(() {});
                                            },
                                            child: wrapWithModel(
                                              model: _model.index4Model2,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: Index4Widget(
                                                num: '1',
                                                text:
                                                    'ทำเองได้บ้าง ต้องการความช่วยเหลือในบางสิ่ง',
                                                barthel: '2',
                                              ),
                                            ),
                                          ).animateOnActionTrigger(
                                            animationsMap[
                                                'index4OnActionTriggerAnimation2']!,
                                          ),
                                      () => InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              if (animationsMap[
                                                      'index4OnActionTriggerAnimation3'] !=
                                                  null) {
                                                animationsMap[
                                                        'index4OnActionTriggerAnimation3']!
                                                    .controller
                                                    .forward(from: 0.0);
                                              }
                                              FFAppState().Bquest4 = '3';
                                              safeSetState(() {});
                                              await Future.delayed(
                                                Duration(
                                                  milliseconds: 100,
                                                ),
                                              );
                                              _model.pagebarthel = 5;
                                              safeSetState(() {});
                                            },
                                            child: wrapWithModel(
                                              model: _model.index4Model3,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: Index4Widget(
                                                num: '2',
                                                text: 'ช่วยเหลือตัวเองได้ดี',
                                                barthel: '3',
                                              ),
                                            ),
                                          ).animateOnActionTrigger(
                                            animationsMap[
                                                'index4OnActionTriggerAnimation3']!,
                                          ),
                                    ][index]();
                                  },
                                ),
                              ),
                            ].divide(SizedBox(height: 24.0)),
                          ),
                        ),
                      ],
                    );
                  } else if (_model.pagebarthel == 5) {
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
                                  color: Color(0x1AFFFFFF),
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: 2.0,
                                decoration: BoxDecoration(
                                  color: Color(0x1AFFFFFF),
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: 2.0,
                                decoration: BoxDecoration(
                                  color: Color(0x1AFFFFFF),
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: 2.0,
                                decoration: BoxDecoration(
                                  color: Color(0x1AFFFFFF),
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: 2.0,
                                decoration: BoxDecoration(
                                  color: Color(0x1AFFFFFF),
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: ListView(
                            padding: EdgeInsets.fromLTRB(
                              0,
                              8.0,
                              0,
                              32.0,
                            ),
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            children: [
                              Align(
                                alignment: AlignmentDirectional(0.0, -1.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.network(
                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/healflow-1ya11l/assets/w81uooo7nsjj/ChatGPT_Image_18_เม.ย._2568_13_36_37-removebg-preview.png',
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
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Text(
                                        'การอาบน้ำ',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .titleMediumFamily,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.normal,
                                              lineHeight: 1.8,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .titleMediumIsCustom,
                                            ),
                                      ),
                                    ),
                                  ].divide(SizedBox(height: 4.0)),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 0.0),
                                child: MasonryGridView.builder(
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
                                  crossAxisSpacing: 16.0,
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
                                  padding: EdgeInsets.fromLTRB(
                                    0,
                                    0,
                                    0,
                                    0,
                                  ),
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
                                                      'index5OnActionTriggerAnimation1'] !=
                                                  null) {
                                                animationsMap[
                                                        'index5OnActionTriggerAnimation1']!
                                                    .controller
                                                    .forward(from: 0.0);
                                              }
                                              FFAppState().Bquest5 = '1';
                                              safeSetState(() {});
                                              await Future.delayed(
                                                Duration(
                                                  milliseconds: 100,
                                                ),
                                              );
                                              _model.pagebarthel = 6;
                                              safeSetState(() {});
                                            },
                                            child: wrapWithModel(
                                              model: _model.index5Model1,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: Index5Widget(
                                                num: '0',
                                                text: 'ต้องการความช่วยเหลือ',
                                                barthel: '1',
                                              ),
                                            ),
                                          ).animateOnActionTrigger(
                                            animationsMap[
                                                'index5OnActionTriggerAnimation1']!,
                                          ),
                                      () => InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              if (animationsMap[
                                                      'index5OnActionTriggerAnimation2'] !=
                                                  null) {
                                                animationsMap[
                                                        'index5OnActionTriggerAnimation2']!
                                                    .controller
                                                    .forward(from: 0.0);
                                              }
                                              FFAppState().Bquest5 = '2';
                                              safeSetState(() {});
                                              await Future.delayed(
                                                Duration(
                                                  milliseconds: 100,
                                                ),
                                              );
                                              _model.pagebarthel = 6;
                                              safeSetState(() {});
                                            },
                                            child: wrapWithModel(
                                              model: _model.index5Model2,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: Index5Widget(
                                                num: '1',
                                                text:
                                                    'ทำได้เอง (รวมท้้งที่ทำได้เองถ้าเตรียมอุปกรณ์ไว้ให้)',
                                                barthel: '2',
                                              ),
                                            ),
                                          ).animateOnActionTrigger(
                                            animationsMap[
                                                'index5OnActionTriggerAnimation2']!,
                                          ),
                                    ][index]();
                                  },
                                ),
                              ),
                            ].divide(SizedBox(height: 24.0)),
                          ),
                        ),
                      ],
                    );
                  } else if (_model.pagebarthel == 6) {
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
                                  color: Color(0x1AFFFFFF),
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: 2.0,
                                decoration: BoxDecoration(
                                  color: Color(0x1AFFFFFF),
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: 2.0,
                                decoration: BoxDecoration(
                                  color: Color(0x1AFFFFFF),
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: 2.0,
                                decoration: BoxDecoration(
                                  color: Color(0x1AFFFFFF),
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: ListView(
                            padding: EdgeInsets.fromLTRB(
                              0,
                              8.0,
                              0,
                              32.0,
                            ),
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            children: [
                              Align(
                                alignment: AlignmentDirectional(0.0, -1.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.network(
                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/healflow-1ya11l/assets/ar81qf9g8exi/ChatGPT_Image_18_เม.ย._2568_13_28_39-removebg-preview.png',
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
                                        return 280.0;
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
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Text(
                                        'การเคลื่อนที่ภายในห้องหรือบ้าน',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .titleMediumFamily,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.normal,
                                              lineHeight: 1.8,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .titleMediumIsCustom,
                                            ),
                                      ),
                                    ),
                                  ].divide(SizedBox(height: 4.0)),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 0.0),
                                child: MasonryGridView.builder(
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
                                  crossAxisSpacing: 16.0,
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
                                  padding: EdgeInsets.fromLTRB(
                                    0,
                                    0,
                                    0,
                                    0,
                                  ),
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
                                                      'index6OnActionTriggerAnimation1'] !=
                                                  null) {
                                                animationsMap[
                                                        'index6OnActionTriggerAnimation1']!
                                                    .controller
                                                    .forward(from: 0.0);
                                              }
                                              FFAppState().Bquest6 = '1';
                                              safeSetState(() {});
                                              await Future.delayed(
                                                Duration(
                                                  milliseconds: 100,
                                                ),
                                              );
                                              _model.pagebarthel = 7;
                                              safeSetState(() {});
                                            },
                                            child: wrapWithModel(
                                              model: _model.index6Model1,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: Index6Widget(
                                                num: '0',
                                                text: 'เคลื่อนที่ไปไหนไม่ได้',
                                                barthel: '1',
                                              ),
                                            ),
                                          ).animateOnActionTrigger(
                                            animationsMap[
                                                'index6OnActionTriggerAnimation1']!,
                                          ),
                                      () => InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              if (animationsMap[
                                                      'index6OnActionTriggerAnimation2'] !=
                                                  null) {
                                                animationsMap[
                                                        'index6OnActionTriggerAnimation2']!
                                                    .controller
                                                    .forward(from: 0.0);
                                              }
                                              FFAppState().Bquest6 = '2';
                                              safeSetState(() {});
                                              await Future.delayed(
                                                Duration(
                                                  milliseconds: 100,
                                                ),
                                              );
                                              _model.pagebarthel = 7;
                                              safeSetState(() {});
                                            },
                                            child: wrapWithModel(
                                              model: _model.index6Model2,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: Index6Widget(
                                                num: '1',
                                                text:
                                                    'ใช้รถเข็นช่วยให้เคลื่อนที่ได้เอง (ไม่ต้องมีคนเข็นให้) เข้าออกมุงห้องหรือประตูได้',
                                                barthel: '2',
                                              ),
                                            ),
                                          ).animateOnActionTrigger(
                                            animationsMap[
                                                'index6OnActionTriggerAnimation2']!,
                                          ),
                                      () => InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              if (animationsMap[
                                                      'index6OnActionTriggerAnimation3'] !=
                                                  null) {
                                                animationsMap[
                                                        'index6OnActionTriggerAnimation3']!
                                                    .controller
                                                    .forward(from: 0.0);
                                              }
                                              FFAppState().Bquest6 = '3';
                                              safeSetState(() {});
                                              await Future.delayed(
                                                Duration(
                                                  milliseconds: 100,
                                                ),
                                              );
                                              _model.pagebarthel = 7;
                                              safeSetState(() {});
                                            },
                                            child: wrapWithModel(
                                              model: _model.index6Model3,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: Index6Widget(
                                                num: '2',
                                                text:
                                                    'เดินหรือเคลื่อนที่โดยมีคนช่วยเช่น พยุง',
                                                barthel: '3',
                                              ),
                                            ),
                                          ).animateOnActionTrigger(
                                            animationsMap[
                                                'index6OnActionTriggerAnimation3']!,
                                          ),
                                      () => InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              if (animationsMap[
                                                      'index6OnActionTriggerAnimation4'] !=
                                                  null) {
                                                animationsMap[
                                                        'index6OnActionTriggerAnimation4']!
                                                    .controller
                                                    .forward(from: 0.0);
                                              }
                                              FFAppState().Bquest6 = '4';
                                              safeSetState(() {});
                                              await Future.delayed(
                                                Duration(
                                                  milliseconds: 100,
                                                ),
                                              );
                                              _model.pagebarthel = 7;
                                              safeSetState(() {});
                                            },
                                            child: wrapWithModel(
                                              model: _model.index6Model4,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: Index6Widget(
                                                num: '3',
                                                text:
                                                    'เดินหรือเคลื่อนที่เองได้',
                                                barthel: '4',
                                              ),
                                            ),
                                          ).animateOnActionTrigger(
                                            animationsMap[
                                                'index6OnActionTriggerAnimation4']!,
                                          ),
                                    ][index]();
                                  },
                                ),
                              ),
                            ].divide(SizedBox(height: 24.0)),
                          ),
                        ),
                      ],
                    );
                  } else if (_model.pagebarthel == 7) {
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
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: 2.0,
                                decoration: BoxDecoration(
                                  color: Color(0x1AFFFFFF),
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: 2.0,
                                decoration: BoxDecoration(
                                  color: Color(0x1AFFFFFF),
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: 2.0,
                                decoration: BoxDecoration(
                                  color: Color(0x1AFFFFFF),
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: ListView(
                            padding: EdgeInsets.fromLTRB(
                              0,
                              8.0,
                              0,
                              32.0,
                            ),
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            children: [
                              Align(
                                alignment: AlignmentDirectional(0.0, -1.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.network(
                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/healflow-1ya11l/assets/7h2hscnlbyxr/ChatGPT_Image_18_เม.ย._2568_13_32_46-removebg-preview.png',
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
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Text(
                                        'การขึ้นลงบันได 1 ชั้น',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .titleMediumFamily,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.normal,
                                              lineHeight: 1.8,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .titleMediumIsCustom,
                                            ),
                                      ),
                                    ),
                                  ].divide(SizedBox(height: 4.0)),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 0.0),
                                child: MasonryGridView.builder(
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
                                  crossAxisSpacing: 16.0,
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
                                  padding: EdgeInsets.fromLTRB(
                                    0,
                                    0,
                                    0,
                                    0,
                                  ),
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
                                                      'index7OnActionTriggerAnimation1'] !=
                                                  null) {
                                                animationsMap[
                                                        'index7OnActionTriggerAnimation1']!
                                                    .controller
                                                    .forward(from: 0.0);
                                              }
                                              FFAppState().Bquest7 = '1';
                                              safeSetState(() {});
                                              await Future.delayed(
                                                Duration(
                                                  milliseconds: 100,
                                                ),
                                              );
                                              _model.pagebarthel = 8;
                                              safeSetState(() {});
                                            },
                                            child: wrapWithModel(
                                              model: _model.index7Model1,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: Index7Widget(
                                                num: '0',
                                                text: 'ไม่สามารถทำได้',
                                                barthel: '1',
                                              ),
                                            ),
                                          ).animateOnActionTrigger(
                                            animationsMap[
                                                'index7OnActionTriggerAnimation1']!,
                                          ),
                                      () => InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              if (animationsMap[
                                                      'index7OnActionTriggerAnimation2'] !=
                                                  null) {
                                                animationsMap[
                                                        'index7OnActionTriggerAnimation2']!
                                                    .controller
                                                    .forward(from: 0.0);
                                              }
                                              FFAppState().Bquest7 = '2';
                                              safeSetState(() {});
                                              await Future.delayed(
                                                Duration(
                                                  milliseconds: 100,
                                                ),
                                              );
                                              _model.pagebarthel = 8;
                                              safeSetState(() {});
                                            },
                                            child: wrapWithModel(
                                              model: _model.index7Model2,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: Index7Widget(
                                                num: '1',
                                                text: 'ต้องให้คนช่วย',
                                                barthel: '2',
                                              ),
                                            ),
                                          ).animateOnActionTrigger(
                                            animationsMap[
                                                'index7OnActionTriggerAnimation2']!,
                                          ),
                                      () => InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              if (animationsMap[
                                                      'index7OnActionTriggerAnimation3'] !=
                                                  null) {
                                                animationsMap[
                                                        'index7OnActionTriggerAnimation3']!
                                                    .controller
                                                    .forward(from: 0.0);
                                              }
                                              FFAppState().Bquest7 = '3';
                                              safeSetState(() {});
                                              await Future.delayed(
                                                Duration(
                                                  milliseconds: 100,
                                                ),
                                              );
                                              _model.pagebarthel = 8;
                                              safeSetState(() {});
                                            },
                                            child: wrapWithModel(
                                              model: _model.index7Model3,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: Index7Widget(
                                                num: '2',
                                                text:
                                                    'ขึ้นลงเองได้ (ถ้าต้องใช้เครื่องช่วยเดิน เช่น Walker จะต้องเอาขึ้นลงได้ด้วย)',
                                                barthel: '3',
                                              ),
                                            ),
                                          ).animateOnActionTrigger(
                                            animationsMap[
                                                'index7OnActionTriggerAnimation3']!,
                                          ),
                                    ][index]();
                                  },
                                ),
                              ),
                            ].divide(SizedBox(height: 24.0)),
                          ),
                        ),
                      ],
                    );
                  } else if (_model.pagebarthel == 8) {
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
                                  color: Color(0x1AFFFFFF),
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: 2.0,
                                decoration: BoxDecoration(
                                  color: Color(0x1AFFFFFF),
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: ListView(
                            padding: EdgeInsets.fromLTRB(
                              0,
                              8.0,
                              0,
                              32.0,
                            ),
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            children: [
                              Align(
                                alignment: AlignmentDirectional(0.0, -1.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.network(
                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/healflow-1ya11l/assets/4oftc9lpbzp6/ChatGPT_Image_18_เม.ย._2568_13_30_18-removebg-preview.png',
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
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Text(
                                        'การสวมใส่เสื้อผ้า',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .titleMediumFamily,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.normal,
                                              lineHeight: 1.8,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .titleMediumIsCustom,
                                            ),
                                      ),
                                    ),
                                  ].divide(SizedBox(height: 4.0)),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 0.0),
                                child: MasonryGridView.builder(
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
                                  crossAxisSpacing: 16.0,
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
                                  padding: EdgeInsets.fromLTRB(
                                    0,
                                    0,
                                    0,
                                    0,
                                  ),
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
                                                      'index8OnActionTriggerAnimation1'] !=
                                                  null) {
                                                animationsMap[
                                                        'index8OnActionTriggerAnimation1']!
                                                    .controller
                                                    .forward(from: 0.0);
                                              }
                                              FFAppState().Bquest8 = '1';
                                              safeSetState(() {});
                                              await Future.delayed(
                                                Duration(
                                                  milliseconds: 100,
                                                ),
                                              );
                                              _model.pagebarthel = 9;
                                              safeSetState(() {});
                                            },
                                            child: wrapWithModel(
                                              model: _model.index8Model1,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: Index8Widget(
                                                num: '0',
                                                text:
                                                    'ต้องมีคนสวมใส่ให้ ช่วยตวัเองแทบไม่ได้หรือได้น้อย',
                                                barthel: '1',
                                              ),
                                            ),
                                          ).animateOnActionTrigger(
                                            animationsMap[
                                                'index8OnActionTriggerAnimation1']!,
                                          ),
                                      () => InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              if (animationsMap[
                                                      'index8OnActionTriggerAnimation2'] !=
                                                  null) {
                                                animationsMap[
                                                        'index8OnActionTriggerAnimation2']!
                                                    .controller
                                                    .forward(from: 0.0);
                                              }
                                              FFAppState().Bquest8 = '2';
                                              safeSetState(() {});
                                              await Future.delayed(
                                                Duration(
                                                  milliseconds: 100,
                                                ),
                                              );
                                              _model.pagebarthel = 9;
                                              safeSetState(() {});
                                            },
                                            child: wrapWithModel(
                                              model: _model.index8Model2,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: Index8Widget(
                                                num: '1',
                                                text:
                                                    'ช่วยตัวได้ประมาณร้อยละ 50 ที่เหลือต้องมีคนช่วย',
                                                barthel: '2',
                                              ),
                                            ),
                                          ).animateOnActionTrigger(
                                            animationsMap[
                                                'index8OnActionTriggerAnimation2']!,
                                          ),
                                      () => InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              if (animationsMap[
                                                      'index8OnActionTriggerAnimation3'] !=
                                                  null) {
                                                animationsMap[
                                                        'index8OnActionTriggerAnimation3']!
                                                    .controller
                                                    .forward(from: 0.0);
                                              }
                                              FFAppState().Bquest8 = '3';
                                              safeSetState(() {});
                                              await Future.delayed(
                                                Duration(
                                                  milliseconds: 100,
                                                ),
                                              );
                                              _model.pagebarthel = 9;
                                              safeSetState(() {});
                                            },
                                            child: wrapWithModel(
                                              model: _model.index8Model3,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: Index8Widget(
                                                num: '2',
                                                text:
                                                    'ช่วยตัวเองได้ดี (รวมทั้งการติดกระดุม รูดซิป ใส่เสื้อผ้าที่ดัดแปลงใหเ้หมาะสมก็ได้',
                                                barthel: '3',
                                              ),
                                            ),
                                          ).animateOnActionTrigger(
                                            animationsMap[
                                                'index8OnActionTriggerAnimation3']!,
                                          ),
                                    ][index]();
                                  },
                                ),
                              ),
                            ].divide(SizedBox(height: 24.0)),
                          ),
                        ),
                      ],
                    );
                  } else if (_model.pagebarthel == 9) {
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
                                  color: Color(0x1AFFFFFF),
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: ListView(
                            padding: EdgeInsets.fromLTRB(
                              0,
                              8.0,
                              0,
                              32.0,
                            ),
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            children: [
                              Align(
                                alignment: AlignmentDirectional(0.0, -1.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.network(
                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/healflow-1ya11l/assets/rzw2b1uw1abd/ChatGPT_Image_18_เม.ย._2568_13_43_23-removebg-preview.png',
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
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Text(
                                        'การกลั้นการถ่ายอุจจาระใน 1 สัปดาห์ที่ผ่านมา',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .titleMediumFamily,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.normal,
                                              lineHeight: 1.8,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .titleMediumIsCustom,
                                            ),
                                      ),
                                    ),
                                  ].divide(SizedBox(height: 4.0)),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 0.0),
                                child: MasonryGridView.builder(
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
                                  crossAxisSpacing: 16.0,
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
                                  padding: EdgeInsets.fromLTRB(
                                    0,
                                    0,
                                    0,
                                    0,
                                  ),
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
                                                      'index9OnActionTriggerAnimation1'] !=
                                                  null) {
                                                animationsMap[
                                                        'index9OnActionTriggerAnimation1']!
                                                    .controller
                                                    .forward(from: 0.0);
                                              }
                                              FFAppState().Bquest9 = '1';
                                              safeSetState(() {});
                                              await Future.delayed(
                                                Duration(
                                                  milliseconds: 100,
                                                ),
                                              );
                                              _model.pagebarthel = 10;
                                              safeSetState(() {});
                                            },
                                            child: wrapWithModel(
                                              model: _model.index9Model1,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: Index9Widget(
                                                num: '0',
                                                text:
                                                    'กลั้นไม่ได้หรือต้องการสวนอุจจาระอยู่เสมอ',
                                                barthel: '1',
                                              ),
                                            ),
                                          ).animateOnActionTrigger(
                                            animationsMap[
                                                'index9OnActionTriggerAnimation1']!,
                                          ),
                                      () => InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              if (animationsMap[
                                                      'index9OnActionTriggerAnimation2'] !=
                                                  null) {
                                                animationsMap[
                                                        'index9OnActionTriggerAnimation2']!
                                                    .controller
                                                    .forward(from: 0.0);
                                              }
                                              FFAppState().Bquest9 = '2';
                                              safeSetState(() {});
                                              await Future.delayed(
                                                Duration(
                                                  milliseconds: 100,
                                                ),
                                              );
                                              _model.pagebarthel = 10;
                                              safeSetState(() {});
                                            },
                                            child: wrapWithModel(
                                              model: _model.index9Model2,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: Index9Widget(
                                                num: '1',
                                                text:
                                                    'กลั้นไม่ได้บางครั้ง (ไม่เกิน 1 ครั้งต่อสัปดาห์)',
                                                barthel: '2',
                                              ),
                                            ),
                                          ).animateOnActionTrigger(
                                            animationsMap[
                                                'index9OnActionTriggerAnimation2']!,
                                          ),
                                      () => InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              if (animationsMap[
                                                      'index9OnActionTriggerAnimation3'] !=
                                                  null) {
                                                animationsMap[
                                                        'index9OnActionTriggerAnimation3']!
                                                    .controller
                                                    .forward(from: 0.0);
                                              }
                                              FFAppState().Bquest9 = '3';
                                              safeSetState(() {});
                                              await Future.delayed(
                                                Duration(
                                                  milliseconds: 100,
                                                ),
                                              );
                                              _model.pagebarthel = 10;
                                              safeSetState(() {});
                                            },
                                            child: wrapWithModel(
                                              model: _model.index9Model3,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: Index9Widget(
                                                num: '2',
                                                text: 'กลั้นได้เป็นปกติ',
                                                barthel: '3',
                                              ),
                                            ),
                                          ).animateOnActionTrigger(
                                            animationsMap[
                                                'index9OnActionTriggerAnimation3']!,
                                          ),
                                    ][index]();
                                  },
                                ),
                              ),
                            ].divide(SizedBox(height: 24.0)),
                          ),
                        ),
                      ],
                    );
                  } else if (_model.pagebarthel == 10) {
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
                              child: ListView(
                                padding: EdgeInsets.fromLTRB(
                                  0,
                                  8.0,
                                  0,
                                  32.0,
                                ),
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(0.0, -1.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.network(
                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/healflow-1ya11l/assets/dbbl11udqfih/ChatGPT_Image_18_เม.ย._2568_13_47_20-removebg-preview.png',
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
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 16.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: Text(
                                            'การกลั้นปัสสาวะในระยะ 1 สัปดาห์ที่ผ่านมา',
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .titleMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMediumFamily,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.normal,
                                                  lineHeight: 1.8,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .titleMediumIsCustom,
                                                ),
                                          ),
                                        ),
                                      ].divide(SizedBox(height: 4.0)),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 16.0, 0.0),
                                    child: MasonryGridView.builder(
                                      physics:
                                          const NeverScrollableScrollPhysics(),
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
                                      crossAxisSpacing: 16.0,
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
                                      padding: EdgeInsets.fromLTRB(
                                        0,
                                        0,
                                        0,
                                        0,
                                      ),
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
                                                          'index10OnActionTriggerAnimation1'] !=
                                                      null) {
                                                    animationsMap[
                                                            'index10OnActionTriggerAnimation1']!
                                                        .controller
                                                        .forward(from: 0.0);
                                                  }
                                                  FFAppState().Bquest10 = '1';
                                                  safeSetState(() {});
                                                  await Future.delayed(
                                                    Duration(
                                                      milliseconds: 100,
                                                    ),
                                                  );
                                                },
                                                child: wrapWithModel(
                                                  model: _model.index10Model1,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: Index10Widget(
                                                    num: '0',
                                                    text:
                                                        'กลั้นไม่ได้หรือใส่สายสวนปัสสาวะแต่ไม่สามารถดูแลเองได้',
                                                    barthel: '1',
                                                  ),
                                                ),
                                              ).animateOnActionTrigger(
                                                animationsMap[
                                                    'index10OnActionTriggerAnimation1']!,
                                              ),
                                          () => InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  if (animationsMap[
                                                          'index10OnActionTriggerAnimation2'] !=
                                                      null) {
                                                    animationsMap[
                                                            'index10OnActionTriggerAnimation2']!
                                                        .controller
                                                        .forward(from: 0.0);
                                                  }
                                                  FFAppState().Bquest10 = '2';
                                                  safeSetState(() {});
                                                  await Future.delayed(
                                                    Duration(
                                                      milliseconds: 100,
                                                    ),
                                                  );
                                                },
                                                child: wrapWithModel(
                                                  model: _model.index10Model2,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: Index10Widget(
                                                    num: '1',
                                                    text:
                                                        'กลั้นไม่ได้บางครั้ง (ไม่เกิน 1 ครั้งต่อสัปดาห์)',
                                                    barthel: '2',
                                                  ),
                                                ),
                                              ).animateOnActionTrigger(
                                                animationsMap[
                                                    'index10OnActionTriggerAnimation2']!,
                                              ),
                                          () => InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  if (animationsMap[
                                                          'index10OnActionTriggerAnimation3'] !=
                                                      null) {
                                                    animationsMap[
                                                            'index10OnActionTriggerAnimation3']!
                                                        .controller
                                                        .forward(from: 0.0);
                                                  }
                                                  FFAppState().Bquest10 = '3';
                                                  safeSetState(() {});
                                                  await Future.delayed(
                                                    Duration(
                                                      milliseconds: 100,
                                                    ),
                                                  );
                                                },
                                                child: wrapWithModel(
                                                  model: _model.index10Model3,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: Index10Widget(
                                                    num: '2',
                                                    text: 'กลั้นได้เป็นปกติ',
                                                    barthel: '3',
                                                  ),
                                                ),
                                              ).animateOnActionTrigger(
                                                animationsMap[
                                                    'index10OnActionTriggerAnimation3']!,
                                              ),
                                        ][index]();
                                      },
                                    ),
                                  ),
                                ].divide(SizedBox(height: 24.0)),
                              ),
                            ),
                          ],
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.0, 1.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              _model.pagebarthel = 11;
                              safeSetState(() {});
                            },
                            child: wrapWithModel(
                              model: _model.startAsBottomModel,
                              updateCallback: () => safeSetState(() {}),
                              child: StartAsBottomWidget(
                                text: 'บันทึก',
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  } else if (_model.pagebarthel == 11) {
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
                          child: ListView(
                            padding: EdgeInsets.fromLTRB(
                              0,
                              8.0,
                              0,
                              32.0,
                            ),
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            children: [
                              Align(
                                alignment: AlignmentDirectional(0.0, -1.0),
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
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 0.0),
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    borderRadius: BorderRadius.circular(24.0),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(12.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            FaIcon(
                                              FontAwesomeIcons.solidFile,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              size: 14.0,
                                            ),
                                            Text(
                                              'เกณฑ์การให้คะแนน กิจวัตรประจำวัน ADL',
                                              style:
                                                  FlutterFlowTheme.of(context)
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
                                          ].divide(SizedBox(width: 8.0)),
                                        ),
                                        Text(
                                          'คุณได้ 6 คะแนน',
                                          style: FlutterFlowTheme.of(context)
                                              .headlineSmall
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineSmallFamily,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                letterSpacing: 0.0,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .headlineSmallIsCustom,
                                              ),
                                        ),
                                        Text(
                                          'พึ่งพาค่อนข้างมาก/รุนแรง (ต้องการความช่วยเหลือในหลายด้าน) ',
                                          style: FlutterFlowTheme.of(context)
                                              .labelLarge
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .labelLargeFamily,
                                                letterSpacing: 0.0,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
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
                                            padding: EdgeInsets.all(12.0),
                                            child: Text(
                                              'ผู้ป่วยต้องได้รับการดูแลที่ดี จากลูกหลานเพื่อให้มีสุขภาพกายและจิตที่ดี สามารถใช้ชีวิตอยู่ได้ด้วยการอยู่กับลูกหลาน',
                                              textAlign: TextAlign.start,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        letterSpacing: 0.0,
                                                        lineHeight: 1.5,
                                                        useGoogleFonts:
                                                            !FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMediumIsCustom,
                                                      ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 16.0, 0.0, 0.0),
                                          child: FFButtonWidget(
                                            onPressed: () async {
                                              context.pushNamed(
                                                  InformationCommunityOneWidget
                                                      .routeName);

                                              FFAppState().Bquest1 = '';
                                              FFAppState().Bquest2 = '';
                                              FFAppState().Bquest3 = '';
                                              FFAppState().Bquest4 = '';
                                              FFAppState().Bquest5 = '';
                                              FFAppState().Bquest6 = '';
                                              FFAppState().Bquest7 = '';
                                              FFAppState().Bquest8 = '';
                                              FFAppState().Bquest9 = '';
                                              FFAppState().Bquest10 = '';
                                              FFAppState().Bquest11 = '';
                                              safeSetState(() {});
                                              _model.pagebarthel = 1;
                                              _model.voiceQuast1 = false;
                                              _model.voiceQuast2 = false;
                                              _model.voiceQuast3 = false;
                                              _model.voiceQuast4 = false;
                                              _model.voiceQuast5 = false;
                                              _model.voiceQuast6 = false;
                                              _model.voiceQuast7 = false;
                                              _model.voiceQuast8 = false;
                                              _model.voiceQuast9 = false;
                                              _model.voiceQuast10 = false;
                                              safeSetState(() {});
                                            },
                                            text: 'กลับสู่หน้าหลัก',
                                            options: FFButtonOptions(
                                              width: double.infinity,
                                              height: 48.0,
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 0.0, 16.0, 0.0),
                                              iconAlignment:
                                                  IconAlignment.start,
                                              iconPadding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .customColor5,
                                              textStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumFamily,
                                                    color: FlutterFlowTheme.of(
                                                            context)
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
                                      ].divide(SizedBox(height: 16.0)),
                                    ),
                                  ),
                                ),
                              ),
                            ].divide(SizedBox(height: 24.0)),
                          ),
                        ),
                      ],
                    );
                  } else {
                    return Container(
                      width: 10.0,
                      height: 10.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
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
