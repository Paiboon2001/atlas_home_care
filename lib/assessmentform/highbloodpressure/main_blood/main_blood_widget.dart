import '/assessmentform/highbloodpressure/widget/bloodpage/bloodpage_widget.dart';
import '/assessmentform/highbloodpressure/widget/drink/drink_widget.dart';
import '/assessmentform/highbloodpressure/widget/many_al/many_al_widget.dart';
import '/assessmentform/highbloodpressure/widget/manysk/manysk_widget.dart';
import '/assessmentform/highbloodpressure/widget/per_six/per_six_widget.dart';
import '/assessmentform/highbloodpressure/widget/skde/skde_widget.dart';
import '/assessmentform/highbloodpressure/widget/smokes/smokes_widget.dart';
import '/assessmentform/highbloodpressure/widget/sum/sum_widget.dart';
import '/assessmentform/thirtytree/widget/cb_click/cb_click_widget.dart';
import '/assessmentform/thirtytree/widget/choose_cancer/choose_cancer_widget.dart';
import '/assessmentform/thirtytree/widget/per_five/per_five_widget.dart';
import '/assessmentform/thirtytree/widget/per_fore/per_fore_widget.dart';
import '/assessmentform/thirtytree/widget/per_one/per_one_widget.dart';
import '/assessmentform/thirtytree/widget/per_three/per_three_widget.dart';
import '/assessmentform/thirtytree/widget/per_two/per_two_widget.dart';
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
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'main_blood_model.dart';
export 'main_blood_model.dart';

class MainBloodWidget extends StatefulWidget {
  const MainBloodWidget({super.key});

  static String routeName = 'Main_Blood';
  static String routePath = '/mainBlood';

  @override
  State<MainBloodWidget> createState() => _MainBloodWidgetState();
}

