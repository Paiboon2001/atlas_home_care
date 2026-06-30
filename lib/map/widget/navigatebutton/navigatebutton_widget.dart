import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'navigatebutton_model.dart';
export 'navigatebutton_model.dart';

class NavigatebuttonWidget extends StatefulWidget {
  const NavigatebuttonWidget({super.key});

  @override
  State<NavigatebuttonWidget> createState() => _NavigatebuttonWidgetState();
}

class _NavigatebuttonWidgetState extends State<NavigatebuttonWidget>
    with TickerProviderStateMixin {
  late NavigatebuttonModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavigatebuttonModel());

    animationsMap.addAll({
      'iconOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          RotateEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: -0.1,
            end: 0.0,
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
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        if (_model.navigate == true)
          InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              _model.navigate = false;
              _model.updatePage(() {});
            },
            child: Container(
              width: () {
                if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                  return 48.0;
                } else if (MediaQuery.sizeOf(context).width <
                    kBreakpointMedium) {
                  return 48.0;
                } else if (MediaQuery.sizeOf(context).width <
                    kBreakpointLarge) {
                  return 56.0;
                } else {
                  return 56.0;
                }
              }(),
              height: () {
                if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                  return 48.0;
                } else if (MediaQuery.sizeOf(context).width <
                    kBreakpointMedium) {
                  return 48.0;
                } else if (MediaQuery.sizeOf(context).width <
                    kBreakpointLarge) {
                  return 56.0;
                } else {
                  return 56.0;
                }
              }(),
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurRadius: 4.0,
                    color: Color(0x46000000),
                    offset: Offset(
                      0.0,
                      3.0,
                    ),
                  )
                ],
                gradient: LinearGradient(
                  colors: [Color(0xFF8ABFFF), Color(0xFF1E78E0)],
                  stops: [0.0, 1.0],
                  begin: AlignmentDirectional(1.0, -1.0),
                  end: AlignmentDirectional(-1.0, 1.0),
                ),
                shape: BoxShape.circle,
              ),
              child: Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Icon(
                  Icons.navigation_rounded,
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  size: 24.0,
                ).animateOnActionTrigger(
                  animationsMap['iconOnActionTriggerAnimation']!,
                ),
              ),
            ),
          ),
        if (_model.navigate == false)
          InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              _model.navigate = true;
              _model.updatePage(() {});
              if (animationsMap['iconOnActionTriggerAnimation'] != null) {
                await animationsMap['iconOnActionTriggerAnimation']!
                    .controller
                    .forward(from: 0.0);
              }
            },
            child: Container(
              width: () {
                if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                  return 48.0;
                } else if (MediaQuery.sizeOf(context).width <
                    kBreakpointMedium) {
                  return 48.0;
                } else if (MediaQuery.sizeOf(context).width <
                    kBreakpointLarge) {
                  return 56.0;
                } else {
                  return 56.0;
                }
              }(),
              height: () {
                if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                  return 48.0;
                } else if (MediaQuery.sizeOf(context).width <
                    kBreakpointMedium) {
                  return 48.0;
                } else if (MediaQuery.sizeOf(context).width <
                    kBreakpointLarge) {
                  return 56.0;
                } else {
                  return 56.0;
                }
              }(),
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 4.0,
                    color: Color(0x46000000),
                    offset: Offset(
                      0.0,
                      3.0,
                    ),
                  )
                ],
                shape: BoxShape.circle,
              ),
              child: Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Icon(
                  Icons.navigation_outlined,
                  color: FlutterFlowTheme.of(context).primary,
                  size: 24.0,
                ),
              ),
            ),
          ),
      ],
    );
  }
}
