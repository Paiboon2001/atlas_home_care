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
import '/flutter_flow/flutter_flow_icon_button.dart';
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
import 'barthel_index_score_model.dart';
export 'barthel_index_score_model.dart';

class BarthelIndexScoreWidget extends StatefulWidget {
  const BarthelIndexScoreWidget({
    super.key,
    this.pagebarthel,
  });

  final bool? pagebarthel;

  static String routeName = 'Barthel_Index_Score';
  static String routePath = '/barthelIndexScore';

  @override
  State<BarthelIndexScoreWidget> createState() =>
      _BarthelIndexScoreWidgetState();
}

class _BarthelIndexScoreWidgetState extends State<BarthelIndexScoreWidget>
    with TickerProviderStateMixin {
  late BarthelIndexScoreModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BarthelIndexScoreModel());

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
                  return Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30.0,
                      borderWidth: 1.0,
                      buttonSize: 40.0,
                      icon: Icon(
                        Icons.arrow_back_ios_new_rounded,
                        color: Colors.white,
                        size: 18.0,
                      ),
                      onPressed: () async {
                        _model.pagebarthel = 1;
                        safeSetState(() {});
                      },
                    ),
                  );
                } else if (_model.pagebarthel == 3) {
                  return Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30.0,
                      borderWidth: 1.0,
                      buttonSize: 40.0,
                      icon: Icon(
                        Icons.arrow_back_ios_new_rounded,
                        color: Colors.white,
                        size: 18.0,
                      ),
                      onPressed: () async {
                        _model.pagebarthel = 2;
                        safeSetState(() {});
                      },
                    ),
                  );
                } else if (_model.pagebarthel == 4) {
                  return Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30.0,
                      borderWidth: 1.0,
                      buttonSize: 40.0,
                      icon: Icon(
                        Icons.arrow_back_ios_new_rounded,
                        color: Colors.white,
                        size: 18.0,
                      ),
                      onPressed: () async {
                        _model.pagebarthel = 3;
                        safeSetState(() {});
                      },
                    ),
                  );
                } else if (_model.pagebarthel == 5) {
                  return Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30.0,
                      borderWidth: 1.0,
                      buttonSize: 40.0,
                      icon: Icon(
                        Icons.arrow_back_ios_new_rounded,
                        color: Colors.white,
                        size: 18.0,
                      ),
                      onPressed: () async {
                        _model.pagebarthel = 4;
                        safeSetState(() {});
                      },
                    ),
                  );
                } else if (_model.pagebarthel == 6) {
                  return Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30.0,
                      borderWidth: 1.0,
                      buttonSize: 40.0,
                      icon: Icon(
                        Icons.arrow_back_ios_new_rounded,
                        color: Colors.white,
                        size: 18.0,
                      ),
                      onPressed: () async {
                        _model.pagebarthel = 5;
                        safeSetState(() {});
                      },
                    ),
                  );
                } else if (_model.pagebarthel == 7) {
                  return Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30.0,
                      borderWidth: 1.0,
                      buttonSize: 40.0,
                      icon: Icon(
                        Icons.arrow_back_ios_new_rounded,
                        color: Colors.white,
                        size: 18.0,
                      ),
                      onPressed: () async {
                        _model.pagebarthel = 6;
                        safeSetState(() {});
                      },
                    ),
                  );
                } else if (_model.pagebarthel == 8) {
                  return Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30.0,
                      borderWidth: 1.0,
                      buttonSize: 40.0,
                      icon: Icon(
                        Icons.arrow_back_ios_new_rounded,
                        color: Colors.white,
                        size: 18.0,
                      ),
                      onPressed: () async {
                        _model.pagebarthel = 7;
                        safeSetState(() {});
                      },
                    ),
                  );
                } else if (_model.pagebarthel == 9) {
                  return Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30.0,
                      borderWidth: 1.0,
                      buttonSize: 40.0,
                      icon: Icon(
                        Icons.arrow_back_ios_new_rounded,
                        color: Colors.white,
                        size: 18.0,
                      ),
                      onPressed: () async {
                        _model.pagebarthel = 8;
                        safeSetState(() {});
                      },
                    ),
                  );
                } else if (_model.pagebarthel == 10) {
                  return Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30.0,
                      borderWidth: 1.0,
                      buttonSize: 40.0,
                      icon: Icon(
                        Icons.arrow_back_ios_new_rounded,
                        color: Colors.white,
                        size: 18.0,
                      ),
                      onPressed: () async {
                        _model.pagebarthel = 9;
                        safeSetState(() {});
                      },
                    ),
                  );
                } else if (_model.pagebarthel == 11) {
                  return Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30.0,
                      borderWidth: 1.0,
                      buttonSize: 40.0,
                      icon: Icon(
                        Icons.arrow_back_ios_new_rounded,
                        color: Colors.white,
                        size: 18.0,
                      ),
                      onPressed: () async {
                        _model.pagebarthel = 10;
                        safeSetState(() {});
                      },
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
                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/healflow-1ya11l/assets/nie8jnrv6o0k/ChatGPT_Image_25_ส.ค._2568_08_43_15.png',
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
                                        'การรับประทานอาหาร\n(เมื่อเตรียมไว้ให้เรียบร้อยต่อหน้า)',
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
                                                text: 'ต้องมีคนป้อนให้',
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
                                                text: 'มีคนช่วยบางส่วน',
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
                                                text: 'ช่วยตัวเองได้ปกติ',
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
                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/healflow-1ya11l/assets/s2dil7xib0m5/ChatGPT_Image_25_ส.ค._2568_08_45_50.png',
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
                                        'ลุกจากที่นอนหรือจากเตียงไปยังเก้าอี้',
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
                                                text: 'ไม่สามารถนั่งได้',
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
                                                    'ต้องการความช่วยเหลืออย่างมาก',
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
                                                    'ต้องการความช่วยเหลือบ้าง',
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
                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/healflow-1ya11l/assets/6z75n48hr0gw/ChatGPT_Image_25_ส.ค._2568_09_13_27.png',
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
                                        'การล้างหน้า หวีผม แปรงฟัน โกนหนวด',
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
                                                text: 'ทำได้เอง',
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
                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/healflow-1ya11l/assets/x8owjxev13at/ChatGPT_Image_25_ส.ค._2568_08_54_26.png',
                                    width: () {
                                      if (MediaQuery.sizeOf(context).width <
                                          kBreakpointSmall) {
                                        return 180.0;
                                      } else if (MediaQuery.sizeOf(context)
                                              .width <
                                          kBreakpointMedium) {
                                        return 180.0;
                                      } else if (MediaQuery.sizeOf(context)
                                              .width <
                                          kBreakpointLarge) {
                                        return 280.0;
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
                                        'การเข้าห้องน้ำ',
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
                                                text: 'ช่วยตัวเองไม่เป็น',
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
                                                text: 'ทำเองได้บ้าง',
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
                                                text: 'ช่วยตัวเองได้ดี',
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
                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/healflow-1ya11l/assets/6oh3z37b3j5p/ChatGPT_Image_25_ส.ค._2568_09_15_24.png',
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
                                                text: 'ต้องมีคนช่วย',
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
                                                text: 'อาบน้ำได้เอง',
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
                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/healflow-1ya11l/assets/nk3l34rc08cl/ChatGPT_Image_25_ส.ค._2568_09_41_10.png',
                                    width: () {
                                      if (MediaQuery.sizeOf(context).width <
                                          kBreakpointSmall) {
                                        return 180.0;
                                      } else if (MediaQuery.sizeOf(context)
                                              .width <
                                          kBreakpointMedium) {
                                        return 180.0;
                                      } else if (MediaQuery.sizeOf(context)
                                              .width <
                                          kBreakpointLarge) {
                                        return 280.0;
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
                                                    'ใช้รถเข็นช่วยตนเองให้เคลื่อนที่ได้เอง',
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
                                                    'เดินหรือเคลื่อนที่โดยมีคนช่วย',
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
                                                    'เดินหรือเคลื่อนที่ได้เอง',
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
                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/healflow-1ya11l/assets/7rgboh1m6v7y/ChatGPT_Image_25_ส.ค._2568_09_59_33.png',
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
                                        return 200.0;
                                      } else if (MediaQuery.sizeOf(context)
                                              .width <
                                          kBreakpointMedium) {
                                        return 200.0;
                                      } else if (MediaQuery.sizeOf(context)
                                              .width <
                                          kBreakpointLarge) {
                                        return 300.0;
                                      } else {
                                        return 300.0;
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
                                                text: 'ต้องการคนช่วยเหลือ',
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
                                                text: 'ขึ้นลงได้เอง',
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
                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/healflow-1ya11l/assets/zmtpr4qr5rc6/short.png',
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
                                                text: 'ต้องมีคนสวมใส่ให้',
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
                                                text: 'ช่วยตนเองได้บางส่วน',
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
                                                text: 'ช่วยตนเองได้ดี',
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
                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/healflow-1ya11l/assets/ojh75yt19083/pool.png',
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
                                        'การกลั้นอุจจาระ',
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
                                                    'กลั้นไม่ได้ ต้องสวนอุจจาระเสมอ',
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
                                                text: 'กลั้นไม่ได้เป็นบางครั้ง',
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
                                                text: 'กลั้นได้ปกติ',
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
                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/healflow-1ya11l/assets/8inxl0ag95dw/gool.png',
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
                                            'การกลั้นปัสสาวะ',
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
                                                        'กลั้นไม่ได้ ใส่สายสวนปัสสาวะ',
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
                                                        'กลั้นไม่ได้เป็นบางครั้ง',
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
                                                    text: 'กลั้นได้ปกติ',
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
                    return ListView(
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
                                        'เกณฑ์การให้คะแนน Barthel Index Score',
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
                                    ].divide(SizedBox(width: 8.0)),
                                  ),
                                  Text(
                                    'คุณได้ 8 คะแนน',
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
                                    'พิการมาก/ช่วยเหลือตนเองได้น้อย\n(Severity Disabled)',
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
                                    height: 80.0,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFFFEDED),
                                      borderRadius: BorderRadius.circular(16.0),
                                    ),
                                    child: Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsets.all(12.0),
                                        child: Text(
                                          'เข้าเกณฑ์การส่งเยี่ยม',
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMediumFamily,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                letterSpacing: 0.0,
                                                lineHeight: 1.5,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .titleMediumIsCustom,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: double.infinity,
                                    height: 80.0,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFFFF1DD),
                                      borderRadius: BorderRadius.circular(16.0),
                                    ),
                                    child: Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsets.all(12.0),
                                        child: RichText(
                                          textScaler:
                                              MediaQuery.of(context).textScaler,
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: 'เข้าเกณฑ์การส่งเยี่ยม\n',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .titleMedium
                                                    .override(
                                                      fontFamily:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleMediumFamily,
                                                      color: Color(0xFFD88100),
                                                      letterSpacing: 0.0,
                                                      lineHeight: 1.5,
                                                      useGoogleFonts:
                                                          !FlutterFlowTheme.of(
                                                                  context)
                                                              .titleMediumIsCustom,
                                                    ),
                                              ),
                                              TextSpan(
                                                text: 'กรุณาตรวจสอบเงื่อนไข',
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
                                              )
                                            ],
                                            style: FlutterFlowTheme.of(context)
                                                .titleMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMediumFamily,
                                                  color: Color(0xFFD88100),
                                                  letterSpacing: 0.0,
                                                  lineHeight: 1.8,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .titleMediumIsCustom,
                                                ),
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: double.infinity,
                                    height: 80.0,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFD9F9E3),
                                      borderRadius: BorderRadius.circular(16.0),
                                    ),
                                    child: Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsets.all(12.0),
                                        child: Text(
                                          'อาการปกติดี',
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMediumFamily,
                                                color: Color(0xFF229E27),
                                                letterSpacing: 0.0,
                                                lineHeight: 1.5,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .titleMediumIsCustom,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
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
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16.0, 0.0, 16.0, 0.0),
                                        iconAlignment: IconAlignment.start,
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
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
                                                      .secondaryBackground,
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
                                ].divide(SizedBox(height: 16.0)),
                              ),
                            ),
                          ),
                        ),
                      ].divide(SizedBox(height: 24.0)),
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