class _MainBloodWidgetState extends State<MainBloodWidget>
    with TickerProviderStateMixin {
  late MainBloodModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MainBloodModel());

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
      'containerOnActionTriggerAnimation1': AnimationInfo(
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
      'containerOnActionTriggerAnimation2': AnimationInfo(
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
      'perOneOnActionTriggerAnimation1': AnimationInfo(
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
      'perOneOnActionTriggerAnimation2': AnimationInfo(
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
      'perOneOnActionTriggerAnimation3': AnimationInfo(
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
      'perTwoOnActionTriggerAnimation1': AnimationInfo(
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
      'perTwoOnActionTriggerAnimation2': AnimationInfo(
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
      'perTwoOnActionTriggerAnimation3': AnimationInfo(
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
      'perThreeOnActionTriggerAnimation1': AnimationInfo(
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
      'perThreeOnActionTriggerAnimation2': AnimationInfo(
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
      'perThreeOnActionTriggerAnimation3': AnimationInfo(
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
      'perForeOnActionTriggerAnimation1': AnimationInfo(
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
      'perForeOnActionTriggerAnimation2': AnimationInfo(
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
      'perForeOnActionTriggerAnimation3': AnimationInfo(
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
      'perFiveOnActionTriggerAnimation1': AnimationInfo(
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
      'perFiveOnActionTriggerAnimation2': AnimationInfo(
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
      'perFiveOnActionTriggerAnimation3': AnimationInfo(
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
      'perSixOnActionTriggerAnimation1': AnimationInfo(
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
      'perSixOnActionTriggerAnimation2': AnimationInfo(
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
      'perSixOnActionTriggerAnimation3': AnimationInfo(
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
      'perOneOnActionTriggerAnimation4': AnimationInfo(
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
      'perOneOnActionTriggerAnimation5': AnimationInfo(
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
      'perTwoOnActionTriggerAnimation4': AnimationInfo(
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
      'perTwoOnActionTriggerAnimation5': AnimationInfo(
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
      'perThreeOnActionTriggerAnimation4': AnimationInfo(
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
      'perThreeOnActionTriggerAnimation5': AnimationInfo(
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
      'perForeOnActionTriggerAnimation4': AnimationInfo(
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
      'perForeOnActionTriggerAnimation5': AnimationInfo(
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
      'perFiveOnActionTriggerAnimation4': AnimationInfo(
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
      'perFiveOnActionTriggerAnimation5': AnimationInfo(
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
      'perOneOnActionTriggerAnimation6': AnimationInfo(
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
      'perOneOnActionTriggerAnimation7': AnimationInfo(
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
      'perTwoOnActionTriggerAnimation6': AnimationInfo(
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
      'perTwoOnActionTriggerAnimation7': AnimationInfo(
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
      'perThreeOnActionTriggerAnimation6': AnimationInfo(
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
      'perThreeOnActionTriggerAnimation7': AnimationInfo(
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
      'perForeOnActionTriggerAnimation6': AnimationInfo(
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
      'perForeOnActionTriggerAnimation7': AnimationInfo(
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
      'perFiveOnActionTriggerAnimation6': AnimationInfo(
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
      'perFiveOnActionTriggerAnimation7': AnimationInfo(
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
      'perTwoOnActionTriggerAnimation8': AnimationInfo(
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
      'perTwoOnActionTriggerAnimation9': AnimationInfo(
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
      'perThreeOnActionTriggerAnimation8': AnimationInfo(
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
      'perThreeOnActionTriggerAnimation9': AnimationInfo(
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
      'perOneOnActionTriggerAnimation8': AnimationInfo(
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
      'perOneOnActionTriggerAnimation9': AnimationInfo(
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
      'perOneOnActionTriggerAnimation10': AnimationInfo(
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
      'smokesOnActionTriggerAnimation1': AnimationInfo(
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
      'smokesOnActionTriggerAnimation2': AnimationInfo(
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
      'smokesOnActionTriggerAnimation3': AnimationInfo(
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
      'drinkOnActionTriggerAnimation1': AnimationInfo(
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
      'drinkOnActionTriggerAnimation2': AnimationInfo(
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
      'drinkOnActionTriggerAnimation3': AnimationInfo(
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
      'bloodpageOnActionTriggerAnimation1': AnimationInfo(
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
      'bloodpageOnActionTriggerAnimation2': AnimationInfo(
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
      'bloodpageOnActionTriggerAnimation3': AnimationInfo(
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
      'bloodpageOnActionTriggerAnimation4': AnimationInfo(
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
      'bloodpageOnActionTriggerAnimation5': AnimationInfo(
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
                if (_model.pagefamily == 1) {
                  return InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.pushNamed(BloodSummaryWidget.routeName);

                      _model.pagefamily = 1;
                      safeSetState(() {});
                    },
                    child: Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      size: 20.0,
                    ),
                  );
                } else if (_model.pagefamily == 2) {
                  return InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      _model.pagefamily = 1;
                      safeSetState(() {});
                    },
                    child: Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      size: 20.0,
                    ),
                  );
                } else if (_model.pagefamily == 3) {
                  return InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      _model.pagefamily = 2;
                      safeSetState(() {});
                    },
                    child: Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      size: 20.0,
                    ),
                  );
                } else if (_model.pagefamily == 4) {
                  return InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      _model.pagefamily = 3;
                      safeSetState(() {});
                    },
                    child: Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      size: 20.0,
                    ),
                  );
                } else if (_model.pagefamily == 5) {
                  return InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      _model.pagefamily = 4;
                      safeSetState(() {});
                    },
                    child: Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      size: 20.0,
                    ),
                  );
                } else if (_model.pagefamily == 6) {
                  return InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      _model.pagefamily = 5;
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
                  if (_model.pagefamily == 1) {
                    return Text(
                      'ข้อมูลครอบครัว',
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
                  } else if (_model.pagefamily == 2) {
                    return Text(
                      'ประวัติการเจ็บป่วย',
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
                  } else if (_model.pagefamily == 3) {
                    return Text(
                      'การสูบบุหรี่',
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
                  } else if (_model.pagefamily == 4) {
                    return Text(
                      'การดื่มแอลกอฮอล์',
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
                  } else if (_model.pagefamily == 5) {
                    return Text(
                      'การออกกำลังกาย',
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
                  } else if (_model.pagefamily == 6) {
                    return Text(
                      'การรับประทานอาหาร',
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
                  } else if (_model.pagefamily == 7) {
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
                        animationsMap['textOnPageLoadAnimation7']!);
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
            Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                borderWidth: 1.0,
                buttonSize: 40.0,
                icon: Icon(
                  Icons.close_rounded,
                  color: Colors.white,
                  size: 24.0,
                ),
                onPressed: () async {
                  context.pushNamed(InformationCommunityOneWidget.routeName);
                },
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
          borderRadius: BorderRadius.circular(0.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Builder(
                builder: (context) {
                  if (_model.pagefamily == 1) {
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
                                      color: Color(0x1AFFFFFF),
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
                                      color: Color(0x1AFFFFFF),
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
                                      color: Color(0x1AFFFFFF),
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
                                      color: Color(0x1AFFFFFF),
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
                                      color: Color(0x1AFFFFFF),
                                      borderRadius:
                                          BorderRadius.circular(100.0),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 8.0, 0.0, 0.0),
                                child: ListView(
                                  padding: EdgeInsets.fromLTRB(
                                    0,
                                    16.0,
                                    0,
                                    104.0,
                                  ),
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 0.0, 16.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          RichText(
                                            textScaler: MediaQuery.of(context)
                                                .textScaler,
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text:
                                                      '1.บิดาหรือมารดาของท่าน มีประวัติการเจ็บป่วยด้วยโรค ',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .titleLarge
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleLargeFamily,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts:
                                                            !FlutterFlowTheme
                                                                    .of(context)
                                                                .titleLargeIsCustom,
                                                      ),
                                                ),
                                                TextSpan(
                                                  text:
                                                      '(เลือกได้มากกว่า 1 คำตอบ)',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .titleMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleMediumFamily,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        useGoogleFonts:
                                                            !FlutterFlowTheme
                                                                    .of(context)
                                                                .titleMediumIsCustom,
                                                      ),
                                                )
                                              ],
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .titleMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleMediumFamily,
                                                        letterSpacing: 0.0,
                                                        lineHeight: 1.8,
                                                        useGoogleFonts:
                                                            !FlutterFlowTheme
                                                                    .of(context)
                                                                .titleMediumIsCustom,
                                                      ),
                                            ),
                                            textAlign: TextAlign.start,
                                          ),
                                          MasonryGridView.builder(
                                            physics:
                                                const NeverScrollableScrollPhysics(),
                                            gridDelegate:
                                                SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                              crossAxisCount: 2,
                                            ),
                                            crossAxisSpacing: () {
                                              if (MediaQuery.sizeOf(context)
                                                      .width <
                                                  kBreakpointSmall) {
                                                return 8.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointMedium) {
                                                return 8.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointLarge) {
                                                return 16.0;
                                              } else {
                                                return 16.0;
                                              }
                                            }(),
                                            mainAxisSpacing: () {
                                              if (MediaQuery.sizeOf(context)
                                                      .width <
                                                  kBreakpointSmall) {
                                                return 8.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointMedium) {
                                                return 8.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointLarge) {
                                                return 16.0;
                                              } else {
                                                return 16.0;
                                              }
                                            }(),
                                            itemCount: 9,
                                            shrinkWrap: true,
                                            itemBuilder: (context, index) {
                                              return [
                                                () => InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        FFAppState().cen =
                                                            false;
                                                        safeSetState(() {});
                                                      },
                                                      child: wrapWithModel(
                                                        model: _model
                                                            .cbClickModel1,
                                                        updateCallback: () =>
                                                            safeSetState(() {}),
                                                        child: CbClickWidget(
                                                          text: 'เบาหวาน',
                                                        ),
                                                      ),
                                                    ),
                                                () => InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        FFAppState().cen =
                                                            false;
                                                        safeSetState(() {});
                                                      },
                                                      child: wrapWithModel(
                                                        model: _model
                                                            .cbClickModel2,
                                                        updateCallback: () =>
                                                            safeSetState(() {}),
                                                        child: CbClickWidget(
                                                          text:
                                                              'ความดันโลหิตสูง',
                                                        ),
                                                      ),
                                                    ),
                                                () => InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        FFAppState().cen =
                                                            false;
                                                        safeSetState(() {});
                                                      },
                                                      child: wrapWithModel(
                                                        model: _model
                                                            .cbClickModel3,
                                                        updateCallback: () =>
                                                            safeSetState(() {}),
                                                        child: CbClickWidget(
                                                          text: 'โรคเก๊าท์',
                                                        ),
                                                      ),
                                                    ),
                                                () => InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        FFAppState().cen =
                                                            false;
                                                        safeSetState(() {});
                                                      },
                                                      child: wrapWithModel(
                                                        model: _model
                                                            .cbClickModel4,
                                                        updateCallback: () =>
                                                            safeSetState(() {}),
                                                        child: CbClickWidget(
                                                          text: 'ไตวายเรื้อรัง',
                                                        ),
                                                      ),
                                                    ),
                                                () => InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        FFAppState().cen =
                                                            false;
                                                        safeSetState(() {});
                                                      },
                                                      child: wrapWithModel(
                                                        model: _model
                                                            .cbClickModel5,
                                                        updateCallback: () =>
                                                            safeSetState(() {}),
                                                        child: CbClickWidget(
                                                          text:
                                                              'กล้ามเนื้อหัวใจตาย',
                                                        ),
                                                      ),
                                                    ),
                                                () => InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        FFAppState().cen =
                                                            false;
                                                        safeSetState(() {});
                                                      },
                                                      child: wrapWithModel(
                                                        model: _model
                                                            .cbClickModel6,
                                                        updateCallback: () =>
                                                            safeSetState(() {}),
                                                        child: CbClickWidget(
                                                          text: 'เส้นเลือดสมอง',
                                                        ),
                                                      ),
                                                    ),
                                                () => InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        FFAppState().cen =
                                                            false;
                                                        safeSetState(() {});
                                                      },
                                                      child: wrapWithModel(
                                                        model: _model
                                                            .cbClickModel7,
                                                        updateCallback: () =>
                                                            safeSetState(() {}),
                                                        child: CbClickWidget(
                                                          text: 'ถุงลมโป่งพอง',
                                                        ),
                                                      ),
                                                    ),
                                                () => InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        FFAppState().cen =
                                                            false;
                                                        safeSetState(() {});
                                                      },
                                                      child: wrapWithModel(
                                                        model: _model
                                                            .cbClickModel8,
                                                        updateCallback: () =>
                                                            safeSetState(() {}),
                                                        child: CbClickWidget(
                                                          text: 'ไม่ทราบ',
                                                        ),
                                                      ),
                                                    ),
                                                () => Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            if (_model
                                                                .other01Value1!) {
                                                              safeSetState(() {
                                                                _model.other01Value1 =
                                                                    false;
                                                              });
                                                            } else {
                                                              safeSetState(() {
                                                                _model.other01Value1 =
                                                                    true;
                                                              });
                                                            }

                                                            if (animationsMap[
                                                                    'containerOnActionTriggerAnimation1'] !=
                                                                null) {
                                                              animationsMap[
                                                                      'containerOnActionTriggerAnimation1']!
                                                                  .controller
                                                                  .forward(
                                                                      from:
                                                                          0.0);
                                                            }
                                                            await Future
                                                                .delayed(
                                                              Duration(
                                                                milliseconds:
                                                                    100,
                                                              ),
                                                            );
                                                            await showModalBottomSheet(
                                                              isScrollControlled:
                                                                  true,
                                                              backgroundColor:
                                                                  Colors
                                                                      .transparent,
                                                              enableDrag: false,
                                                              context: context,
                                                              builder:
                                                                  (context) {
                                                                return Padding(
                                                                  padding: MediaQuery
                                                                      .viewInsetsOf(
                                                                          context),
                                                                  child:
                                                                      ChooseCancerWidget(),
                                                                );
                                                              },
                                                            ).then((value) =>
                                                                safeSetState(
                                                                    () {}));
                                                          },
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              gradient:
                                                                  LinearGradient(
                                                                colors: [
                                                                  _model.other01Value1 ==
                                                                          true
                                                                      ? FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondary
                                                                      : FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                  _model.other01Value1 ==
                                                                          true
                                                                      ? FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary
                                                                      : FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground
                                                                ],
                                                                stops: [
                                                                  0.0,
                                                                  1.0
                                                                ],
                                                                begin:
                                                                    AlignmentDirectional(
                                                                        1.0,
                                                                        0.34),
                                                                end:
                                                                    AlignmentDirectional(
                                                                        -1.0,
                                                                        -0.34),
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          24.0),
                                                              border:
                                                                  Border.all(
                                                                color: _model
                                                                            .other01Value1 ==
                                                                        true
                                                                    ? Color(
                                                                        0x00FFFFFF)
                                                                    : Color(
                                                                        0xFFCED4E6),
                                                              ),
                                                            ),
                                                            child: Stack(
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          12.0,
                                                                          20.0,
                                                                          12.0,
                                                                          20.0),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Text(
                                                                        'อื่นๆ',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .labelLarge
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).labelLargeFamily,
                                                                              color: _model.other01Value1 == true ? FlutterFlowTheme.of(context).secondaryBackground : FlutterFlowTheme.of(context).secondaryText,
                                                                              letterSpacing: 0.0,
                                                                              useGoogleFonts: !FlutterFlowTheme.of(context).labelLargeIsCustom,
                                                                            ),
                                                                      ),
                                                                    ].divide(SizedBox(
                                                                        width:
                                                                            4.0)),
                                                                  ),
                                                                ),
                                                                Theme(
                                                                  data:
                                                                      ThemeData(
                                                                    checkboxTheme:
                                                                        CheckboxThemeData(
                                                                      visualDensity:
                                                                          VisualDensity
                                                                              .compact,
                                                                      materialTapTargetSize:
                                                                          MaterialTapTargetSize
                                                                              .shrinkWrap,
                                                                      shape:
                                                                          RoundedRectangleBorder(
                                                                        borderRadius:
                                                                            BorderRadius.circular(4.0),
                                                                      ),
                                                                    ),
                                                                    unselectedWidgetColor:
                                                                        Color(
                                                                            0x00EAEFFB),
                                                                  ),
                                                                  child:
                                                                      Checkbox(
                                                                    value: _model
                                                                            .other01Value1 ??=
                                                                        false,
                                                                    onChanged:
                                                                        (newValue) async {
                                                                      safeSetState(() =>
                                                                          _model.other01Value1 =
                                                                              newValue!);
                                                                    },
                                                                    side: (Color(0x00EAEFFB) !=
                                                                            null)
                                                                        ? BorderSide(
                                                                            width:
                                                                                2,
                                                                            color:
                                                                                Color(0x00EAEFFB)!,
                                                                          )
                                                                        : null,
                                                                    activeColor:
                                                                        Color(
                                                                            0x00339FF3),
                                                                    checkColor:
                                                                        Color(
                                                                            0x00FFFFFF),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ).animateOnActionTrigger(
                                                          animationsMap[
                                                              'containerOnActionTriggerAnimation1']!,
                                                        ),
                                                        if (FFAppState().cen ==
                                                            true)
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        4.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            24.0),
                                                                border:
                                                                    Border.all(
                                                                  color: Color(
                                                                      0xFFCED4E6),
                                                                ),
                                                              ),
                                                              child: Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        12.0,
                                                                        20.0,
                                                                        12.0,
                                                                        20.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Text(
                                                                      'มะเร็ง',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelLarge
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).labelLargeFamily,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryText,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            useGoogleFonts:
                                                                                !FlutterFlowTheme.of(context).labelLargeIsCustom,
                                                                          ),
                                                                    ),
                                                                  ].divide(SizedBox(
                                                                      width:
                                                                          4.0)),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                      ],
                                                    ),
                                              ][index]();
                                            },
                                          ),
                                        ].divide(SizedBox(height: 24.0)),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 0.0, 16.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          RichText(
                                            textScaler: MediaQuery.of(context)
                                                .textScaler,
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text:
                                                      '2.พี่น้อง (สายตรง) ของท่าน มีประวัติการเจ็บป่วยด้วยโรค ',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .titleLarge
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleLargeFamily,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts:
                                                            !FlutterFlowTheme
                                                                    .of(context)
                                                                .titleLargeIsCustom,
                                                      ),
                                                ),
                                                TextSpan(
                                                  text:
                                                      '(เลือกได้มากกว่า 1 คำตอบ)',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .titleMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleMediumFamily,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        useGoogleFonts:
                                                            !FlutterFlowTheme
                                                                    .of(context)
                                                                .titleMediumIsCustom,
                                                      ),
                                                )
                                              ],
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .titleMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleMediumFamily,
                                                        letterSpacing: 0.0,
                                                        lineHeight: 1.8,
                                                        useGoogleFonts:
                                                            !FlutterFlowTheme
                                                                    .of(context)
                                                                .titleMediumIsCustom,
                                                      ),
                                            ),
                                            textAlign: TextAlign.start,
                                          ),
                                          MasonryGridView.builder(
                                            physics:
                                                const NeverScrollableScrollPhysics(),
                                            gridDelegate:
                                                SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                              crossAxisCount: 2,
                                            ),
                                            crossAxisSpacing: () {
                                              if (MediaQuery.sizeOf(context)
                                                      .width <
                                                  kBreakpointSmall) {
                                                return 8.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointMedium) {
                                                return 8.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointLarge) {
                                                return 16.0;
                                              } else {
                                                return 16.0;
                                              }
                                            }(),
                                            mainAxisSpacing: () {
                                              if (MediaQuery.sizeOf(context)
                                                      .width <
                                                  kBreakpointSmall) {
                                                return 8.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointMedium) {
                                                return 8.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointLarge) {
                                                return 16.0;
                                              } else {
                                                return 16.0;
                                              }
                                            }(),
                                            itemCount: 9,
                                            shrinkWrap: true,
                                            itemBuilder: (context, index) {
                                              return [
                                                () => InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        FFAppState().cen =
                                                            false;
                                                        safeSetState(() {});
                                                      },
                                                      child: wrapWithModel(
                                                        model: _model
                                                            .cbClickModel9,
                                                        updateCallback: () =>
                                                            safeSetState(() {}),
                                                        child: CbClickWidget(
                                                          text: 'เบาหวาน',
                                                        ),
                                                      ),
                                                    ),
                                                () => InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        FFAppState().cen =
                                                            false;
                                                        safeSetState(() {});
                                                      },
                                                      child: wrapWithModel(
                                                        model: _model
                                                            .cbClickModel10,
                                                        updateCallback: () =>
                                                            safeSetState(() {}),
                                                        child: CbClickWidget(
                                                          text:
                                                              'ความดันโลหิตสูง',
                                                        ),
                                                      ),
                                                    ),
                                                () => InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        FFAppState().cen =
                                                            false;
                                                        safeSetState(() {});
                                                      },
                                                      child: wrapWithModel(
                                                        model: _model
                                                            .cbClickModel11,
                                                        updateCallback: () =>
                                                            safeSetState(() {}),
                                                        child: CbClickWidget(
                                                          text: 'โรคเก๊าท์',
                                                        ),
                                                      ),
                                                    ),
                                                () => InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        FFAppState().cen =
                                                            false;
                                                        safeSetState(() {});
                                                      },
                                                      child: wrapWithModel(
                                                        model: _model
                                                            .cbClickModel12,
                                                        updateCallback: () =>
                                                            safeSetState(() {}),
                                                        child: CbClickWidget(
                                                          text: 'ไตวายเรื้อรัง',
                                                        ),
                                                      ),
                                                    ),
                                                () => InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        FFAppState().cen =
                                                            false;
                                                        safeSetState(() {});
                                                      },
                                                      child: wrapWithModel(
                                                        model: _model
                                                            .cbClickModel13,
                                                        updateCallback: () =>
                                                            safeSetState(() {}),
                                                        child: CbClickWidget(
                                                          text:
                                                              'กล้ามเนื้อหัวใจตาย',
                                                        ),
                                                      ),
                                                    ),
                                                () => InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        FFAppState().cen =
                                                            false;
                                                        safeSetState(() {});
                                                      },
                                                      child: wrapWithModel(
                                                        model: _model
                                                            .cbClickModel14,
                                                        updateCallback: () =>
                                                            safeSetState(() {}),
                                                        child: CbClickWidget(
                                                          text: 'เส้นเลือดสมอง',
                                                        ),
                                                      ),
                                                    ),
                                                () => InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        FFAppState().cen =
                                                            false;
                                                        safeSetState(() {});
                                                      },
                                                      child: wrapWithModel(
                                                        model: _model
                                                            .cbClickModel15,
                                                        updateCallback: () =>
                                                            safeSetState(() {}),
                                                        child: CbClickWidget(
                                                          text: 'ถุงลมโป่งพอง',
                                                        ),
                                                      ),
                                                    ),
                                                () => InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        FFAppState().cen =
                                                            false;
                                                        safeSetState(() {});
                                                      },
                                                      child: wrapWithModel(
                                                        model: _model
                                                            .cbClickModel16,
                                                        updateCallback: () =>
                                                            safeSetState(() {}),
                                                        child: CbClickWidget(
                                                          text: 'ไม่ทราบ',
                                                        ),
                                                      ),
                                                    ),
                                                () => Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            if (_model
                                                                .other01Value2!) {
                                                              safeSetState(() {
                                                                _model.other01Value2 =
                                                                    false;
                                                              });
                                                            } else {
                                                              safeSetState(() {
                                                                _model.other01Value2 =
                                                                    true;
                                                              });
                                                            }

                                                            if (animationsMap[
                                                                    'containerOnActionTriggerAnimation2'] !=
                                                                null) {
                                                              animationsMap[
                                                                      'containerOnActionTriggerAnimation2']!
                                                                  .controller
                                                                  .forward(
                                                                      from:
                                                                          0.0);
                                                            }
                                                            await Future
                                                                .delayed(
                                                              Duration(
                                                                milliseconds:
                                                                    100,
                                                              ),
                                                            );
                                                            await showModalBottomSheet(
                                                              isScrollControlled:
                                                                  true,
                                                              backgroundColor:
                                                                  Colors
                                                                      .transparent,
                                                              enableDrag: false,
                                                              context: context,
                                                              builder:
                                                                  (context) {
                                                                return Padding(
                                                                  padding: MediaQuery
                                                                      .viewInsetsOf(
                                                                          context),
                                                                  child:
                                                                      ChooseCancerWidget(),
                                                                );
                                                              },
                                                            ).then((value) =>
                                                                safeSetState(
                                                                    () {}));
                                                          },
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              gradient:
                                                                  LinearGradient(
                                                                colors: [
                                                                  _model.other01Value2 ==
                                                                          true
                                                                      ? FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondary
                                                                      : FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                  _model.other01Value2 ==
                                                                          true
                                                                      ? FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary
                                                                      : FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground
                                                                ],
                                                                stops: [
                                                                  0.0,
                                                                  1.0
                                                                ],
                                                                begin:
                                                                    AlignmentDirectional(
                                                                        1.0,
                                                                        0.34),
                                                                end:
                                                                    AlignmentDirectional(
                                                                        -1.0,
                                                                        -0.34),
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          24.0),
                                                              border:
                                                                  Border.all(
                                                                color: _model
                                                                            .other01Value2 ==
                                                                        true
                                                                    ? Color(
                                                                        0x00FFFFFF)
                                                                    : Color(
                                                                        0xFFCED4E6),
                                                              ),
                                                            ),
                                                            child: Stack(
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          12.0,
                                                                          20.0,
                                                                          12.0,
                                                                          20.0),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Text(
                                                                        'อื่นๆ',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .labelLarge
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).labelLargeFamily,
                                                                              color: _model.other01Value2 == true ? FlutterFlowTheme.of(context).secondaryBackground : FlutterFlowTheme.of(context).secondaryText,
                                                                              letterSpacing: 0.0,
                                                                              useGoogleFonts: !FlutterFlowTheme.of(context).labelLargeIsCustom,
                                                                            ),
                                                                      ),
                                                                    ].divide(SizedBox(
                                                                        width:
                                                                            4.0)),
                                                                  ),
                                                                ),
                                                                Theme(
                                                                  data:
                                                                      ThemeData(
                                                                    checkboxTheme:
                                                                        CheckboxThemeData(
                                                                      visualDensity:
                                                                          VisualDensity
                                                                              .compact,
                                                                      materialTapTargetSize:
                                                                          MaterialTapTargetSize
                                                                              .shrinkWrap,
                                                                      shape:
                                                                          RoundedRectangleBorder(
                                                                        borderRadius:
                                                                            BorderRadius.circular(4.0),
                                                                      ),
                                                                    ),
                                                                    unselectedWidgetColor:
                                                                        Color(
                                                                            0x00EAEFFB),
                                                                  ),
                                                                  child:
                                                                      Checkbox(
                                                                    value: _model
                                                                            .other01Value2 ??=
                                                                        false,
                                                                    onChanged:
                                                                        (newValue) async {
                                                                      safeSetState(() =>
                                                                          _model.other01Value2 =
                                                                              newValue!);
                                                                    },
                                                                    side: (Color(0x00EAEFFB) !=
                                                                            null)
                                                                        ? BorderSide(
                                                                            width:
                                                                                2,
                                                                            color:
                                                                                Color(0x00EAEFFB)!,
                                                                          )
                                                                        : null,
                                                                    activeColor:
                                                                        Color(
                                                                            0x00339FF3),
                                                                    checkColor:
                                                                        Color(
                                                                            0x00FFFFFF),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ).animateOnActionTrigger(
                                                          animationsMap[
                                                              'containerOnActionTriggerAnimation2']!,
                                                        ),
                                                        if (FFAppState().cen ==
                                                            true)
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        4.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            24.0),
                                                                border:
                                                                    Border.all(
                                                                  color: Color(
                                                                      0xFFCED4E6),
                                                                ),
                                                              ),
                                                              child: Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        12.0,
                                                                        20.0,
                                                                        12.0,
                                                                        20.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Text(
                                                                      'มะเร็ง',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelLarge
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).labelLargeFamily,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryText,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            useGoogleFonts:
                                                                                !FlutterFlowTheme.of(context).labelLargeIsCustom,
                                                                          ),
                                                                    ),
                                                                  ].divide(SizedBox(
                                                                      width:
                                                                          4.0)),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                      ],
                                                    ),
                                              ][index]();
                                            },
                                          ),
                                        ].divide(SizedBox(height: 24.0)),
                                      ),
                                    ),
                                  ].divide(SizedBox(height: 32.0)),
                                ),
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
                              _model.pagefamily = 2;
                              safeSetState(() {});
                            },
                            child: wrapWithModel(
                              model: _model.startAsBottomModel1,
                              updateCallback: () => safeSetState(() {}),
                              child: StartAsBottomWidget(
                                text: 'ถัดไป',
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  } else if (_model.pagefamily == 2) {
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
                          ],
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 8.0, 16.0, 0.0),
                            child: ListView(
                              padding: EdgeInsets.fromLTRB(
                                0,
                                16.0,
                                0,
                                24.0,
                              ),
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              children: [
                                RichText(
                                  textScaler: MediaQuery.of(context).textScaler,
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text:
                                            'คุณมีประวัติการเจ็บป่วย หรือต้องการพบแพทย์ด้วยโรคหรือาการ',
                                        style: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .titleLargeFamily,
                                              color:
                                                  FlutterFlowTheme.of(context)
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
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
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
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        if (responsiveVisibility(
                                          context: context,
                                          tablet: false,
                                          tabletLandscape: false,
                                          desktop: false,
                                        ))
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 8.0),
                                            child: RichText(
                                              textScaler: MediaQuery.of(context)
                                                  .textScaler,
                                              text: TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: 'ส่วนที่ 1 : ข้อ 1-6',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmallFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .titleSmallIsCustom,
                                                        ),
                                                  )
                                                ],
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmallFamily,
                                                          letterSpacing: 0.0,
                                                          lineHeight: 1.8,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .titleSmallIsCustom,
                                                        ),
                                              ),
                                              textAlign: TextAlign.start,
                                            ),
                                          ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            if (responsiveVisibility(
                                              context: context,
                                              phone: false,
                                            ))
                                              Expanded(
                                                child: RichText(
                                                  textScaler:
                                                      MediaQuery.of(context)
                                                          .textScaler,
                                                  text: TextSpan(
                                                    children: [
                                                      TextSpan(
                                                        text:
                                                            'ส่วนที่ 1 : ข้อ 1-6',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmallFamily,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleSmallIsCustom,
                                                                ),
                                                      )
                                                    ],
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmallFamily,
                                                          letterSpacing: 0.0,
                                                          lineHeight: 1.8,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .titleSmallIsCustom,
                                                        ),
                                                  ),
                                                  textAlign: TextAlign.start,
                                                ),
                                              ),
                                            Expanded(
                                              flex: 2,
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Expanded(
                                                    child: InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        if (_model
                                                            .other01Value3!) {
                                                          safeSetState(() {
                                                            _model.other01Value3 =
                                                                false;
                                                          });
                                                        } else {
                                                          safeSetState(() {
                                                            _model.other01Value3 =
                                                                true;
                                                          });
                                                        }
                                                      },
                                                      child: Container(
                                                        width: double.infinity,
                                                        decoration:
                                                            BoxDecoration(
                                                          gradient:
                                                              LinearGradient(
                                                            colors: [
                                                              _model.other01Value3 ==
                                                                      true
                                                                  ? FlutterFlowTheme.of(
                                                                          context)
                                                                      .accent1
                                                                  : FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                              _model.other01Value3 ==
                                                                      true
                                                                  ? FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary
                                                                  : FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground
                                                            ],
                                                            stops: [0.0, 1.0],
                                                            begin:
                                                                AlignmentDirectional(
                                                                    1.0, 0.34),
                                                            end:
                                                                AlignmentDirectional(
                                                                    -1.0,
                                                                    -0.34),
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      100.0),
                                                          shape: BoxShape
                                                              .rectangle,
                                                          border: Border.all(
                                                            color: _model
                                                                        .other01Value3 ==
                                                                    true
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground
                                                                : Color(
                                                                    0xFFCED4E6),
                                                            width: 1.0,
                                                          ),
                                                        ),
                                                        child: Padding(
                                                          padding: EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  valueOrDefault<
                                                                      double>(
                                                                    () {
                                                                      if (MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          kBreakpointSmall) {
                                                                        return 2.0;
                                                                      } else if (MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          kBreakpointMedium) {
                                                                        return 2.0;
                                                                      } else if (MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          kBreakpointLarge) {
                                                                        return 4.0;
                                                                      } else {
                                                                        return 4.0;
                                                                      }
                                                                    }(),
                                                                    0.0,
                                                                  ),
                                                                  valueOrDefault<
                                                                      double>(
                                                                    () {
                                                                      if (MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          kBreakpointSmall) {
                                                                        return 2.0;
                                                                      } else if (MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          kBreakpointMedium) {
                                                                        return 2.0;
                                                                      } else if (MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          kBreakpointLarge) {
                                                                        return 4.0;
                                                                      } else {
                                                                        return 4.0;
                                                                      }
                                                                    }(),
                                                                    0.0,
                                                                  ),
                                                                  8.0,
                                                                  valueOrDefault<
                                                                      double>(
                                                                    () {
                                                                      if (MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          kBreakpointSmall) {
                                                                        return 2.0;
                                                                      } else if (MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          kBreakpointMedium) {
                                                                        return 2.0;
                                                                      } else if (MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          kBreakpointLarge) {
                                                                        return 4.0;
                                                                      } else {
                                                                        return 4.0;
                                                                      }
                                                                    }(),
                                                                    0.0,
                                                                  )),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Theme(
                                                                data: ThemeData(
                                                                  checkboxTheme:
                                                                      CheckboxThemeData(
                                                                    visualDensity:
                                                                        VisualDensity
                                                                            .compact,
                                                                    materialTapTargetSize:
                                                                        MaterialTapTargetSize
                                                                            .shrinkWrap,
                                                                    shape:
                                                                        CircleBorder(),
                                                                  ),
                                                                  unselectedWidgetColor:
                                                                      Color(
                                                                          0xFFCED4E6),
                                                                ),
                                                                child: Checkbox(
                                                                  value: _model
                                                                          .other01Value3 ??=
                                                                      false,
                                                                  onChanged:
                                                                      (newValue) async {
                                                                    safeSetState(() =>
                                                                        _model.other01Value3 =
                                                                            newValue!);
                                                                  },
                                                                  side: (Color(
                                                                              0xFFCED4E6) !=
                                                                          null)
                                                                      ? BorderSide(
                                                                          width:
                                                                              2,
                                                                          color:
                                                                              Color(0xFFCED4E6)!,
                                                                        )
                                                                      : null,
                                                                  activeColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                  checkColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                ),
                                                              ),
                                                              Text(
                                                                'มีทั้งหมด',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelSmall
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .labelSmallFamily,
                                                                      color: _model.other01Value3 ==
                                                                              true
                                                                          ? FlutterFlowTheme.of(context)
                                                                              .secondaryBackground
                                                                          : FlutterFlowTheme.of(context)
                                                                              .secondaryText,
                                                                      fontSize:
                                                                          () {
                                                                        if (MediaQuery.sizeOf(context).width <
                                                                            kBreakpointSmall) {
                                                                          return 12.0;
                                                                        } else if (MediaQuery.sizeOf(context).width <
                                                                            kBreakpointMedium) {
                                                                          return 12.0;
                                                                        } else if (MediaQuery.sizeOf(context).width <
                                                                            kBreakpointLarge) {
                                                                          return 14.0;
                                                                        } else {
                                                                          return 14.0;
                                                                        }
                                                                      }(),
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts:
                                                                          !FlutterFlowTheme.of(context)
                                                                              .labelSmallIsCustom,
                                                                    ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        if (_model
                                                            .other01Value4!) {
                                                          safeSetState(() {
                                                            _model.other01Value4 =
                                                                false;
                                                          });
                                                        } else {
                                                          safeSetState(() {
                                                            _model.other01Value4 =
                                                                true;
                                                          });
                                                        }
                                                      },
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          gradient:
                                                              LinearGradient(
                                                            colors: [
                                                              _model.other01Value4 ==
                                                                      true
                                                                  ? FlutterFlowTheme.of(
                                                                          context)
                                                                      .accent1
                                                                  : FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                              _model.other01Value4 ==
                                                                      true
                                                                  ? FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary
                                                                  : FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground
                                                            ],
                                                            stops: [0.0, 1.0],
                                                            begin:
                                                                AlignmentDirectional(
                                                                    1.0, 0.34),
                                                            end:
                                                                AlignmentDirectional(
                                                                    -1.0,
                                                                    -0.34),
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      100.0),
                                                          shape: BoxShape
                                                              .rectangle,
                                                          border: Border.all(
                                                            color: _model
                                                                        .other01Value4 ==
                                                                    true
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground
                                                                : Color(
                                                                    0xFFCED4E6),
                                                            width: 1.0,
                                                          ),
                                                        ),
                                                        child: Padding(
                                                          padding: EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  valueOrDefault<
                                                                      double>(
                                                                    () {
                                                                      if (MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          kBreakpointSmall) {
                                                                        return 2.0;
                                                                      } else if (MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          kBreakpointMedium) {
                                                                        return 2.0;
                                                                      } else if (MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          kBreakpointLarge) {
                                                                        return 4.0;
                                                                      } else {
                                                                        return 4.0;
                                                                      }
                                                                    }(),
                                                                    0.0,
                                                                  ),
                                                                  valueOrDefault<
                                                                      double>(
                                                                    () {
                                                                      if (MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          kBreakpointSmall) {
                                                                        return 2.0;
                                                                      } else if (MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          kBreakpointMedium) {
                                                                        return 2.0;
                                                                      } else if (MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          kBreakpointLarge) {
                                                                        return 4.0;
                                                                      } else {
                                                                        return 4.0;
                                                                      }
                                                                    }(),
                                                                    0.0,
                                                                  ),
                                                                  8.0,
                                                                  valueOrDefault<
                                                                      double>(
                                                                    () {
                                                                      if (MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          kBreakpointSmall) {
                                                                        return 2.0;
                                                                      } else if (MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          kBreakpointMedium) {
                                                                        return 2.0;
                                                                      } else if (MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          kBreakpointLarge) {
                                                                        return 4.0;
                                                                      } else {
                                                                        return 4.0;
                                                                      }
                                                                    }(),
                                                                    0.0,
                                                                  )),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Theme(
                                                                data: ThemeData(
                                                                  checkboxTheme:
                                                                      CheckboxThemeData(
                                                                    visualDensity:
                                                                        VisualDensity
                                                                            .compact,
                                                                    materialTapTargetSize:
                                                                        MaterialTapTargetSize
                                                                            .shrinkWrap,
                                                                    shape:
                                                                        CircleBorder(),
                                                                  ),
                                                                  unselectedWidgetColor:
                                                                      Color(
                                                                          0xFFCED4E6),
                                                                ),
                                                                child: Checkbox(
                                                                  value: _model
                                                                          .other01Value4 ??=
                                                                      false,
                                                                  onChanged:
                                                                      (newValue) async {
                                                                    safeSetState(() =>
                                                                        _model.other01Value4 =
                                                                            newValue!);
                                                                  },
                                                                  side: (Color(
                                                                              0xFFCED4E6) !=
                                                                          null)
                                                                      ? BorderSide(
                                                                          width:
                                                                              2,
                                                                          color:
                                                                              Color(0xFFCED4E6)!,
                                                                        )
                                                                      : null,
                                                                  activeColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                  checkColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                ),
                                                              ),
                                                              Text(
                                                                'ไม่มีทั้งหมด',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelSmall
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .labelSmallFamily,
                                                                      color: _model.other01Value4 ==
                                                                              true
                                                                          ? FlutterFlowTheme.of(context)
                                                                              .secondaryBackground
                                                                          : FlutterFlowTheme.of(context)
                                                                              .secondaryText,
                                                                      fontSize:
                                                                          () {
                                                                        if (MediaQuery.sizeOf(context).width <
                                                                            kBreakpointSmall) {
                                                                          return 12.0;
                                                                        } else if (MediaQuery.sizeOf(context).width <
                                                                            kBreakpointMedium) {
                                                                          return 12.0;
                                                                        } else if (MediaQuery.sizeOf(context).width <
                                                                            kBreakpointLarge) {
                                                                          return 14.0;
                                                                        } else {
                                                                          return 14.0;
                                                                        }
                                                                      }(),
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts:
                                                                          !FlutterFlowTheme.of(context)
                                                                              .labelSmallIsCustom,
                                                                    ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        if (_model
                                                            .other01Value5!) {
                                                          safeSetState(() {
                                                            _model.other01Value5 =
                                                                false;
                                                          });
                                                        } else {
                                                          safeSetState(() {
                                                            _model.other01Value5 =
                                                                true;
                                                          });
                                                        }
                                                      },
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          gradient:
                                                              LinearGradient(
                                                            colors: [
                                                              _model.other01Value5 ==
                                                                      true
                                                                  ? FlutterFlowTheme.of(
                                                                          context)
                                                                      .accent1
                                                                  : FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                              _model.other01Value5 ==
                                                                      true
                                                                  ? FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary
                                                                  : FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground
                                                            ],
                                                            stops: [0.0, 1.0],
                                                            begin:
                                                                AlignmentDirectional(
                                                                    1.0, 0.34),
                                                            end:
                                                                AlignmentDirectional(
                                                                    -1.0,
                                                                    -0.34),
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      100.0),
                                                          shape: BoxShape
                                                              .rectangle,
                                                          border: Border.all(
                                                            color: _model
                                                                        .other01Value5 ==
                                                                    true
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground
                                                                : Color(
                                                                    0xFFCED4E6),
                                                            width: 1.0,
                                                          ),
                                                        ),
                                                        child: Padding(
                                                          padding: EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  valueOrDefault<
                                                                      double>(
                                                                    () {
                                                                      if (MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          kBreakpointSmall) {
                                                                        return 2.0;
                                                                      } else if (MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          kBreakpointMedium) {
                                                                        return 2.0;
                                                                      } else if (MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          kBreakpointLarge) {
                                                                        return 4.0;
                                                                      } else {
                                                                        return 4.0;
                                                                      }
                                                                    }(),
                                                                    0.0,
                                                                  ),
                                                                  valueOrDefault<
                                                                      double>(
                                                                    () {
                                                                      if (MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          kBreakpointSmall) {
                                                                        return 2.0;
                                                                      } else if (MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          kBreakpointMedium) {
                                                                        return 2.0;
                                                                      } else if (MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          kBreakpointLarge) {
                                                                        return 4.0;
                                                                      } else {
                                                                        return 4.0;
                                                                      }
                                                                    }(),
                                                                    0.0,
                                                                  ),
                                                                  8.0,
                                                                  valueOrDefault<
                                                                      double>(
                                                                    () {
                                                                      if (MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          kBreakpointSmall) {
                                                                        return 2.0;
                                                                      } else if (MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          kBreakpointMedium) {
                                                                        return 2.0;
                                                                      } else if (MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          kBreakpointLarge) {
                                                                        return 4.0;
                                                                      } else {
                                                                        return 4.0;
                                                                      }
                                                                    }(),
                                                                    0.0,
                                                                  )),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Theme(
                                                                data: ThemeData(
                                                                  checkboxTheme:
                                                                      CheckboxThemeData(
                                                                    visualDensity:
                                                                        VisualDensity
                                                                            .compact,
                                                                    materialTapTargetSize:
                                                                        MaterialTapTargetSize
                                                                            .shrinkWrap,
                                                                    shape:
                                                                        CircleBorder(),
                                                                  ),
                                                                  unselectedWidgetColor:
                                                                      Color(
                                                                          0xFFCED4E6),
                                                                ),
                                                                child: Checkbox(
                                                                  value: _model
                                                                          .other01Value5 ??=
                                                                      false,
                                                                  onChanged:
                                                                      (newValue) async {
                                                                    safeSetState(() =>
                                                                        _model.other01Value5 =
                                                                            newValue!);
                                                                  },
                                                                  side: (Color(
                                                                              0xFFCED4E6) !=
                                                                          null)
                                                                      ? BorderSide(
                                                                          width:
                                                                              2,
                                                                          color:
                                                                              Color(0xFFCED4E6)!,
                                                                        )
                                                                      : null,
                                                                  activeColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                  checkColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                ),
                                                              ),
                                                              Expanded(
                                                                child: Text(
                                                                  'ไม่เคยตรวจทั้งหมด',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).labelSmallFamily,
                                                                        color: _model.other01Value5 ==
                                                                                true
                                                                            ? FlutterFlowTheme.of(context).secondaryBackground
                                                                            : FlutterFlowTheme.of(context).secondaryText,
                                                                        fontSize:
                                                                            () {
                                                                          if (MediaQuery.sizeOf(context).width <
                                                                              kBreakpointSmall) {
                                                                            return 12.0;
                                                                          } else if (MediaQuery.sizeOf(context).width <
                                                                              kBreakpointMedium) {
                                                                            return 12.0;
                                                                          } else if (MediaQuery.sizeOf(context).width <
                                                                              kBreakpointLarge) {
                                                                            return 14.0;
                                                                          } else {
                                                                            return 14.0;
                                                                          }
                                                                        }(),
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            !FlutterFlowTheme.of(context).labelSmallIsCustom,
                                                                      ),
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ].divide(SizedBox(width: () {
                                                  if (MediaQuery.sizeOf(context)
                                                          .width <
                                                      kBreakpointSmall) {
                                                    return 4.0;
                                                  } else if (MediaQuery.sizeOf(
                                                              context)
                                                          .width <
                                                      kBreakpointMedium) {
                                                    return 4.0;
                                                  } else if (MediaQuery.sizeOf(
                                                              context)
                                                          .width <
                                                      kBreakpointLarge) {
                                                    return 8.0;
                                                  } else {
                                                    return 8.0;
                                                  }
                                                }())),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Color(0xFFE9F0F9),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          width: 1.0,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(
                                            valueOrDefault<double>(
                                          () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                kBreakpointSmall) {
                                              return 12.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointMedium) {
                                              return 12.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
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
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  '1. โรคเบาหวาน',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        color:
                                                            Color(0xFF077DD7),
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts:
                                                            !FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMediumIsCustom,
                                                      ),
                                                ),
                                              ],
                                            ),
                                            MasonryGridView.builder(
                                              physics:
                                                  const NeverScrollableScrollPhysics(),
                                              gridDelegate:
                                                  SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                                crossAxisCount: 3,
                                              ),
                                              crossAxisSpacing: () {
                                                if (MediaQuery.sizeOf(context)
                                                        .width <
                                                    kBreakpointSmall) {
                                                  return 8.0;
                                                } else if (MediaQuery.sizeOf(
                                                            context)
                                                        .width <
                                                    kBreakpointMedium) {
                                                  return 8.0;
                                                } else if (MediaQuery.sizeOf(
                                                            context)
                                                        .width <
                                                    kBreakpointLarge) {
                                                  return 16.0;
                                                } else {
                                                  return 16.0;
                                                }
                                              }(),
                                              mainAxisSpacing: 8.0,
                                              itemCount: 3,
                                              shrinkWrap: true,
                                              itemBuilder: (context, index) {
                                                return [
                                                  () => InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          FFAppState().perone =
                                                              '1';
                                                          safeSetState(() {});
                                                          if (animationsMap[
                                                                  'perOneOnActionTriggerAnimation1'] !=
                                                              null) {
                                                            animationsMap[
                                                                    'perOneOnActionTriggerAnimation1']!
                                                                .controller
                                                                .forward(
                                                                    from: 0.0);
                                                          }
                                                          await Future.delayed(
                                                            Duration(
                                                              milliseconds: 100,
                                                            ),
                                                          );
                                                        },
                                                        child: wrapWithModel(
                                                          model: _model
                                                              .perOneModel1,
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          child: PerOneWidget(
                                                            names: 'มี',
                                                            perone: '1',
                                                          ),
                                                        ),
                                                      ).animateOnActionTrigger(
                                                        animationsMap[
                                                            'perOneOnActionTriggerAnimation1']!,
                                                      ),
                                                  () => InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          FFAppState().perone =
                                                              '2';
                                                          safeSetState(() {});
                                                          if (animationsMap[
                                                                  'perOneOnActionTriggerAnimation2'] !=
                                                              null) {
                                                            animationsMap[
                                                                    'perOneOnActionTriggerAnimation2']!
                                                                .controller
                                                                .forward(
                                                                    from: 0.0);
                                                          }
                                                          await Future.delayed(
                                                            Duration(
                                                              milliseconds: 100,
                                                            ),
                                                          );
                                                        },
                                                        child: wrapWithModel(
                                                          model: _model
                                                              .perOneModel2,
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          child: PerOneWidget(
                                                            names: 'ไม่มี',
                                                            perone: '2',
                                                          ),
                                                        ),
                                                      ).animateOnActionTrigger(
                                                        animationsMap[
                                                            'perOneOnActionTriggerAnimation2']!,
                                                      ),
                                                  () => InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          FFAppState().perone =
                                                              '3';
                                                          safeSetState(() {});
                                                          if (animationsMap[
                                                                  'perOneOnActionTriggerAnimation3'] !=
                                                              null) {
                                                            animationsMap[
                                                                    'perOneOnActionTriggerAnimation3']!
                                                                .controller
                                                                .forward(
                                                                    from: 0.0);
                                                          }
                                                          await Future.delayed(
                                                            Duration(
                                                              milliseconds: 100,
                                                            ),
                                                          );
                                                        },
                                                        child: wrapWithModel(
                                                          model: _model
                                                              .perOneModel3,
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          child: PerOneWidget(
                                                            names: 'ไม่เคยตรวจ',
                                                            perone: '3',
                                                          ),
                                                        ),
                                                      ).animateOnActionTrigger(
                                                        animationsMap[
                                                            'perOneOnActionTriggerAnimation3']!,
                                                      ),
                                                ][index]();
                                              },
                                            ),
                                          ].divide(SizedBox(height: () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                kBreakpointSmall) {
                                              return 8.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointMedium) {
                                              return 8.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointLarge) {
                                              return 12.0;
                                            } else {
                                              return 12.0;
                                            }
                                          }())),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Color(0xFFE9F0F9),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          width: 1.0,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(
                                            valueOrDefault<double>(
                                          () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                kBreakpointSmall) {
                                              return 12.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointMedium) {
                                              return 12.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
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
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  '2. โรคความดันโลหิต',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        color:
                                                            Color(0xFF077DD7),
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts:
                                                            !FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMediumIsCustom,
                                                      ),
                                                ),
                                              ],
                                            ),
                                            MasonryGridView.builder(
                                              physics:
                                                  const NeverScrollableScrollPhysics(),
                                              gridDelegate:
                                                  SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                                crossAxisCount: 3,
                                              ),
                                              crossAxisSpacing: () {
                                                if (MediaQuery.sizeOf(context)
                                                        .width <
                                                    kBreakpointSmall) {
                                                  return 8.0;
                                                } else if (MediaQuery.sizeOf(
                                                            context)
                                                        .width <
                                                    kBreakpointMedium) {
                                                  return 8.0;
                                                } else if (MediaQuery.sizeOf(
                                                            context)
                                                        .width <
                                                    kBreakpointLarge) {
                                                  return 16.0;
                                                } else {
                                                  return 16.0;
                                                }
                                              }(),
                                              mainAxisSpacing: 8.0,
                                              itemCount: 3,
                                              shrinkWrap: true,
                                              itemBuilder: (context, index) {
                                                return [
                                                  () => InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          FFAppState().pertwo =
                                                              '1';
                                                          safeSetState(() {});
                                                          if (animationsMap[
                                                                  'perTwoOnActionTriggerAnimation1'] !=
                                                              null) {
                                                            animationsMap[
                                                                    'perTwoOnActionTriggerAnimation1']!
                                                                .controller
                                                                .forward(
                                                                    from: 0.0);
                                                          }
                                                          await Future.delayed(
                                                            Duration(
                                                              milliseconds: 100,
                                                            ),
                                                          );
                                                        },
                                                        child: wrapWithModel(
                                                          model: _model
                                                              .perTwoModel1,
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          child: PerTwoWidget(
                                                            names: 'มี',
                                                            pertwo: '1',
                                                          ),
                                                        ),
                                                      ).animateOnActionTrigger(
                                                        animationsMap[
                                                            'perTwoOnActionTriggerAnimation1']!,
                                                      ),
                                                  () => InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          FFAppState().pertwo =
                                                              '2';
                                                          safeSetState(() {});
                                                          if (animationsMap[
                                                                  'perTwoOnActionTriggerAnimation2'] !=
                                                              null) {
                                                            animationsMap[
                                                                    'perTwoOnActionTriggerAnimation2']!
                                                                .controller
                                                                .forward(
                                                                    from: 0.0);
                                                          }
                                                          await Future.delayed(
                                                            Duration(
                                                              milliseconds: 100,
                                                            ),
                                                          );
                                                        },
                                                        child: wrapWithModel(
                                                          model: _model
                                                              .perTwoModel2,
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          child: PerTwoWidget(
                                                            names: 'ไม่มี',
                                                            pertwo: '2',
                                                          ),
                                                        ),
                                                      ).animateOnActionTrigger(
                                                        animationsMap[
                                                            'perTwoOnActionTriggerAnimation2']!,
                                                      ),
                                                  () => InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          FFAppState().pertwo =
                                                              '3';
                                                          safeSetState(() {});
                                                          if (animationsMap[
                                                                  'perTwoOnActionTriggerAnimation3'] !=
                                                              null) {
                                                            animationsMap[
                                                                    'perTwoOnActionTriggerAnimation3']!
                                                                .controller
                                                                .forward(
                                                                    from: 0.0);
                                                          }
                                                          await Future.delayed(
                                                            Duration(
                                                              milliseconds: 100,
                                                            ),
                                                          );
                                                        },
                                                        child: wrapWithModel(
                                                          model: _model
                                                              .perTwoModel3,
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          child: PerTwoWidget(
                                                            names: 'ไม่เคยตรวจ',
                                                            pertwo: '3',
                                                          ),
                                                        ),
                                                      ).animateOnActionTrigger(
                                                        animationsMap[
                                                            'perTwoOnActionTriggerAnimation3']!,
                                                      ),
                                                ][index]();
                                              },
                                            ),
                                          ].divide(SizedBox(height: () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                kBreakpointSmall) {
                                              return 8.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointMedium) {
                                              return 8.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointLarge) {
                                              return 12.0;
                                            } else {
                                              return 12.0;
                                            }
                                          }())),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Color(0xFFE9F0F9),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          width: 1.0,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(
                                            valueOrDefault<double>(
                                          () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                kBreakpointSmall) {
                                              return 12.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointMedium) {
                                              return 12.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
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
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  '3. โรคตับ',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        color:
                                                            Color(0xFF077DD7),
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts:
                                                            !FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMediumIsCustom,
                                                      ),
                                                ),
                                              ],
                                            ),
                                            MasonryGridView.builder(
                                              physics:
                                                  const NeverScrollableScrollPhysics(),
                                              gridDelegate:
                                                  SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                                crossAxisCount: 3,
                                              ),
                                              crossAxisSpacing: () {
                                                if (MediaQuery.sizeOf(context)
                                                        .width <
                                                    kBreakpointSmall) {
                                                  return 8.0;
                                                } else if (MediaQuery.sizeOf(
                                                            context)
                                                        .width <
                                                    kBreakpointMedium) {
                                                  return 8.0;
                                                } else if (MediaQuery.sizeOf(
                                                            context)
                                                        .width <
                                                    kBreakpointLarge) {
                                                  return 16.0;
                                                } else {
                                                  return 16.0;
                                                }
                                              }(),
                                              mainAxisSpacing: 8.0,
                                              itemCount: 3,
                                              shrinkWrap: true,
                                              itemBuilder: (context, index) {
                                                return [
                                                  () => InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          FFAppState()
                                                              .perthree = '1';
                                                          safeSetState(() {});
                                                          if (animationsMap[
                                                                  'perThreeOnActionTriggerAnimation1'] !=
                                                              null) {
                                                            animationsMap[
                                                                    'perThreeOnActionTriggerAnimation1']!
                                                                .controller
                                                                .forward(
                                                                    from: 0.0);
                                                          }
                                                          await Future.delayed(
                                                            Duration(
                                                              milliseconds: 100,
                                                            ),
                                                          );
                                                        },
                                                        child: wrapWithModel(
                                                          model: _model
                                                              .perThreeModel1,
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          child: PerThreeWidget(
                                                            names: 'มี',
                                                            perthree: '1',
                                                          ),
                                                        ),
                                                      ).animateOnActionTrigger(
                                                        animationsMap[
                                                            'perThreeOnActionTriggerAnimation1']!,
                                                      ),
                                                  () => InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          FFAppState()
                                                              .perthree = '2';
                                                          safeSetState(() {});
                                                          if (animationsMap[
                                                                  'perThreeOnActionTriggerAnimation2'] !=
                                                              null) {
                                                            animationsMap[
                                                                    'perThreeOnActionTriggerAnimation2']!
                                                                .controller
                                                                .forward(
                                                                    from: 0.0);
                                                          }
                                                          await Future.delayed(
                                                            Duration(
                                                              milliseconds: 100,
                                                            ),
                                                          );
                                                        },
                                                        child: wrapWithModel(
                                                          model: _model
                                                              .perThreeModel2,
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          child: PerThreeWidget(
                                                            names: 'ไม่มี',
                                                            perthree: '2',
                                                          ),
                                                        ),
                                                      ).animateOnActionTrigger(
                                                        animationsMap[
                                                            'perThreeOnActionTriggerAnimation2']!,
                                                      ),
                                                  () => InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          FFAppState()
                                                              .perthree = '3';
                                                          safeSetState(() {});
                                                          if (animationsMap[
                                                                  'perThreeOnActionTriggerAnimation3'] !=
                                                              null) {
                                                            animationsMap[
                                                                    'perThreeOnActionTriggerAnimation3']!
                                                                .controller
                                                                .forward(
                                                                    from: 0.0);
                                                          }
                                                          await Future.delayed(
                                                            Duration(
                                                              milliseconds: 100,
                                                            ),
                                                          );
                                                        },
                                                        child: wrapWithModel(
                                                          model: _model
                                                              .perThreeModel3,
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          child: PerThreeWidget(
                                                            names: 'ไม่เคยตรวจ',
                                                            perthree: '3',
                                                          ),
                                                        ),
                                                      ).animateOnActionTrigger(
                                                        animationsMap[
                                                            'perThreeOnActionTriggerAnimation3']!,
                                                      ),
                                                ][index]();
                                              },
                                            ),
                                          ].divide(SizedBox(height: () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                kBreakpointSmall) {
                                              return 8.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointMedium) {
                                              return 8.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointLarge) {
                                              return 12.0;
                                            } else {
                                              return 12.0;
                                            }
                                          }())),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Color(0xFFE9F0F9),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          width: 1.0,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(
                                            valueOrDefault<double>(
                                          () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                kBreakpointSmall) {
                                              return 12.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointMedium) {
                                              return 12.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
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
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  '4. โรคอัมพาต',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        color:
                                                            Color(0xFF077DD7),
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts:
                                                            !FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMediumIsCustom,
                                                      ),
                                                ),
                                              ],
                                            ),
                                            MasonryGridView.builder(
                                              physics:
                                                  const NeverScrollableScrollPhysics(),
                                              gridDelegate:
                                                  SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                                crossAxisCount: 3,
                                              ),
                                              crossAxisSpacing: () {
                                                if (MediaQuery.sizeOf(context)
                                                        .width <
                                                    kBreakpointSmall) {
                                                  return 8.0;
                                                } else if (MediaQuery.sizeOf(
                                                            context)
                                                        .width <
                                                    kBreakpointMedium) {
                                                  return 8.0;
                                                } else if (MediaQuery.sizeOf(
                                                            context)
                                                        .width <
                                                    kBreakpointLarge) {
                                                  return 16.0;
                                                } else {
                                                  return 16.0;
                                                }
                                              }(),
                                              mainAxisSpacing: 8.0,
                                              itemCount: 3,
                                              shrinkWrap: true,
                                              itemBuilder: (context, index) {
                                                return [
                                                  () => InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          FFAppState().perfore =
                                                              '1';
                                                          safeSetState(() {});
                                                          if (animationsMap[
                                                                  'perForeOnActionTriggerAnimation1'] !=
                                                              null) {
                                                            animationsMap[
                                                                    'perForeOnActionTriggerAnimation1']!
                                                                .controller
                                                                .forward(
                                                                    from: 0.0);
                                                          }
                                                          await Future.delayed(
                                                            Duration(
                                                              milliseconds: 100,
                                                            ),
                                                          );
                                                        },
                                                        child: wrapWithModel(
                                                          model: _model
                                                              .perForeModel1,
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          child: PerForeWidget(
                                                            names: 'มี',
                                                            perfore: '1',
                                                          ),
                                                        ),
                                                      ).animateOnActionTrigger(
                                                        animationsMap[
                                                            'perForeOnActionTriggerAnimation1']!,
                                                      ),
                                                  () => InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          FFAppState().perfore =
                                                              '2';
                                                          safeSetState(() {});
                                                          if (animationsMap[
                                                                  'perForeOnActionTriggerAnimation2'] !=
                                                              null) {
                                                            animationsMap[
                                                                    'perForeOnActionTriggerAnimation2']!
                                                                .controller
                                                                .forward(
                                                                    from: 0.0);
                                                          }
                                                          await Future.delayed(
                                                            Duration(
                                                              milliseconds: 100,
                                                            ),
                                                          );
                                                        },
                                                        child: wrapWithModel(
                                                          model: _model
                                                              .perForeModel2,
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          child: PerForeWidget(
                                                            names: 'ไม่มี',
                                                            perfore: '2',
                                                          ),
                                                        ),
                                                      ).animateOnActionTrigger(
                                                        animationsMap[
                                                            'perForeOnActionTriggerAnimation2']!,
                                                      ),
                                                  () => InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          FFAppState().perfore =
                                                              '3';
                                                          safeSetState(() {});
                                                          if (animationsMap[
                                                                  'perForeOnActionTriggerAnimation3'] !=
                                                              null) {
                                                            animationsMap[
                                                                    'perForeOnActionTriggerAnimation3']!
                                                                .controller
                                                                .forward(
                                                                    from: 0.0);
                                                          }
                                                          await Future.delayed(
                                                            Duration(
                                                              milliseconds: 100,
                                                            ),
                                                          );
                                                        },
                                                        child: wrapWithModel(
                                                          model: _model
                                                              .perForeModel3,
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          child: PerForeWidget(
                                                            names: 'ไม่เคยตรวจ',
                                                            perfore: '3',
                                                          ),
                                                        ),
                                                      ).animateOnActionTrigger(
                                                        animationsMap[
                                                            'perForeOnActionTriggerAnimation3']!,
                                                      ),
                                                ][index]();
                                              },
                                            ),
                                          ].divide(SizedBox(height: () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                kBreakpointSmall) {
                                              return 8.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointMedium) {
                                              return 8.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointLarge) {
                                              return 12.0;
                                            } else {
                                              return 12.0;
                                            }
                                          }())),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Color(0xFFE9F0F9),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          width: 1.0,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(
                                            valueOrDefault<double>(
                                          () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                kBreakpointSmall) {
                                              return 12.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointMedium) {
                                              return 12.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
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
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  '5. โรคหัวใจ',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        color:
                                                            Color(0xFF077DD7),
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts:
                                                            !FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMediumIsCustom,
                                                      ),
                                                ),
                                              ],
                                            ),
                                            MasonryGridView.builder(
                                              physics:
                                                  const NeverScrollableScrollPhysics(),
                                              gridDelegate:
                                                  SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                                crossAxisCount: 3,
                                              ),
                                              crossAxisSpacing: () {
                                                if (MediaQuery.sizeOf(context)
                                                        .width <
                                                    kBreakpointSmall) {
                                                  return 8.0;
                                                } else if (MediaQuery.sizeOf(
                                                            context)
                                                        .width <
                                                    kBreakpointMedium) {
                                                  return 8.0;
                                                } else if (MediaQuery.sizeOf(
                                                            context)
                                                        .width <
                                                    kBreakpointLarge) {
                                                  return 16.0;
                                                } else {
                                                  return 16.0;
                                                }
                                              }(),
                                              mainAxisSpacing: 8.0,
                                              itemCount: 3,
                                              shrinkWrap: true,
                                              itemBuilder: (context, index) {
                                                return [
                                                  () => InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          FFAppState().perfive =
                                                              '1';
                                                          safeSetState(() {});
                                                          if (animationsMap[
                                                                  'perFiveOnActionTriggerAnimation1'] !=
                                                              null) {
                                                            animationsMap[
                                                                    'perFiveOnActionTriggerAnimation1']!
                                                                .controller
                                                                .forward(
                                                                    from: 0.0);
                                                          }
                                                          await Future.delayed(
                                                            Duration(
                                                              milliseconds: 100,
                                                            ),
                                                          );
                                                        },
                                                        child: wrapWithModel(
                                                          model: _model
                                                              .perFiveModel1,
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          child: PerFiveWidget(
                                                            names: 'มี',
                                                            perfive: '1',
                                                          ),
                                                        ),
                                                      ).animateOnActionTrigger(
                                                        animationsMap[
                                                            'perFiveOnActionTriggerAnimation1']!,
                                                      ),
                                                  () => InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          FFAppState().perfive =
                                                              '2';
                                                          safeSetState(() {});
                                                          if (animationsMap[
                                                                  'perFiveOnActionTriggerAnimation2'] !=
                                                              null) {
                                                            animationsMap[
                                                                    'perFiveOnActionTriggerAnimation2']!
                                                                .controller
                                                                .forward(
                                                                    from: 0.0);
                                                          }
                                                          await Future.delayed(
                                                            Duration(
                                                              milliseconds: 100,
                                                            ),
                                                          );
                                                        },
                                                        child: wrapWithModel(
                                                          model: _model
                                                              .perFiveModel2,
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          child: PerFiveWidget(
                                                            names: 'ไม่มี',
                                                            perfive: '2',
                                                          ),
                                                        ),
                                                      ).animateOnActionTrigger(
                                                        animationsMap[
                                                            'perFiveOnActionTriggerAnimation2']!,
                                                      ),
                                                  () => InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          FFAppState().perfive =
                                                              '3';
                                                          safeSetState(() {});
                                                          if (animationsMap[
                                                                  'perFiveOnActionTriggerAnimation3'] !=
                                                              null) {
                                                            animationsMap[
                                                                    'perFiveOnActionTriggerAnimation3']!
                                                                .controller
                                                                .forward(
                                                                    from: 0.0);
                                                          }
                                                          await Future.delayed(
                                                            Duration(
                                                              milliseconds: 100,
                                                            ),
                                                          );
                                                        },
                                                        child: wrapWithModel(
                                                          model: _model
                                                              .perFiveModel3,
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          child: PerFiveWidget(
                                                            names: 'ไม่เคยตรวจ',
                                                            perfive: '3',
                                                          ),
                                                        ),
                                                      ).animateOnActionTrigger(
                                                        animationsMap[
                                                            'perFiveOnActionTriggerAnimation3']!,
                                                      ),
                                                ][index]();
                                              },
                                            ),
                                          ].divide(SizedBox(height: () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                kBreakpointSmall) {
                                              return 8.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointMedium) {
                                              return 8.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointLarge) {
                                              return 12.0;
                                            } else {
                                              return 12.0;
                                            }
                                          }())),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Color(0xFFE9F0F9),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          width: 1.0,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(
                                            valueOrDefault<double>(
                                          () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                kBreakpointSmall) {
                                              return 12.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointMedium) {
                                              return 12.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
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
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  '6. ไขมันในเลือดผิดปกติ',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        color:
                                                            Color(0xFF077DD7),
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts:
                                                            !FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMediumIsCustom,
                                                      ),
                                                ),
                                              ],
                                            ),
                                            MasonryGridView.builder(
                                              physics:
                                                  const NeverScrollableScrollPhysics(),
                                              gridDelegate:
                                                  SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                                crossAxisCount: 3,
                                              ),
                                              crossAxisSpacing: () {
                                                if (MediaQuery.sizeOf(context)
                                                        .width <
                                                    kBreakpointSmall) {
                                                  return 8.0;
                                                } else if (MediaQuery.sizeOf(
                                                            context)
                                                        .width <
                                                    kBreakpointMedium) {
                                                  return 8.0;
                                                } else if (MediaQuery.sizeOf(
                                                            context)
                                                        .width <
                                                    kBreakpointLarge) {
                                                  return 16.0;
                                                } else {
                                                  return 16.0;
                                                }
                                              }(),
                                              mainAxisSpacing: 8.0,
                                              itemCount: 3,
                                              shrinkWrap: true,
                                              itemBuilder: (context, index) {
                                                return [
                                                  () => InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          FFAppState().persix =
                                                              '1';
                                                          safeSetState(() {});
                                                          if (animationsMap[
                                                                  'perSixOnActionTriggerAnimation1'] !=
                                                              null) {
                                                            animationsMap[
                                                                    'perSixOnActionTriggerAnimation1']!
                                                                .controller
                                                                .forward(
                                                                    from: 0.0);
                                                          }
                                                          await Future.delayed(
                                                            Duration(
                                                              milliseconds: 100,
                                                            ),
                                                          );
                                                        },
                                                        child: wrapWithModel(
                                                          model: _model
                                                              .perSixModel1,
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          child: PerSixWidget(
                                                            names: 'มี',
                                                            persix: '1',
                                                          ),
                                                        ),
                                                      ).animateOnActionTrigger(
                                                        animationsMap[
                                                            'perSixOnActionTriggerAnimation1']!,
                                                      ),
                                                  () => InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          FFAppState().persix =
                                                              '2';
                                                          safeSetState(() {});
                                                          if (animationsMap[
                                                                  'perSixOnActionTriggerAnimation2'] !=
                                                              null) {
                                                            animationsMap[
                                                                    'perSixOnActionTriggerAnimation2']!
                                                                .controller
                                                                .forward(
                                                                    from: 0.0);
                                                          }
                                                          await Future.delayed(
                                                            Duration(
                                                              milliseconds: 100,
                                                            ),
                                                          );
                                                        },
                                                        child: wrapWithModel(
                                                          model: _model
                                                              .perSixModel2,
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          child: PerSixWidget(
                                                            names: 'ไม่มี',
                                                            persix: '2',
                                                          ),
                                                        ),
                                                      ).animateOnActionTrigger(
                                                        animationsMap[
                                                            'perSixOnActionTriggerAnimation2']!,
                                                      ),
                                                  () => InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          FFAppState().persix =
                                                              '3';
                                                          safeSetState(() {});
                                                          if (animationsMap[
                                                                  'perSixOnActionTriggerAnimation3'] !=
                                                              null) {
                                                            animationsMap[
                                                                    'perSixOnActionTriggerAnimation3']!
                                                                .controller
                                                                .forward(
                                                                    from: 0.0);
                                                          }
                                                          await Future.delayed(
                                                            Duration(
                                                              milliseconds: 100,
                                                            ),
                                                          );
                                                        },
                                                        child: wrapWithModel(
                                                          model: _model
                                                              .perSixModel3,
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          child: PerSixWidget(
                                                            names: 'ไม่เคยตรวจ',
                                                            persix: '3',
                                                          ),
                                                        ),
                                                      ).animateOnActionTrigger(
                                                        animationsMap[
                                                            'perSixOnActionTriggerAnimation3']!,
                                                      ),
                                                ][index]();
                                              },
                                            ),
                                          ].divide(SizedBox(height: () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                kBreakpointSmall) {
                                              return 8.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointMedium) {
                                              return 8.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointLarge) {
                                              return 12.0;
                                            } else {
                                              return 12.0;
                                            }
                                          }())),
                                        ),
                                      ),
                                    ),
                                  ].divide(SizedBox(height: 12.0)),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        if (responsiveVisibility(
                                          context: context,
                                          tablet: false,
                                          tabletLandscape: false,
                                          desktop: false,
                                        ))
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 8.0),
                                            child: RichText(
                                              textScaler: MediaQuery.of(context)
                                                  .textScaler,
                                              text: TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text:
                                                        'ส่วนที่ 2 : ข้อ 7-18',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmallFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .titleSmallIsCustom,
                                                        ),
                                                  )
                                                ],
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmallFamily,
                                                          letterSpacing: 0.0,
                                                          lineHeight: 1.8,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .titleSmallIsCustom,
                                                        ),
                                              ),
                                              textAlign: TextAlign.start,
                                            ),
                                          ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            if (responsiveVisibility(
                                              context: context,
                                              phone: false,
                                            ))
                                              Expanded(
                                                child: RichText(
                                                  textScaler:
                                                      MediaQuery.of(context)
                                                          .textScaler,
                                                  text: TextSpan(
                                                    children: [
                                                      TextSpan(
                                                        text:
                                                            'ส่วนที่ 2 : ข้อ 7-18',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmallFamily,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleSmallIsCustom,
                                                                ),
                                                      )
                                                    ],
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmallFamily,
                                                          letterSpacing: 0.0,
                                                          lineHeight: 1.8,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .titleSmallIsCustom,
                                                        ),
                                                  ),
                                                  textAlign: TextAlign.start,
                                                ),
                                              ),
                                            Expanded(
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  Expanded(
                                                    child: InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        if (_model
                                                            .other01Value6!) {
                                                          safeSetState(() {
                                                            _model.other01Value6 =
                                                                false;
                                                          });
                                                        } else {
                                                          safeSetState(() {
                                                            _model.other01Value6 =
                                                                true;
                                                          });
                                                        }
                                                      },
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          gradient:
                                                              LinearGradient(
                                                            colors: [
                                                              _model.other01Value6 ==
                                                                      true
                                                                  ? FlutterFlowTheme.of(
                                                                          context)
                                                                      .accent1
                                                                  : FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                              _model.other01Value6 ==
                                                                      true
                                                                  ? FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary
                                                                  : FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground
                                                            ],
                                                            stops: [0.0, 1.0],
                                                            begin:
                                                                AlignmentDirectional(
                                                                    1.0, 0.34),
                                                            end:
                                                                AlignmentDirectional(
                                                                    -1.0,
                                                                    -0.34),
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      100.0),
                                                          shape: BoxShape
                                                              .rectangle,
                                                          border: Border.all(
                                                            color: _model
                                                                        .other01Value6 ==
                                                                    true
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground
                                                                : Color(
                                                                    0xFFCED4E6),
                                                            width: 1.0,
                                                          ),
                                                        ),
                                                        child: Padding(
                                                          padding: EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  valueOrDefault<
                                                                      double>(
                                                                    () {
                                                                      if (MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          kBreakpointSmall) {
                                                                        return 2.0;
                                                                      } else if (MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          kBreakpointMedium) {
                                                                        return 2.0;
                                                                      } else if (MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          kBreakpointLarge) {
                                                                        return 4.0;
                                                                      } else {
                                                                        return 4.0;
                                                                      }
                                                                    }(),
                                                                    0.0,
                                                                  ),
                                                                  valueOrDefault<
                                                                      double>(
                                                                    () {
                                                                      if (MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          kBreakpointSmall) {
                                                                        return 2.0;
                                                                      } else if (MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          kBreakpointMedium) {
                                                                        return 2.0;
                                                                      } else if (MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          kBreakpointLarge) {
                                                                        return 4.0;
                                                                      } else {
                                                                        return 4.0;
                                                                      }
                                                                    }(),
                                                                    0.0,
                                                                  ),
                                                                  8.0,
                                                                  valueOrDefault<
                                                                      double>(
                                                                    () {
                                                                      if (MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          kBreakpointSmall) {
                                                                        return 2.0;
                                                                      } else if (MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          kBreakpointMedium) {
                                                                        return 2.0;
                                                                      } else if (MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          kBreakpointLarge) {
                                                                        return 4.0;
                                                                      } else {
                                                                        return 4.0;
                                                                      }
                                                                    }(),
                                                                    0.0,
                                                                  )),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Theme(
                                                                data: ThemeData(
                                                                  checkboxTheme:
                                                                      CheckboxThemeData(
                                                                    visualDensity:
                                                                        VisualDensity
                                                                            .compact,
                                                                    materialTapTargetSize:
                                                                        MaterialTapTargetSize
                                                                            .shrinkWrap,
                                                                    shape:
                                                                        CircleBorder(),
                                                                  ),
                                                                  unselectedWidgetColor:
                                                                      Color(
                                                                          0xFFCED4E6),
                                                                ),
                                                                child: Checkbox(
                                                                  value: _model
                                                                          .other01Value6 ??=
                                                                      false,
                                                                  onChanged:
                                                                      (newValue) async {
                                                                    safeSetState(() =>
                                                                        _model.other01Value6 =
                                                                            newValue!);
                                                                  },
                                                                  side: (Color(
                                                                              0xFFCED4E6) !=
                                                                          null)
                                                                      ? BorderSide(
                                                                          width:
                                                                              2,
                                                                          color:
                                                                              Color(0xFFCED4E6)!,
                                                                        )
                                                                      : null,
                                                                  activeColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                  checkColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                ),
                                                              ),
                                                              Text(
                                                                'มีทั้งหมด',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelSmall
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .labelSmallFamily,
                                                                      color: _model.other01Value6 ==
                                                                              true
                                                                          ? FlutterFlowTheme.of(context)
                                                                              .secondaryBackground
                                                                          : FlutterFlowTheme.of(context)
                                                                              .secondaryText,
                                                                      fontSize:
                                                                          () {
                                                                        if (MediaQuery.sizeOf(context).width <
                                                                            kBreakpointSmall) {
                                                                          return 12.0;
                                                                        } else if (MediaQuery.sizeOf(context).width <
                                                                            kBreakpointMedium) {
                                                                          return 12.0;
                                                                        } else if (MediaQuery.sizeOf(context).width <
                                                                            kBreakpointLarge) {
                                                                          return 14.0;
                                                                        } else {
                                                                          return 14.0;
                                                                        }
                                                                      }(),
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts:
                                                                          !FlutterFlowTheme.of(context)
                                                                              .labelSmallIsCustom,
                                                                    ),
                                                              ),
                                                            ].divide(SizedBox(
                                                                width: 4.0)),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        if (_model
                                                            .other01Value7!) {
                                                          safeSetState(() {
                                                            _model.other01Value7 =
                                                                false;
                                                          });
                                                        } else {
                                                          safeSetState(() {
                                                            _model.other01Value7 =
                                                                true;
                                                          });
                                                        }
                                                      },
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          gradient:
                                                              LinearGradient(
                                                            colors: [
                                                              _model.other01Value7 ==
                                                                      true
                                                                  ? FlutterFlowTheme.of(
                                                                          context)
                                                                      .accent1
                                                                  : FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                              _model.other01Value7 ==
                                                                      true
                                                                  ? FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary
                                                                  : FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground
                                                            ],
                                                            stops: [0.0, 1.0],
                                                            begin:
                                                                AlignmentDirectional(
                                                                    1.0, 0.34),
                                                            end:
                                                                AlignmentDirectional(
                                                                    -1.0,
                                                                    -0.34),
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      100.0),
                                                          shape: BoxShape
                                                              .rectangle,
                                                          border: Border.all(
                                                            color: _model
                                                                        .other01Value7 ==
                                                                    true
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground
                                                                : Color(
                                                                    0xFFCED4E6),
                                                            width: 1.0,
                                                          ),
                                                        ),
                                                        child: Padding(
                                                          padding: EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  valueOrDefault<
                                                                      double>(
                                                                    () {
                                                                      if (MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          kBreakpointSmall) {
                                                                        return 2.0;
                                                                      } else if (MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          kBreakpointMedium) {
                                                                        return 2.0;
                                                                      } else if (MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          kBreakpointLarge) {
                                                                        return 4.0;
                                                                      } else {
                                                                        return 4.0;
                                                                      }
                                                                    }(),
                                                                    0.0,
                                                                  ),
                                                                  valueOrDefault<
                                                                      double>(
                                                                    () {
                                                                      if (MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          kBreakpointSmall) {
                                                                        return 2.0;
                                                                      } else if (MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          kBreakpointMedium) {
                                                                        return 2.0;
                                                                      } else if (MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          kBreakpointLarge) {
                                                                        return 4.0;
                                                                      } else {
                                                                        return 4.0;
                                                                      }
                                                                    }(),
                                                                    0.0,
                                                                  ),
                                                                  8.0,
                                                                  valueOrDefault<
                                                                      double>(
                                                                    () {
                                                                      if (MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          kBreakpointSmall) {
                                                                        return 2.0;
                                                                      } else if (MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          kBreakpointMedium) {
                                                                        return 2.0;
                                                                      } else if (MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          kBreakpointLarge) {
                                                                        return 4.0;
                                                                      } else {
                                                                        return 4.0;
                                                                      }
                                                                    }(),
                                                                    0.0,
                                                                  )),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Theme(
                                                                data: ThemeData(
                                                                  checkboxTheme:
                                                                      CheckboxThemeData(
                                                                    visualDensity:
                                                                        VisualDensity
                                                                            .compact,
                                                                    materialTapTargetSize:
                                                                        MaterialTapTargetSize
                                                                            .shrinkWrap,
                                                                    shape:
                                                                        CircleBorder(),
                                                                  ),
                                                                  unselectedWidgetColor:
                                                                      Color(
                                                                          0xFFCED4E6),
                                                                ),
                                                                child: Checkbox(
                                                                  value: _model
                                                                          .other01Value7 ??=
                                                                      false,
                                                                  onChanged:
                                                                      (newValue) async {
                                                                    safeSetState(() =>
                                                                        _model.other01Value7 =
                                                                            newValue!);
                                                                  },
                                                                  side: (Color(
                                                                              0xFFCED4E6) !=
                                                                          null)
                                                                      ? BorderSide(
                                                                          width:
                                                                              2,
                                                                          color:
                                                                              Color(0xFFCED4E6)!,
                                                                        )
                                                                      : null,
                                                                  activeColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                  checkColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                ),
                                                              ),
                                                              Text(
                                                                'ไม่มีทั้งหมด',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelSmall
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .labelSmallFamily,
                                                                      color: _model.other01Value7 ==
                                                                              true
                                                                          ? FlutterFlowTheme.of(context)
                                                                              .secondaryBackground
                                                                          : FlutterFlowTheme.of(context)
                                                                              .secondaryText,
                                                                      fontSize:
                                                                          () {
                                                                        if (MediaQuery.sizeOf(context).width <
                                                                            kBreakpointSmall) {
                                                                          return 12.0;
                                                                        } else if (MediaQuery.sizeOf(context).width <
                                                                            kBreakpointMedium) {
                                                                          return 12.0;
                                                                        } else if (MediaQuery.sizeOf(context).width <
                                                                            kBreakpointLarge) {
                                                                          return 14.0;
                                                                        } else {
                                                                          return 14.0;
                                                                        }
                                                                      }(),
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts:
                                                                          !FlutterFlowTheme.of(context)
                                                                              .labelSmallIsCustom,
                                                                    ),
                                                              ),
                                                            ].divide(SizedBox(
                                                                width: 4.0)),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ].divide(SizedBox(width: () {
                                                  if (MediaQuery.sizeOf(context)
                                                          .width <
                                                      kBreakpointSmall) {
                                                    return 4.0;
                                                  } else if (MediaQuery.sizeOf(
                                                              context)
                                                          .width <
                                                      kBreakpointMedium) {
                                                    return 4.0;
                                                  } else if (MediaQuery.sizeOf(
                                                              context)
                                                          .width <
                                                      kBreakpointLarge) {
                                                    return 8.0;
                                                  } else {
                                                    return 8.0;
                                                  }
                                                }())),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Color(0xFFE9F0F9),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          width: 1.0,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(
                                            valueOrDefault<double>(
                                          () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                kBreakpointSmall) {
                                              return 12.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointMedium) {
                                              return 12.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
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
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  '7. แผลที่เท้า/ตัดขา (จากเบาหวาน)',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        color:
                                                            Color(0xFF077DD7),
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts:
                                                            !FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMediumIsCustom,
                                                      ),
                                                ),
                                              ],
                                            ),
                                            MasonryGridView.builder(
                                              physics:
                                                  const NeverScrollableScrollPhysics(),
                                              gridDelegate:
                                                  SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                                crossAxisCount: 2,
                                              ),
                                              crossAxisSpacing: () {
                                                if (MediaQuery.sizeOf(context)
                                                        .width <
                                                    kBreakpointSmall) {
                                                  return 8.0;
                                                } else if (MediaQuery.sizeOf(
                                                            context)
                                                        .width <
                                                    kBreakpointMedium) {
                                                  return 8.0;
                                                } else if (MediaQuery.sizeOf(
                                                            context)
                                                        .width <
                                                    kBreakpointLarge) {
                                                  return 16.0;
                                                } else {
                                                  return 16.0;
                                                }
                                              }(),
                                              mainAxisSpacing: 8.0,
                                              itemCount: 2,
                                              shrinkWrap: true,
                                              itemBuilder: (context, index) {
                                                return [
                                                  () => InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          FFAppState().perone =
                                                              '1';
                                                          safeSetState(() {});
                                                          if (animationsMap[
                                                                  'perOneOnActionTriggerAnimation4'] !=
                                                              null) {
                                                            animationsMap[
                                                                    'perOneOnActionTriggerAnimation4']!
                                                                .controller
                                                                .forward(
                                                                    from: 0.0);
                                                          }
                                                          await Future.delayed(
                                                            Duration(
                                                              milliseconds: 100,
                                                            ),
                                                          );
                                                        },
                                                        child: wrapWithModel(
                                                          model: _model
                                                              .perOneModel4,
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          child: PerOneWidget(
                                                            names: 'มี',
                                                            perone: '1',
                                                          ),
                                                        ),
                                                      ).animateOnActionTrigger(
                                                        animationsMap[
                                                            'perOneOnActionTriggerAnimation4']!,
                                                      ),
                                                  () => InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          FFAppState().perone =
                                                              '2';
                                                          safeSetState(() {});
                                                          if (animationsMap[
                                                                  'perOneOnActionTriggerAnimation5'] !=
                                                              null) {
                                                            animationsMap[
                                                                    'perOneOnActionTriggerAnimation5']!
                                                                .controller
                                                                .forward(
                                                                    from: 0.0);
                                                          }
                                                          await Future.delayed(
                                                            Duration(
                                                              milliseconds: 100,
                                                            ),
                                                          );
                                                        },
                                                        child: wrapWithModel(
                                                          model: _model
                                                              .perOneModel5,
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          child: PerOneWidget(
                                                            names: 'ไม่มี',
                                                            perone: '2',
                                                          ),
                                                        ),
                                                      ).animateOnActionTrigger(
                                                        animationsMap[
                                                            'perOneOnActionTriggerAnimation5']!,
                                                      ),
                                                ][index]();
                                              },
                                            ),
                                          ].divide(SizedBox(height: () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                kBreakpointSmall) {
                                              return 8.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointMedium) {
                                              return 8.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointLarge) {
                                              return 12.0;
                                            } else {
                                              return 12.0;
                                            }
                                          }())),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Color(0xFFE9F0F9),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          width: 1.0,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(
                                            valueOrDefault<double>(
                                          () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                kBreakpointSmall) {
                                              return 12.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointMedium) {
                                              return 12.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
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
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Expanded(
                                                  child: Text(
                                                    '8. คลอดบุตรน้ำหนักเกิน 4 กก. หรือเป็นเบาหวานขณะตั้งครรภ์',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          color:
                                                              Color(0xFF077DD7),
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMediumIsCustom,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            MasonryGridView.builder(
                                              physics:
                                                  const NeverScrollableScrollPhysics(),
                                              gridDelegate:
                                                  SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                                crossAxisCount: 2,
                                              ),
                                              crossAxisSpacing: () {
                                                if (MediaQuery.sizeOf(context)
                                                        .width <
                                                    kBreakpointSmall) {
                                                  return 8.0;
                                                } else if (MediaQuery.sizeOf(
                                                            context)
                                                        .width <
                                                    kBreakpointMedium) {
                                                  return 8.0;
                                                } else if (MediaQuery.sizeOf(
                                                            context)
                                                        .width <
                                                    kBreakpointLarge) {
                                                  return 16.0;
                                                } else {
                                                  return 16.0;
                                                }
                                              }(),
                                              mainAxisSpacing: 8.0,
                                              itemCount: 2,
                                              shrinkWrap: true,
                                              itemBuilder: (context, index) {
                                                return [
                                                  () => InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          FFAppState().pertwo =
                                                              '1';
                                                          safeSetState(() {});
                                                          if (animationsMap[
                                                                  'perTwoOnActionTriggerAnimation4'] !=
                                                              null) {
                                                            animationsMap[
                                                                    'perTwoOnActionTriggerAnimation4']!
                                                                .controller
                                                                .forward(
                                                                    from: 0.0);
                                                          }
                                                          await Future.delayed(
                                                            Duration(
                                                              milliseconds: 100,
                                                            ),
                                                          );
                                                        },
                                                        child: wrapWithModel(
                                                          model: _model
                                                              .perTwoModel4,
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          child: PerTwoWidget(
                                                            names: 'มี',
                                                            pertwo: '1',
                                                          ),
                                                        ),
                                                      ).animateOnActionTrigger(
                                                        animationsMap[
                                                            'perTwoOnActionTriggerAnimation4']!,
                                                      ),
                                                  () => InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          FFAppState().pertwo =
                                                              '2';
                                                          safeSetState(() {});
                                                          if (animationsMap[
                                                                  'perTwoOnActionTriggerAnimation5'] !=
                                                              null) {
                                                            animationsMap[
                                                                    'perTwoOnActionTriggerAnimation5']!
                                                                .controller
                                                                .forward(
                                                                    from: 0.0);
                                                          }
                                                          await Future.delayed(
                                                            Duration(
                                                              milliseconds: 100,
                                                            ),
                                                          );
                                                        },
                                                        child: wrapWithModel(
                                                          model: _model
                                                              .perTwoModel5,
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          child: PerTwoWidget(
                                                            names: 'ไม่มี',
                                                            pertwo: '2',
                                                          ),
                                                        ),
                                                      ).animateOnActionTrigger(
                                                        animationsMap[
                                                            'perTwoOnActionTriggerAnimation5']!,
                                                      ),
                                                ][index]();
                                              },
                                            ),
                                          ].divide(SizedBox(height: () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                kBreakpointSmall) {
                                              return 8.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointMedium) {
                                              return 8.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointLarge) {
                                              return 12.0;
                                            } else {
                                              return 12.0;
                                            }
                                          }())),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Color(0xFFE9F0F9),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          width: 1.0,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(
                                            valueOrDefault<double>(
                                          () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                kBreakpointSmall) {
                                              return 12.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointMedium) {
                                              return 12.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
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
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  '9. ดื่มน้ำบ่อยและมาก',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        color:
                                                            Color(0xFF077DD7),
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts:
                                                            !FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMediumIsCustom,
                                                      ),
                                                ),
                                              ],
                                            ),
                                            MasonryGridView.builder(
                                              physics:
                                                  const NeverScrollableScrollPhysics(),
                                              gridDelegate:
                                                  SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                                crossAxisCount: 2,
                                              ),
                                              crossAxisSpacing: () {
                                                if (MediaQuery.sizeOf(context)
                                                        .width <
                                                    kBreakpointSmall) {
                                                  return 8.0;
                                                } else if (MediaQuery.sizeOf(
                                                            context)
                                                        .width <
                                                    kBreakpointMedium) {
                                                  return 8.0;
                                                } else if (MediaQuery.sizeOf(
                                                            context)
                                                        .width <
                                                    kBreakpointLarge) {
                                                  return 16.0;
                                                } else {
                                                  return 16.0;
                                                }
                                              }(),
                                              mainAxisSpacing: 8.0,
                                              itemCount: 2,
                                              shrinkWrap: true,
                                              itemBuilder: (context, index) {
                                                return [
                                                  () => InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          FFAppState()
                                                              .perthree = '1';
                                                          safeSetState(() {});
                                                          if (animationsMap[
                                                                  'perThreeOnActionTriggerAnimation4'] !=
                                                              null) {
                                                            animationsMap[
                                                                    'perThreeOnActionTriggerAnimation4']!
                                                                .controller
                                                                .forward(
                                                                    from: 0.0);
                                                          }
                                                          await Future.delayed(
                                                            Duration(
                                                              milliseconds: 100,
                                                            ),
                                                          );
                                                        },
                                                        child: wrapWithModel(
                                                          model: _model
                                                              .perThreeModel4,
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          child: PerThreeWidget(
                                                            names: 'มี',
                                                            perthree: '1',
                                                          ),
                                                        ),
                                                      ).animateOnActionTrigger(
                                                        animationsMap[
                                                            'perThreeOnActionTriggerAnimation4']!,
                                                      ),
                                                  () => InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          FFAppState()
                                                              .perthree = '2';
                                                          safeSetState(() {});
                                                          if (animationsMap[
                                                                  'perThreeOnActionTriggerAnimation5'] !=
                                                              null) {
                                                            animationsMap[
                                                                    'perThreeOnActionTriggerAnimation5']!
                                                                .controller
                                                                .forward(
                                                                    from: 0.0);
                                                          }
                                                          await Future.delayed(
                                                            Duration(
                                                              milliseconds: 100,
                                                            ),
                                                          );
                                                        },
                                                        child: wrapWithModel(
                                                          model: _model
                                                              .perThreeModel5,
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          child: PerThreeWidget(
                                                            names: 'ไม่มี',
                                                            perthree: '2',
                                                          ),
                                                        ),
                                                      ).animateOnActionTrigger(
                                                        animationsMap[
                                                            'perThreeOnActionTriggerAnimation5']!,
                                                      ),
                                                ][index]();
                                              },
                                            ),
                                          ].divide(SizedBox(height: () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                kBreakpointSmall) {
                                              return 8.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointMedium) {
                                              return 8.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointLarge) {
                                              return 12.0;
                                            } else {
                                              return 12.0;
                                            }
                                          }())),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Color(0xFFE9F0F9),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          width: 1.0,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(
                                            valueOrDefault<double>(
                                          () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                kBreakpointSmall) {
                                              return 12.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointMedium) {
                                              return 12.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
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
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  '10. ปัสสาวะกลางคืน 3 ครั้งขึ้นไป',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        color:
                                                            Color(0xFF077DD7),
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts:
                                                            !FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMediumIsCustom,
                                                      ),
                                                ),
                                              ],
                                            ),
                                            MasonryGridView.builder(
                                              physics:
                                                  const NeverScrollableScrollPhysics(),
                                              gridDelegate:
                                                  SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                                crossAxisCount: 2,
                                              ),
                                              crossAxisSpacing: () {
                                                if (MediaQuery.sizeOf(context)
                                                        .width <
                                                    kBreakpointSmall) {
                                                  return 8.0;
                                                } else if (MediaQuery.sizeOf(
                                                            context)
                                                        .width <
                                                    kBreakpointMedium) {
                                                  return 8.0;
                                                } else if (MediaQuery.sizeOf(
                                                            context)
                                                        .width <
                                                    kBreakpointLarge) {
                                                  return 16.0;
                                                } else {
                                                  return 16.0;
                                                }
                                              }(),
                                              mainAxisSpacing: 8.0,
                                              itemCount: 2,
                                              shrinkWrap: true,
                                              itemBuilder: (context, index) {
                                                return [
                                                  () => InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          FFAppState().perfore =
                                                              '1';
                                                          safeSetState(() {});
                                                          if (animationsMap[
                                                                  'perForeOnActionTriggerAnimation4'] !=
                                                              null) {
                                                            animationsMap[
                                                                    'perForeOnActionTriggerAnimation4']!
                                                                .controller
                                                                .forward(
                                                                    from: 0.0);
                                                          }
                                                          await Future.delayed(
                                                            Duration(
                                                              milliseconds: 100,
                                                            ),
                                                          );
                                                        },
                                                        child: wrapWithModel(
                                                          model: _model
                                                              .perForeModel4,
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          child: PerForeWidget(
                                                            names: 'มี',
                                                            perfore: '1',
                                                          ),
                                                        ),
                                                      ).animateOnActionTrigger(
                                                        animationsMap[
                                                            'perForeOnActionTriggerAnimation4']!,
                                                      ),
                                                  () => InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          FFAppState().perfore =
                                                              '2';
                                                          safeSetState(() {});
                                                          if (animationsMap[
                                                                  'perForeOnActionTriggerAnimation5'] !=
                                                              null) {
                                                            animationsMap[
                                                                    'perForeOnActionTriggerAnimation5']!
                                                                .controller
                                                                .forward(
                                                                    from: 0.0);
                                                          }
                                                          await Future.delayed(
                                                            Duration(
                                                              milliseconds: 100,
                                                            ),
                                                          );
                                                        },
                                                        child: wrapWithModel(
                                                          model: _model
                                                              .perForeModel5,
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          child: PerForeWidget(
                                                            names: 'ไม่มี',
                                                            perfore: '2',
                                                          ),
                                                        ),
                                                      ).animateOnActionTrigger(
                                                        animationsMap[
                                                            'perForeOnActionTriggerAnimation5']!,
                                                      ),
                                                ][index]();
                                              },
                                            ),
                                          ].divide(SizedBox(height: () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                kBreakpointSmall) {
                                              return 8.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointMedium) {
                                              return 8.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointLarge) {
                                              return 12.0;
                                            } else {
                                              return 12.0;
                                            }
                                          }())),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Color(0xFFE9F0F9),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          width: 1.0,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(
                                            valueOrDefault<double>(
                                          () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                kBreakpointSmall) {
                                              return 12.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointMedium) {
                                              return 12.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
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
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  '11. กินจุแต่ผอมลง',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        color:
                                                            Color(0xFF077DD7),
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts:
                                                            !FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMediumIsCustom,
                                                      ),
                                                ),
                                              ],
                                            ),
                                            MasonryGridView.builder(
                                              physics:
                                                  const NeverScrollableScrollPhysics(),
                                              gridDelegate:
                                                  SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                                crossAxisCount: 2,
                                              ),
                                              crossAxisSpacing: () {
                                                if (MediaQuery.sizeOf(context)
                                                        .width <
                                                    kBreakpointSmall) {
                                                  return 8.0;
                                                } else if (MediaQuery.sizeOf(
                                                            context)
                                                        .width <
                                                    kBreakpointMedium) {
                                                  return 8.0;
                                                } else if (MediaQuery.sizeOf(
                                                            context)
                                                        .width <
                                                    kBreakpointLarge) {
                                                  return 16.0;
                                                } else {
                                                  return 16.0;
                                                }
                                              }(),
                                              mainAxisSpacing: 8.0,
                                              itemCount: 2,
                                              shrinkWrap: true,
                                              itemBuilder: (context, index) {
                                                return [
                                                  () => InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          FFAppState().perfive =
                                                              '1';
                                                          safeSetState(() {});
                                                          if (animationsMap[
                                                                  'perFiveOnActionTriggerAnimation4'] !=
                                                              null) {
                                                            animationsMap[
                                                                    'perFiveOnActionTriggerAnimation4']!
                                                                .controller
                                                                .forward(
                                                                    from: 0.0);
                                                          }
                                                          await Future.delayed(
                                                            Duration(
                                                              milliseconds: 100,
                                                            ),
                                                          );
                                                        },
                                                        child: wrapWithModel(
                                                          model: _model
                                                              .perFiveModel4,
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          child: PerFiveWidget(
                                                            names: 'มี',
                                                            perfive: '1',
                                                          ),
                                                        ),
                                                      ).animateOnActionTrigger(
                                                        animationsMap[
                                                            'perFiveOnActionTriggerAnimation4']!,
                                                      ),
                                                  () => InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          FFAppState().perfive =
                                                              '2';
                                                          safeSetState(() {});
                                                          if (animationsMap[
                                                                  'perFiveOnActionTriggerAnimation5'] !=
                                                              null) {
                                                            animationsMap[
                                                                    'perFiveOnActionTriggerAnimation5']!
                                                                .controller
                                                                .forward(
                                                                    from: 0.0);
                                                          }
                                                          await Future.delayed(
                                                            Duration(
                                                              milliseconds: 100,
                                                            ),
                                                          );
                                                        },
                                                        child: wrapWithModel(
                                                          model: _model
                                                              .perFiveModel5,
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          child: PerFiveWidget(
                                                            names: 'ไม่มี',
                                                            perfive: '2',
                                                          ),
                                                        ),
                                                      ).animateOnActionTrigger(
                                                        animationsMap[
                                                            'perFiveOnActionTriggerAnimation5']!,
                                                      ),
                                                ][index]();
                                              },
                                            ),
                                          ].divide(SizedBox(height: () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                kBreakpointSmall) {
                                              return 8.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointMedium) {
                                              return 8.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointLarge) {
                                              return 12.0;
                                            } else {
                                              return 12.0;
                                            }
                                          }())),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Color(0xFFE9F0F9),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          width: 1.0,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(
                                            valueOrDefault<double>(
                                          () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                kBreakpointSmall) {
                                              return 12.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointMedium) {
                                              return 12.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
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
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  '12. น้ำหนักลด / อ่อนเพลีย',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        color:
                                                            Color(0xFF077DD7),
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts:
                                                            !FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMediumIsCustom,
                                                      ),
                                                ),
                                              ],
                                            ),
                                            MasonryGridView.builder(
                                              physics:
                                                  const NeverScrollableScrollPhysics(),
                                              gridDelegate:
                                                  SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                                crossAxisCount: 2,
                                              ),
                                              crossAxisSpacing: () {
                                                if (MediaQuery.sizeOf(context)
                                                        .width <
                                                    kBreakpointSmall) {
                                                  return 8.0;
                                                } else if (MediaQuery.sizeOf(
                                                            context)
                                                        .width <
                                                    kBreakpointMedium) {
                                                  return 8.0;
                                                } else if (MediaQuery.sizeOf(
                                                            context)
                                                        .width <
                                                    kBreakpointLarge) {
                                                  return 16.0;
                                                } else {
                                                  return 16.0;
                                                }
                                              }(),
                                              mainAxisSpacing: 8.0,
                                              itemCount: 2,
                                              shrinkWrap: true,
                                              itemBuilder: (context, index) {
                                                return [
                                                  () => InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          FFAppState().perone =
                                                              '1';
                                                          safeSetState(() {});
                                                          if (animationsMap[
                                                                  'perOneOnActionTriggerAnimation6'] !=
                                                              null) {
                                                            animationsMap[
                                                                    'perOneOnActionTriggerAnimation6']!
                                                                .controller
                                                                .forward(
                                                                    from: 0.0);
                                                          }
                                                          await Future.delayed(
                                                            Duration(
                                                              milliseconds: 100,
                                                            ),
                                                          );
                                                        },
                                                        child: wrapWithModel(
                                                          model: _model
                                                              .perOneModel6,
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          child: PerOneWidget(
                                                            names: 'มี',
                                                            perone: '1',
                                                          ),
                                                        ),
                                                      ).animateOnActionTrigger(
                                                        animationsMap[
                                                            'perOneOnActionTriggerAnimation6']!,
                                                      ),
                                                  () => InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          FFAppState().perone =
                                                              '2';
                                                          safeSetState(() {});
                                                          if (animationsMap[
                                                                  'perOneOnActionTriggerAnimation7'] !=
                                                              null) {
                                                            animationsMap[
                                                                    'perOneOnActionTriggerAnimation7']!
                                                                .controller
                                                                .forward(
                                                                    from: 0.0);
                                                          }
                                                          await Future.delayed(
                                                            Duration(
                                                              milliseconds: 100,
                                                            ),
                                                          );
                                                        },
                                                        child: wrapWithModel(
                                                          model: _model
                                                              .perOneModel7,
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          child: PerOneWidget(
                                                            names: 'ไม่มี',
                                                            perone: '2',
                                                          ),
                                                        ),
                                                      ).animateOnActionTrigger(
                                                        animationsMap[
                                                            'perOneOnActionTriggerAnimation7']!,
                                                      ),
                                                ][index]();
                                              },
                                            ),
                                          ].divide(SizedBox(height: () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                kBreakpointSmall) {
                                              return 8.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointMedium) {
                                              return 8.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointLarge) {
                                              return 12.0;
                                            } else {
                                              return 12.0;
                                            }
                                          }())),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Color(0xFFE9F0F9),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          width: 1.0,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(
                                            valueOrDefault<double>(
                                          () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                kBreakpointSmall) {
                                              return 12.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointMedium) {
                                              return 12.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
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
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Expanded(
                                                  child: Text(
                                                    '13. เป็นแผลริมฝีปากและหายยาก',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          color:
                                                              Color(0xFF077DD7),
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMediumIsCustom,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            MasonryGridView.builder(
                                              physics:
                                                  const NeverScrollableScrollPhysics(),
                                              gridDelegate:
                                                  SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                                crossAxisCount: 2,
                                              ),
                                              crossAxisSpacing: () {
                                                if (MediaQuery.sizeOf(context)
                                                        .width <
                                                    kBreakpointSmall) {
                                                  return 8.0;
                                                } else if (MediaQuery.sizeOf(
                                                            context)
                                                        .width <
                                                    kBreakpointMedium) {
                                                  return 8.0;
                                                } else if (MediaQuery.sizeOf(
                                                            context)
                                                        .width <
                                                    kBreakpointLarge) {
                                                  return 16.0;
                                                } else {
                                                  return 16.0;
                                                }
                                              }(),
                                              mainAxisSpacing: 8.0,
                                              itemCount: 2,
                                              shrinkWrap: true,
                                              itemBuilder: (context, index) {
                                                return [
                                                  () => InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          FFAppState().pertwo =
                                                              '1';
                                                          safeSetState(() {});
                                                          if (animationsMap[
                                                                  'perTwoOnActionTriggerAnimation6'] !=
                                                              null) {
                                                            animationsMap[
                                                                    'perTwoOnActionTriggerAnimation6']!
                                                                .controller
                                                                .forward(
                                                                    from: 0.0);
                                                          }
                                                          await Future.delayed(
                                                            Duration(
                                                              milliseconds: 100,
                                                            ),
                                                          );
                                                        },
                                                        child: wrapWithModel(
                                                          model: _model
                                                              .perTwoModel6,
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          child: PerTwoWidget(
                                                            names: 'มี',
                                                            pertwo: '1',
                                                          ),
                                                        ),
                                                      ).animateOnActionTrigger(
                                                        animationsMap[
                                                            'perTwoOnActionTriggerAnimation6']!,
                                                      ),
                                                  () => InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          FFAppState().pertwo =
                                                              '2';
                                                          safeSetState(() {});
                                                          if (animationsMap[
                                                                  'perTwoOnActionTriggerAnimation7'] !=
                                                              null) {
                                                            animationsMap[
                                                                    'perTwoOnActionTriggerAnimation7']!
                                                                .controller
                                                                .forward(
                                                                    from: 0.0);
                                                          }
                                                          await Future.delayed(
                                                            Duration(
                                                              milliseconds: 100,
                                                            ),
                                                          );
                                                        },
                                                        child: wrapWithModel(
                                                          model: _model
                                                              .perTwoModel7,
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          child: PerTwoWidget(
                                                            names: 'ไม่มี',
                                                            pertwo: '2',
                                                          ),
                                                        ),
                                                      ).animateOnActionTrigger(
                                                        animationsMap[
                                                            'perTwoOnActionTriggerAnimation7']!,
                                                      ),
                                                ][index]();
                                              },
                                            ),
                                          ].divide(SizedBox(height: () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                kBreakpointSmall) {
                                              return 8.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointMedium) {
                                              return 8.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointLarge) {
                                              return 12.0;
                                            } else {
                                              return 12.0;
                                            }
                                          }())),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Color(0xFFE9F0F9),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          width: 1.0,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(
                                            valueOrDefault<double>(
                                          () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                kBreakpointSmall) {
                                              return 12.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointMedium) {
                                              return 12.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
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
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  '14. คันตามผิวหนังและอวัยวะสืบพันธุ์',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        color:
                                                            Color(0xFF077DD7),
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts:
                                                            !FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMediumIsCustom,
                                                      ),
                                                ),
                                              ],
                                            ),
                                            MasonryGridView.builder(
                                              physics:
                                                  const NeverScrollableScrollPhysics(),
                                              gridDelegate:
                                                  SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                                crossAxisCount: 2,
                                              ),
                                              crossAxisSpacing: () {
                                                if (MediaQuery.sizeOf(context)
                                                        .width <
                                                    kBreakpointSmall) {
                                                  return 8.0;
                                                } else if (MediaQuery.sizeOf(
                                                            context)
                                                        .width <
                                                    kBreakpointMedium) {
                                                  return 8.0;
                                                } else if (MediaQuery.sizeOf(
                                                            context)
                                                        .width <
                                                    kBreakpointLarge) {
                                                  return 16.0;
                                                } else {
                                                  return 16.0;
                                                }
                                              }(),
                                              mainAxisSpacing: 8.0,
                                              itemCount: 2,
                                              shrinkWrap: true,
                                              itemBuilder: (context, index) {
                                                return [
                                                  () => InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          FFAppState()
                                                              .perthree = '1';
                                                          safeSetState(() {});
                                                          if (animationsMap[
                                                                  'perThreeOnActionTriggerAnimation6'] !=
                                                              null) {
                                                            animationsMap[
                                                                    'perThreeOnActionTriggerAnimation6']!
                                                                .controller
                                                                .forward(
                                                                    from: 0.0);
                                                          }
                                                          await Future.delayed(
                                                            Duration(
                                                              milliseconds: 100,
                                                            ),
                                                          );
                                                        },
                                                        child: wrapWithModel(
                                                          model: _model
                                                              .perThreeModel6,
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          child: PerThreeWidget(
                                                            names: 'มี',
                                                            perthree: '1',
                                                          ),
                                                        ),
                                                      ).animateOnActionTrigger(
                                                        animationsMap[
                                                            'perThreeOnActionTriggerAnimation6']!,
                                                      ),
                                                  () => InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          FFAppState()
                                                              .perthree = '2';
                                                          safeSetState(() {});
                                                          if (animationsMap[
                                                                  'perThreeOnActionTriggerAnimation7'] !=
                                                              null) {
                                                            animationsMap[
                                                                    'perThreeOnActionTriggerAnimation7']!
                                                                .controller
                                                                .forward(
                                                                    from: 0.0);
                                                          }
                                                          await Future.delayed(
                                                            Duration(
                                                              milliseconds: 100,
                                                            ),
                                                          );
                                                        },
                                                        child: wrapWithModel(
                                                          model: _model
                                                              .perThreeModel7,
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          child: PerThreeWidget(
                                                            names: 'ไม่มี',
                                                            perthree: '2',
                                                          ),
                                                        ),
                                                      ).animateOnActionTrigger(
                                                        animationsMap[
                                                            'perThreeOnActionTriggerAnimation7']!,
                                                      ),
                                                ][index]();
                                              },
                                            ),
                                          ].divide(SizedBox(height: () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                kBreakpointSmall) {
                                              return 8.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointMedium) {
                                              return 8.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointLarge) {
                                              return 12.0;
                                            } else {
                                              return 12.0;
                                            }
                                          }())),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Color(0xFFE9F0F9),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          width: 1.0,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(
                                            valueOrDefault<double>(
                                          () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                kBreakpointSmall) {
                                              return 12.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointMedium) {
                                              return 12.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
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
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  '15. ตาพร่ามัว ต้องเปลี่ยนแว่นบ่อย',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        color:
                                                            Color(0xFF077DD7),
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts:
                                                            !FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMediumIsCustom,
                                                      ),
                                                ),
                                              ],
                                            ),
                                            MasonryGridView.builder(
                                              physics:
                                                  const NeverScrollableScrollPhysics(),
                                              gridDelegate:
                                                  SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                                crossAxisCount: 2,
                                              ),
                                              crossAxisSpacing: () {
                                                if (MediaQuery.sizeOf(context)
                                                        .width <
                                                    kBreakpointSmall) {
                                                  return 8.0;
                                                } else if (MediaQuery.sizeOf(
                                                            context)
                                                        .width <
                                                    kBreakpointMedium) {
                                                  return 8.0;
                                                } else if (MediaQuery.sizeOf(
                                                            context)
                                                        .width <
                                                    kBreakpointLarge) {
                                                  return 16.0;
                                                } else {
                                                  return 16.0;
                                                }
                                              }(),
                                              mainAxisSpacing: 8.0,
                                              itemCount: 2,
                                              shrinkWrap: true,
                                              itemBuilder: (context, index) {
                                                return [
                                                  () => InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          FFAppState().perfore =
                                                              '1';
                                                          safeSetState(() {});
                                                          if (animationsMap[
                                                                  'perForeOnActionTriggerAnimation6'] !=
                                                              null) {
                                                            animationsMap[
                                                                    'perForeOnActionTriggerAnimation6']!
                                                                .controller
                                                                .forward(
                                                                    from: 0.0);
                                                          }
                                                          await Future.delayed(
                                                            Duration(
                                                              milliseconds: 100,
                                                            ),
                                                          );
                                                        },
                                                        child: wrapWithModel(
                                                          model: _model
                                                              .perForeModel6,
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          child: PerForeWidget(
                                                            names: 'มี',
                                                            perfore: '1',
                                                          ),
                                                        ),
                                                      ).animateOnActionTrigger(
                                                        animationsMap[
                                                            'perForeOnActionTriggerAnimation6']!,
                                                      ),
                                                  () => InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          FFAppState().perfore =
                                                              '2';
                                                          safeSetState(() {});
                                                          if (animationsMap[
                                                                  'perForeOnActionTriggerAnimation7'] !=
                                                              null) {
                                                            animationsMap[
                                                                    'perForeOnActionTriggerAnimation7']!
                                                                .controller
                                                                .forward(
                                                                    from: 0.0);
                                                          }
                                                          await Future.delayed(
                                                            Duration(
                                                              milliseconds: 100,
                                                            ),
                                                          );
                                                        },
                                                        child: wrapWithModel(
                                                          model: _model
                                                              .perForeModel7,
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          child: PerForeWidget(
                                                            names: 'ไม่มี',
                                                            perfore: '2',
                                                          ),
                                                        ),
                                                      ).animateOnActionTrigger(
                                                        animationsMap[
                                                            'perForeOnActionTriggerAnimation7']!,
                                                      ),
                                                ][index]();
                                              },
                                            ),
                                          ].divide(SizedBox(height: () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                kBreakpointSmall) {
                                              return 8.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointMedium) {
                                              return 8.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointLarge) {
                                              return 12.0;
                                            } else {
                                              return 12.0;
                                            }
                                          }())),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Color(0xFFE9F0F9),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          width: 1.0,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(
                                            valueOrDefault<double>(
                                          () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                kBreakpointSmall) {
                                              return 12.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointMedium) {
                                              return 12.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
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
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  '16. ชาตามปลายมือปลายเท้าโดยไม่ทราบสาเหตุ',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        color:
                                                            Color(0xFF077DD7),
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts:
                                                            !FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMediumIsCustom,
                                                      ),
                                                ),
                                              ],
                                            ),
                                            MasonryGridView.builder(
                                              physics:
                                                  const NeverScrollableScrollPhysics(),
                                              gridDelegate:
                                                  SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                                crossAxisCount: 2,
                                              ),
                                              crossAxisSpacing: () {
                                                if (MediaQuery.sizeOf(context)
                                                        .width <
                                                    kBreakpointSmall) {
                                                  return 8.0;
                                                } else if (MediaQuery.sizeOf(
                                                            context)
                                                        .width <
                                                    kBreakpointMedium) {
                                                  return 8.0;
                                                } else if (MediaQuery.sizeOf(
                                                            context)
                                                        .width <
                                                    kBreakpointLarge) {
                                                  return 16.0;
                                                } else {
                                                  return 16.0;
                                                }
                                              }(),
                                              mainAxisSpacing: 8.0,
                                              itemCount: 2,
                                              shrinkWrap: true,
                                              itemBuilder: (context, index) {
                                                return [
                                                  () => InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          FFAppState().perfive =
                                                              '1';
                                                          safeSetState(() {});
                                                          if (animationsMap[
                                                                  'perFiveOnActionTriggerAnimation6'] !=
                                                              null) {
                                                            animationsMap[
                                                                    'perFiveOnActionTriggerAnimation6']!
                                                                .controller
                                                                .forward(
                                                                    from: 0.0);
                                                          }
                                                          await Future.delayed(
                                                            Duration(
                                                              milliseconds: 100,
                                                            ),
                                                          );
                                                        },
                                                        child: wrapWithModel(
                                                          model: _model
                                                              .perFiveModel6,
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          child: PerFiveWidget(
                                                            names: 'มี',
                                                            perfive: '1',
                                                          ),
                                                        ),
                                                      ).animateOnActionTrigger(
                                                        animationsMap[
                                                            'perFiveOnActionTriggerAnimation6']!,
                                                      ),
                                                  () => InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          FFAppState().perfive =
                                                              '2';
                                                          safeSetState(() {});
                                                          if (animationsMap[
                                                                  'perFiveOnActionTriggerAnimation7'] !=
                                                              null) {
                                                            animationsMap[
                                                                    'perFiveOnActionTriggerAnimation7']!
                                                                .controller
                                                                .forward(
                                                                    from: 0.0);
                                                          }
                                                          await Future.delayed(
                                                            Duration(
                                                              milliseconds: 100,
                                                            ),
                                                          );
                                                        },
                                                        child: wrapWithModel(
                                                          model: _model
                                                              .perFiveModel7,
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          child: PerFiveWidget(
                                                            names: 'ไม่มี',
                                                            perfive: '2',
                                                          ),
                                                        ),
                                                      ).animateOnActionTrigger(
                                                        animationsMap[
                                                            'perFiveOnActionTriggerAnimation7']!,
                                                      ),
                                                ][index]();
                                              },
                                            ),
                                          ].divide(SizedBox(height: () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                kBreakpointSmall) {
                                              return 8.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointMedium) {
                                              return 8.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointLarge) {
                                              return 12.0;
                                            } else {
                                              return 12.0;
                                            }
                                          }())),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Color(0xFFE9F0F9),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          width: 1.0,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(
                                            valueOrDefault<double>(
                                          () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                kBreakpointSmall) {
                                              return 12.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointMedium) {
                                              return 12.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
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
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Expanded(
                                                  child: Text(
                                                    '17. มีรอยพับรอบคอหรือใต้รักแร้ดำ',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          color:
                                                              Color(0xFF077DD7),
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMediumIsCustom,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            MasonryGridView.builder(
                                              physics:
                                                  const NeverScrollableScrollPhysics(),
                                              gridDelegate:
                                                  SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                                crossAxisCount: 2,
                                              ),
                                              crossAxisSpacing: () {
                                                if (MediaQuery.sizeOf(context)
                                                        .width <
                                                    kBreakpointSmall) {
                                                  return 8.0;
                                                } else if (MediaQuery.sizeOf(
                                                            context)
                                                        .width <
                                                    kBreakpointMedium) {
                                                  return 8.0;
                                                } else if (MediaQuery.sizeOf(
                                                            context)
                                                        .width <
                                                    kBreakpointLarge) {
                                                  return 16.0;
                                                } else {
                                                  return 16.0;
                                                }
                                              }(),
                                              mainAxisSpacing: 8.0,
                                              itemCount: 2,
                                              shrinkWrap: true,
                                              itemBuilder: (context, index) {
                                                return [
                                                  () => InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          FFAppState().pertwo =
                                                              '1';
                                                          safeSetState(() {});
                                                          if (animationsMap[
                                                                  'perTwoOnActionTriggerAnimation8'] !=
                                                              null) {
                                                            animationsMap[
                                                                    'perTwoOnActionTriggerAnimation8']!
                                                                .controller
                                                                .forward(
                                                                    from: 0.0);
                                                          }
                                                          await Future.delayed(
                                                            Duration(
                                                              milliseconds: 100,
                                                            ),
                                                          );
                                                        },
                                                        child: wrapWithModel(
                                                          model: _model
                                                              .perTwoModel8,
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          child: PerTwoWidget(
                                                            names: 'มี',
                                                            pertwo: '1',
                                                          ),
                                                        ),
                                                      ).animateOnActionTrigger(
                                                        animationsMap[
                                                            'perTwoOnActionTriggerAnimation8']!,
                                                      ),
                                                  () => InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          FFAppState().pertwo =
                                                              '2';
                                                          safeSetState(() {});
                                                          if (animationsMap[
                                                                  'perTwoOnActionTriggerAnimation9'] !=
                                                              null) {
                                                            animationsMap[
                                                                    'perTwoOnActionTriggerAnimation9']!
                                                                .controller
                                                                .forward(
                                                                    from: 0.0);
                                                          }
                                                          await Future.delayed(
                                                            Duration(
                                                              milliseconds: 100,
                                                            ),
                                                          );
                                                        },
                                                        child: wrapWithModel(
                                                          model: _model
                                                              .perTwoModel9,
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          child: PerTwoWidget(
                                                            names: 'ไม่มี',
                                                            pertwo: '2',
                                                          ),
                                                        ),
                                                      ).animateOnActionTrigger(
                                                        animationsMap[
                                                            'perTwoOnActionTriggerAnimation9']!,
                                                      ),
                                                ][index]();
                                              },
                                            ),
                                          ].divide(SizedBox(height: () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                kBreakpointSmall) {
                                              return 8.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointMedium) {
                                              return 8.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointLarge) {
                                              return 12.0;
                                            } else {
                                              return 12.0;
                                            }
                                          }())),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Color(0xFFE9F0F9),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          width: 1.0,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(
                                            valueOrDefault<double>(
                                          () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                kBreakpointSmall) {
                                              return 12.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointMedium) {
                                              return 12.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
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
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  '18. ประวัติมีน้ำตาลในเลือดสูง',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        color:
                                                            Color(0xFF077DD7),
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts:
                                                            !FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMediumIsCustom,
                                                      ),
                                                ),
                                              ],
                                            ),
                                            MasonryGridView.builder(
                                              physics:
                                                  const NeverScrollableScrollPhysics(),
                                              gridDelegate:
                                                  SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                                crossAxisCount: 2,
                                              ),
                                              crossAxisSpacing: () {
                                                if (MediaQuery.sizeOf(context)
                                                        .width <
                                                    kBreakpointSmall) {
                                                  return 8.0;
                                                } else if (MediaQuery.sizeOf(
                                                            context)
                                                        .width <
                                                    kBreakpointMedium) {
                                                  return 8.0;
                                                } else if (MediaQuery.sizeOf(
                                                            context)
                                                        .width <
                                                    kBreakpointLarge) {
                                                  return 16.0;
                                                } else {
                                                  return 16.0;
                                                }
                                              }(),
                                              mainAxisSpacing: 8.0,
                                              itemCount: 2,
                                              shrinkWrap: true,
                                              itemBuilder: (context, index) {
                                                return [
                                                  () => InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          FFAppState()
                                                              .perthree = '1';
                                                          safeSetState(() {});
                                                          if (animationsMap[
                                                                  'perThreeOnActionTriggerAnimation8'] !=
                                                              null) {
                                                            animationsMap[
                                                                    'perThreeOnActionTriggerAnimation8']!
                                                                .controller
                                                                .forward(
                                                                    from: 0.0);
                                                          }
                                                          await Future.delayed(
                                                            Duration(
                                                              milliseconds: 100,
                                                            ),
                                                          );
                                                        },
                                                        child: wrapWithModel(
                                                          model: _model
                                                              .perThreeModel8,
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          child: PerThreeWidget(
                                                            names: 'มี',
                                                            perthree: '1',
                                                          ),
                                                        ),
                                                      ).animateOnActionTrigger(
                                                        animationsMap[
                                                            'perThreeOnActionTriggerAnimation8']!,
                                                      ),
                                                  () => InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          FFAppState()
                                                              .perthree = '2';
                                                          safeSetState(() {});
                                                          if (animationsMap[
                                                                  'perThreeOnActionTriggerAnimation9'] !=
                                                              null) {
                                                            animationsMap[
                                                                    'perThreeOnActionTriggerAnimation9']!
                                                                .controller
                                                                .forward(
                                                                    from: 0.0);
                                                          }
                                                          await Future.delayed(
                                                            Duration(
                                                              milliseconds: 100,
                                                            ),
                                                          );
                                                        },
                                                        child: wrapWithModel(
                                                          model: _model
                                                              .perThreeModel9,
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          child: PerThreeWidget(
                                                            names: 'ไม่มี',
                                                            perthree: '2',
                                                          ),
                                                        ),
                                                      ).animateOnActionTrigger(
                                                        animationsMap[
                                                            'perThreeOnActionTriggerAnimation9']!,
                                                      ),
                                                ][index]();
                                              },
                                            ),
                                          ].divide(SizedBox(height: () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                kBreakpointSmall) {
                                              return 8.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointMedium) {
                                              return 8.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointLarge) {
                                              return 12.0;
                                            } else {
                                              return 12.0;
                                            }
                                          }())),
                                        ),
                                      ),
                                    ),
                                  ].divide(SizedBox(height: 12.0)),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 8.0),
                                      child: RichText(
                                        textScaler:
                                            MediaQuery.of(context).textScaler,
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: 'ส่วนที่ 3 : ข้อ 19',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmallFamily,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts:
                                                            !FlutterFlowTheme
                                                                    .of(context)
                                                                .titleSmallIsCustom,
                                                      ),
                                            )
                                          ],
                                          style: FlutterFlowTheme.of(context)
                                              .titleSmall
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmallFamily,
                                                letterSpacing: 0.0,
                                                lineHeight: 1.8,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .titleSmallIsCustom,
                                              ),
                                        ),
                                        textAlign: TextAlign.start,
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Color(0xFFE9F0F9),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          width: 1.0,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(
                                            valueOrDefault<double>(
                                          () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                kBreakpointSmall) {
                                              return 12.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointMedium) {
                                              return 12.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
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
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  '19. วิธีการบฏิบัติตน หากมีประวัติตามข้อที่ผ่านมา',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        color:
                                                            Color(0xFF077DD7),
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts:
                                                            !FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMediumIsCustom,
                                                      ),
                                                ),
                                              ],
                                            ),
                                            MasonryGridView.builder(
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
                                                if (MediaQuery.sizeOf(context)
                                                        .width <
                                                    kBreakpointSmall) {
                                                  return 8.0;
                                                } else if (MediaQuery.sizeOf(
                                                            context)
                                                        .width <
                                                    kBreakpointMedium) {
                                                  return 8.0;
                                                } else if (MediaQuery.sizeOf(
                                                            context)
                                                        .width <
                                                    kBreakpointLarge) {
                                                  return 16.0;
                                                } else {
                                                  return 16.0;
                                                }
                                              }(),
                                              mainAxisSpacing: 8.0,
                                              itemCount: 3,
                                              shrinkWrap: true,
                                              itemBuilder: (context, index) {
                                                return [
                                                  () => InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          FFAppState().perone =
                                                              '1';
                                                          safeSetState(() {});
                                                          if (animationsMap[
                                                                  'perOneOnActionTriggerAnimation8'] !=
                                                              null) {
                                                            animationsMap[
                                                                    'perOneOnActionTriggerAnimation8']!
                                                                .controller
                                                                .forward(
                                                                    from: 0.0);
                                                          }
                                                          await Future.delayed(
                                                            Duration(
                                                              milliseconds: 100,
                                                            ),
                                                          );
                                                        },
                                                        child: wrapWithModel(
                                                          model: _model
                                                              .perOneModel8,
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          child: PerOneWidget(
                                                            names:
                                                                'รับการรักษาอยู่/ปฏิบัติตามที่แพทย์แนะนำ',
                                                            perone: '1',
                                                          ),
                                                        ),
                                                      ).animateOnActionTrigger(
                                                        animationsMap[
                                                            'perOneOnActionTriggerAnimation8']!,
                                                      ),
                                                  () => InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          FFAppState().perone =
                                                              '2';
                                                          safeSetState(() {});
                                                          if (animationsMap[
                                                                  'perOneOnActionTriggerAnimation9'] !=
                                                              null) {
                                                            animationsMap[
                                                                    'perOneOnActionTriggerAnimation9']!
                                                                .controller
                                                                .forward(
                                                                    from: 0.0);
                                                          }
                                                          await Future.delayed(
                                                            Duration(
                                                              milliseconds: 100,
                                                            ),
                                                          );
                                                        },
                                                        child: wrapWithModel(
                                                          model: _model
                                                              .perOneModel9,
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          child: PerOneWidget(
                                                            names:
                                                                'รับการรักษาแต่ไม่สม่ำเสมอ',
                                                            perone: '2',
                                                          ),
                                                        ),
                                                      ).animateOnActionTrigger(
                                                        animationsMap[
                                                            'perOneOnActionTriggerAnimation9']!,
                                                      ),
                                                  () => InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          FFAppState().perone =
                                                              '3';
                                                          safeSetState(() {});
                                                          if (animationsMap[
                                                                  'perOneOnActionTriggerAnimation10'] !=
                                                              null) {
                                                            animationsMap[
                                                                    'perOneOnActionTriggerAnimation10']!
                                                                .controller
                                                                .forward(
                                                                    from: 0.0);
                                                          }
                                                          await Future.delayed(
                                                            Duration(
                                                              milliseconds: 100,
                                                            ),
                                                          );
                                                        },
                                                        child: wrapWithModel(
                                                          model: _model
                                                              .perOneModel10,
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          child: PerOneWidget(
                                                            names:
                                                                'เคยรักษา ขณะนี้ไม่รักษา/หายาทานเอง',
                                                            perone: '3',
                                                          ),
                                                        ),
                                                      ).animateOnActionTrigger(
                                                        animationsMap[
                                                            'perOneOnActionTriggerAnimation10']!,
                                                      ),
                                                ][index]();
                                              },
                                            ),
                                          ].divide(SizedBox(height: () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                kBreakpointSmall) {
                                              return 8.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointMedium) {
                                              return 8.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointLarge) {
                                              return 12.0;
                                            } else {
                                              return 12.0;
                                            }
                                          }())),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                FFButtonWidget(
                                  onPressed: () async {
                                    _model.pagefamily = 3;
                                    safeSetState(() {});
                                  },
                                  text: 'ถัดไป',
                                  options: FFButtonOptions(
                                    width: double.infinity,
                                    height: () {
                                      if (MediaQuery.sizeOf(context).width <
                                          kBreakpointSmall) {
                                        return 48.0;
                                      } else if (MediaQuery.sizeOf(context)
                                              .width <
                                          kBreakpointMedium) {
                                        return 48.0;
                                      } else if (MediaQuery.sizeOf(context)
                                              .width <
                                          kBreakpointLarge) {
                                        return 56.0;
                                      } else {
                                        return 56.0;
                                      }
                                    }(),
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 16.0, 0.0),
                                    iconAlignment: IconAlignment.start,
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: FlutterFlowTheme.of(context)
                                        .customColor5,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .bodyMediumIsCustom,
                                        ),
                                    elevation: 0.0,
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 0.0,
                                    ),
                                    borderRadius: BorderRadius.circular(100.0),
                                  ),
                                ),
                              ].divide(SizedBox(height: 32.0)),
                            ),
                          ),
                        ),
                      ],
                    );
                  } else if (_model.pagefamily == 3) {
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
                                      color: Color(0x1AFFFFFF),
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
                                      color: Color(0x1AFFFFFF),
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
                                      color: Color(0x1AFFFFFF),
                                      borderRadius:
                                          BorderRadius.circular(100.0),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 8.0, 16.0, 0.0),
                                child: ListView(
                                  padding: EdgeInsets.fromLTRB(
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, -1.0),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            child: Image.network(
                                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/healflow-1ya11l/assets/g673aygcs3ho/smoke.png',
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
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    RichText(
                                      textScaler:
                                          MediaQuery.of(context).textScaler,
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'คุณสูบบุหรี่หรือไม่',
                                            style: FlutterFlowTheme.of(context)
                                                .titleLarge
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleLargeFamily,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .titleLargeIsCustom,
                                                ),
                                          )
                                        ],
                                        style: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
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
                                          () => Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      if (animationsMap[
                                                              'smokesOnActionTriggerAnimation1'] !=
                                                          null) {
                                                        animationsMap[
                                                                'smokesOnActionTriggerAnimation1']!
                                                            .controller
                                                            .forward(from: 0.0);
                                                      }
                                                      await Future.delayed(
                                                        Duration(
                                                          milliseconds: 100,
                                                        ),
                                                      );
                                                      FFAppState().smoke = '1';
                                                      FFAppState().nonsk =
                                                          false;
                                                      safeSetState(() {});
                                                      await showModalBottomSheet(
                                                        isScrollControlled:
                                                            true,
                                                        backgroundColor:
                                                            Colors.transparent,
                                                        enableDrag: false,
                                                        context: context,
                                                        builder: (context) {
                                                          return Padding(
                                                            padding: MediaQuery
                                                                .viewInsetsOf(
                                                                    context),
                                                            child:
                                                                ManyskWidget(),
                                                          );
                                                        },
                                                      ).then((value) =>
                                                          safeSetState(() {}));
                                                    },
                                                    child: wrapWithModel(
                                                      model:
                                                          _model.smokesModel1,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child: SmokesWidget(
                                                        text: 'สูบ',
                                                        smoke: '1',
                                                      ),
                                                    ),
                                                  ).animateOnActionTrigger(
                                                    animationsMap[
                                                        'smokesOnActionTriggerAnimation1']!,
                                                  ),
                                                  if (FFAppState().smokehide ==
                                                      true)
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  8.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Container(
                                                        width: double.infinity,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      24.0),
                                                          border: Border.all(
                                                            color: Color(
                                                                0xFFCED4E6),
                                                          ),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      12.0,
                                                                      20.0,
                                                                      12.0,
                                                                      20.0),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Expanded(
                                                                    child: Text(
                                                                      '- จำนวน 5 มวน/วัน ',
                                                                      textAlign:
                                                                          TextAlign
                                                                              .start,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelLarge
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).labelLargeFamily,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryText,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            lineHeight:
                                                                                1.5,
                                                                            useGoogleFonts:
                                                                                !FlutterFlowTheme.of(context).labelLargeIsCustom,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                  Expanded(
                                                                    child: Text(
                                                                      'จำนวน  30 แพ็ค/ปี',
                                                                      textAlign:
                                                                          TextAlign
                                                                              .start,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelLarge
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).labelLargeFamily,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryText,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            lineHeight:
                                                                                1.5,
                                                                            useGoogleFonts:
                                                                                !FlutterFlowTheme.of(context).labelLargeIsCustom,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ].divide(SizedBox(
                                                                    width:
                                                                        8.0)),
                                                              ),
                                                              Text(
                                                                '- ชนิดของบุหรี่ : กล่องทิพย์ ',
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelLarge
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .labelLargeFamily,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      lineHeight:
                                                                          1.5,
                                                                      useGoogleFonts:
                                                                          !FlutterFlowTheme.of(context)
                                                                              .labelLargeIsCustom,
                                                                    ),
                                                              ),
                                                              Text(
                                                                '- ระยะเวลา : 10 ปี ตั้งแต่เริ่มสูบจนถึงปัจจุบัน',
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelLarge
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .labelLargeFamily,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      lineHeight:
                                                                          1.5,
                                                                      useGoogleFonts:
                                                                          !FlutterFlowTheme.of(context)
                                                                              .labelLargeIsCustom,
                                                                    ),
                                                              ),
                                                            ].divide(SizedBox(
                                                                height: 8.0)),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                ],
                                              ),
                                          () => InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  if (animationsMap[
                                                          'smokesOnActionTriggerAnimation2'] !=
                                                      null) {
                                                    animationsMap[
                                                            'smokesOnActionTriggerAnimation2']!
                                                        .controller
                                                        .forward(from: 0.0);
                                                  }
                                                  await Future.delayed(
                                                    Duration(
                                                      milliseconds: 100,
                                                    ),
                                                  );
                                                  FFAppState().smoke = '2';
                                                  FFAppState().smokehide =
                                                      false;
                                                  FFAppState().nonsk = false;
                                                  safeSetState(() {});
                                                },
                                                child: wrapWithModel(
                                                  model: _model.smokesModel2,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: SmokesWidget(
                                                    text: 'ไม่สูบ',
                                                    smoke: '2',
                                                  ),
                                                ),
                                              ).animateOnActionTrigger(
                                                animationsMap[
                                                    'smokesOnActionTriggerAnimation2']!,
                                              ),
                                          () => Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      if (animationsMap[
                                                              'smokesOnActionTriggerAnimation3'] !=
                                                          null) {
                                                        animationsMap[
                                                                'smokesOnActionTriggerAnimation3']!
                                                            .controller
                                                            .forward(from: 0.0);
                                                      }
                                                      await Future.delayed(
                                                        Duration(
                                                          milliseconds: 100,
                                                        ),
                                                      );
                                                      FFAppState().smoke = '3';
                                                      FFAppState().smokehide =
                                                          false;
                                                      safeSetState(() {});
                                                      await showModalBottomSheet(
                                                        isScrollControlled:
                                                            true,
                                                        backgroundColor:
                                                            Colors.transparent,
                                                        enableDrag: false,
                                                        context: context,
                                                        builder: (context) {
                                                          return Padding(
                                                            padding: MediaQuery
                                                                .viewInsetsOf(
                                                                    context),
                                                            child: SkdeWidget(),
                                                          );
                                                        },
                                                      ).then((value) =>
                                                          safeSetState(() {}));
                                                    },
                                                    child: wrapWithModel(
                                                      model:
                                                          _model.smokesModel3,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child: SmokesWidget(
                                                        text:
                                                            'เคยสูบแต่เลิกแล้ว',
                                                        smoke: '3',
                                                      ),
                                                    ),
                                                  ).animateOnActionTrigger(
                                                    animationsMap[
                                                        'smokesOnActionTriggerAnimation3']!,
                                                  ),
                                                  if (FFAppState().nonsk ==
                                                      true)
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  8.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Container(
                                                        width: double.infinity,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      24.0),
                                                          border: Border.all(
                                                            color: Color(
                                                                0xFFCED4E6),
                                                          ),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      12.0,
                                                                      20.0,
                                                                      12.0,
                                                                      20.0),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                '- ชนิดของบุหรี่ที่เคยสูบ : กล่องทิพย์ ',
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelLarge
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .labelLargeFamily,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      lineHeight:
                                                                          1.5,
                                                                      useGoogleFonts:
                                                                          !FlutterFlowTheme.of(context)
                                                                              .labelLargeIsCustom,
                                                                    ),
                                                              ),
                                                              Text(
                                                                '- ระยะเวลา : 13 ปี ตั้งแต่เริ่มสูบจนหยุดสูบ',
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelLarge
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .labelLargeFamily,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      lineHeight:
                                                                          1.5,
                                                                      useGoogleFonts:
                                                                          !FlutterFlowTheme.of(context)
                                                                              .labelLargeIsCustom,
                                                                    ),
                                                              ),
                                                            ].divide(SizedBox(
                                                                height: 8.0)),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                ],
                                              ),
                                        ][index]();
                                      },
                                    ),
                                  ].divide(SizedBox(height: 24.0)),
                                ),
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
                              _model.pagefamily = 4;
                              safeSetState(() {});
                            },
                            child: wrapWithModel(
                              model: _model.startAsBottomModel2,
                              updateCallback: () => safeSetState(() {}),
                              child: StartAsBottomWidget(
                                text: 'ถัดไป',
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  } else if (_model.pagefamily == 4) {
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
                                      color: Color(0x1AFFFFFF),
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
                                      color: Color(0x1AFFFFFF),
                                      borderRadius:
                                          BorderRadius.circular(100.0),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 8.0, 16.0, 0.0),
                                child: ListView(
                                  padding: EdgeInsets.fromLTRB(
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, -1.0),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            child: Image.network(
                                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/healflow-1ya11l/assets/7bf2zxj33xc4/drink.png',
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
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    RichText(
                                      textScaler:
                                          MediaQuery.of(context).textScaler,
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'คุณดื่มแอลกอฮอร์หรือไม่',
                                            style: FlutterFlowTheme.of(context)
                                                .titleLarge
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleLargeFamily,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .titleLargeIsCustom,
                                                ),
                                          )
                                        ],
                                        style: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
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
                                          () => Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      if (animationsMap[
                                                              'drinkOnActionTriggerAnimation1'] !=
                                                          null) {
                                                        animationsMap[
                                                                'drinkOnActionTriggerAnimation1']!
                                                            .controller
                                                            .forward(from: 0.0);
                                                      }
                                                      await Future.delayed(
                                                        Duration(
                                                          milliseconds: 100,
                                                        ),
                                                      );
                                                      FFAppState().alcohol =
                                                          '1';
                                                      safeSetState(() {});
                                                      await showModalBottomSheet(
                                                        isScrollControlled:
                                                            true,
                                                        backgroundColor:
                                                            Colors.transparent,
                                                        enableDrag: false,
                                                        context: context,
                                                        builder: (context) {
                                                          return Padding(
                                                            padding: MediaQuery
                                                                .viewInsetsOf(
                                                                    context),
                                                            child:
                                                                ManyAlWidget(),
                                                          );
                                                        },
                                                      ).then((value) =>
                                                          safeSetState(() {}));
                                                    },
                                                    child: wrapWithModel(
                                                      model: _model.drinkModel1,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child: DrinkWidget(
                                                        text: 'ดื่ม',
                                                        alcohol: '1',
                                                      ),
                                                    ),
                                                  ).animateOnActionTrigger(
                                                    animationsMap[
                                                        'drinkOnActionTriggerAnimation1']!,
                                                  ),
                                                  if (FFAppState()
                                                          .Alcohalhide ==
                                                      true)
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  8.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Container(
                                                        width: double.infinity,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      24.0),
                                                          border: Border.all(
                                                            color: Color(
                                                                0xFFCED4E6),
                                                          ),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      12.0,
                                                                      20.0,
                                                                      12.0,
                                                                      20.0),
                                                          child: Text(
                                                            '3 ครั้ง/สัปดาห์',
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .labelLarge
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelLargeFamily,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  lineHeight:
                                                                      1.5,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelLargeIsCustom,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                ],
                                              ),
                                          () => InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  if (animationsMap[
                                                          'drinkOnActionTriggerAnimation2'] !=
                                                      null) {
                                                    animationsMap[
                                                            'drinkOnActionTriggerAnimation2']!
                                                        .controller
                                                        .forward(from: 0.0);
                                                  }
                                                  await Future.delayed(
                                                    Duration(
                                                      milliseconds: 100,
                                                    ),
                                                  );
                                                  FFAppState().alcohol = '2';
                                                  FFAppState().Alcohalhide =
                                                      false;
                                                  safeSetState(() {});
                                                },
                                                child: wrapWithModel(
                                                  model: _model.drinkModel2,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: DrinkWidget(
                                                    text: 'ไม่ดื่ม',
                                                    alcohol: '2',
                                                  ),
                                                ),
                                              ).animateOnActionTrigger(
                                                animationsMap[
                                                    'drinkOnActionTriggerAnimation2']!,
                                              ),
                                          () => InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  if (animationsMap[
                                                          'drinkOnActionTriggerAnimation3'] !=
                                                      null) {
                                                    animationsMap[
                                                            'drinkOnActionTriggerAnimation3']!
                                                        .controller
                                                        .forward(from: 0.0);
                                                  }
                                                  await Future.delayed(
                                                    Duration(
                                                      milliseconds: 100,
                                                    ),
                                                  );
                                                  FFAppState().alcohol = '3';
                                                  FFAppState().Alcohalhide =
                                                      false;
                                                  safeSetState(() {});
                                                },
                                                child: wrapWithModel(
                                                  model: _model.drinkModel3,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: DrinkWidget(
                                                    text: 'เคยดื่มแค่เลิกแล้ว',
                                                    alcohol: '3',
                                                  ),
                                                ),
                                              ).animateOnActionTrigger(
                                                animationsMap[
                                                    'drinkOnActionTriggerAnimation3']!,
                                              ),
                                        ][index]();
                                      },
                                    ),
                                  ].divide(SizedBox(height: 24.0)),
                                ),
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
                              _model.pagefamily = 5;
                              safeSetState(() {});
                            },
                            child: wrapWithModel(
                              model: _model.startAsBottomModel3,
                              updateCallback: () => safeSetState(() {}),
                              child: StartAsBottomWidget(
                                text: 'ถัดไป',
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  } else if (_model.pagefamily == 5) {
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
                                      color: Color(0x1AFFFFFF),
                                      borderRadius:
                                          BorderRadius.circular(100.0),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 8.0, 16.0, 0.0),
                                child: ListView(
                                  padding: EdgeInsets.fromLTRB(
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, -1.0),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            child: Image.network(
                                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/healflow-1ya11l/assets/237bpinsjmnd/exercise.png',
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
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    RichText(
                                      textScaler:
                                          MediaQuery.of(context).textScaler,
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text:
                                                'พฤติกรรมการออกกำลังกายของคุณ เป็นอย่างไร',
                                            style: FlutterFlowTheme.of(context)
                                                .titleLarge
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleLargeFamily,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .titleLargeIsCustom,
                                                ),
                                          )
                                        ],
                                        style: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
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
                                                          'bloodpageOnActionTriggerAnimation1'] !=
                                                      null) {
                                                    animationsMap[
                                                            'bloodpageOnActionTriggerAnimation1']!
                                                        .controller
                                                        .forward(from: 0.0);
                                                  }
                                                  await Future.delayed(
                                                    Duration(
                                                      milliseconds: 100,
                                                    ),
                                                  );
                                                  FFAppState().exer = '1';
                                                  safeSetState(() {});
                                                },
                                                child: wrapWithModel(
                                                  model: _model.bloodpageModel1,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: BloodpageWidget(
                                                    text:
                                                        'ออกกำลังกายทุกวัน ครั้งละ 30  นาที',
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
                                                highlightColor:
                                                    Colors.transparent,
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
                                                    Duration(
                                                      milliseconds: 100,
                                                    ),
                                                  );
                                                  FFAppState().exer = '2';
                                                  safeSetState(() {});
                                                },
                                                child: wrapWithModel(
                                                  model: _model.bloodpageModel2,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: BloodpageWidget(
                                                    text:
                                                        'ออกกำลังกาย 1 สัปดาห์มากกว่า 3 ครั้ง ครั้งละ 30  นาที สม่ำเสมอ',
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
                                                highlightColor:
                                                    Colors.transparent,
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
                                                    Duration(
                                                      milliseconds: 100,
                                                    ),
                                                  );
                                                  FFAppState().exer = '3';
                                                  safeSetState(() {});
                                                },
                                                child: wrapWithModel(
                                                  model: _model.bloodpageModel3,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: BloodpageWidget(
                                                    text:
                                                        'ออกกำลังกายสัปดาห์ละ 3 ครั้ง ครั้งละ 30  นาที',
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
                                                highlightColor:
                                                    Colors.transparent,
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
                                                    Duration(
                                                      milliseconds: 100,
                                                    ),
                                                  );
                                                  FFAppState().exer = '4';
                                                  safeSetState(() {});
                                                },
                                                child: wrapWithModel(
                                                  model: _model.bloodpageModel4,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: BloodpageWidget(
                                                    text:
                                                        'ออกกำลังกายน้อยกว่าสัปดาห์ละ 3 ครั้ง',
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
                                                highlightColor:
                                                    Colors.transparent,
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
                                                    Duration(
                                                      milliseconds: 100,
                                                    ),
                                                  );
                                                  FFAppState().exer = '5';
                                                  safeSetState(() {});
                                                },
                                                child: wrapWithModel(
                                                  model: _model.bloodpageModel5,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: BloodpageWidget(
                                                    text: 'ไม่ออกกำลังกายเลย',
                                                    exer: '5',
                                                  ),
                                                ),
                                              ).animateOnActionTrigger(
                                                animationsMap[
                                                    'bloodpageOnActionTriggerAnimation5']!,
                                              ),
                                        ][index]();
                                      },
                                    ),
                                  ].divide(SizedBox(height: 24.0)),
                                ),
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
                              _model.pagefamily = 6;
                              safeSetState(() {});
                            },
                            child: wrapWithModel(
                              model: _model.startAsBottomModel4,
                              updateCallback: () => safeSetState(() {}),
                              child: StartAsBottomWidget(
                                text: 'ถัดไป',
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  } else if (_model.pagefamily == 6) {
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
                              ],
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 8.0, 16.0, 0.0),
                                child: ListView(
                                  padding: EdgeInsets.fromLTRB(
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, -1.0),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            child: Image.network(
                                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/healflow-1ya11l/assets/4k6z91hv584r/all_food.png',
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
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    RichText(
                                      textScaler:
                                          MediaQuery.of(context).textScaler,
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'คุณชอบอาหารรสใด ',
                                            style: FlutterFlowTheme.of(context)
                                                .titleLarge
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleLargeFamily,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .titleLargeIsCustom,
                                                ),
                                          ),
                                          TextSpan(
                                            text: '\n(เลือกได้มากกว่า 1 คำตอบ)',
                                            style: FlutterFlowTheme.of(context)
                                                .titleMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMediumFamily,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.normal,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .titleMediumIsCustom,
                                                ),
                                          )
                                        ],
                                        style: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
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
                                          () => wrapWithModel(
                                                model: _model.cbClickModel17,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: CbClickWidget(
                                                  text: 'หวาน',
                                                ),
                                              ),
                                          () => wrapWithModel(
                                                model: _model.cbClickModel18,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: CbClickWidget(
                                                  text: 'เค็ม',
                                                ),
                                              ),
                                          () => wrapWithModel(
                                                model: _model.cbClickModel19,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: CbClickWidget(
                                                  text: 'มัน',
                                                ),
                                              ),
                                          () => wrapWithModel(
                                                model: _model.cbClickModel20,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: CbClickWidget(
                                                  text: 'ไม่ชอบทุกข้อ',
                                                ),
                                              ),
                                        ][index]();
                                      },
                                    ),
                                  ].divide(SizedBox(height: 24.0)),
                                ),
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
                              _model.pagefamily = 7;
                              safeSetState(() {});
                            },
                            child: wrapWithModel(
                              model: _model.startAsBottomModel5,
                              updateCallback: () => safeSetState(() {}),
                              child: StartAsBottomWidget(
                                text: 'บันทึก',
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  } else if (_model.pagefamily == 7) {
                    return Stack(
                      children: [
                        ListView(
                          padding: EdgeInsets.fromLTRB(
                            0,
                            8.0,
                            0,
                            0,
                          ),
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0.0, -1.0),
                              child: Container(
                                decoration: BoxDecoration(),
                                child: Align(
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
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              child: wrapWithModel(
                                model: _model.sumModel,
                                updateCallback: () => safeSetState(() {}),
                                child: SumWidget(),
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
                              context.pushNamed(BloodSummaryWidget.routeName);
                            },
                            child: wrapWithModel(
                              model: _model.startAsBottomModel6,
                              updateCallback: () => safeSetState(() {}),
                              child: StartAsBottomWidget(
                                text: 'กลับสู่หน้าหลัก',
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  } else {
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100.0),
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
