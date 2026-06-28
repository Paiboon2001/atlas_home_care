import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'checkbox_form_model.dart';
export 'checkbox_form_model.dart';

class CheckboxFormWidget extends StatefulWidget {
  const CheckboxFormWidget({
    super.key,
    required this.text,
  });

  final String? text;

  @override
  State<CheckboxFormWidget> createState() => _CheckboxFormWidgetState();
}

class _CheckboxFormWidgetState extends State<CheckboxFormWidget>
    with TickerProviderStateMixin {
  late CheckboxFormModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CheckboxFormModel());

    animationsMap.addAll({
      'containerOnActionTriggerAnimation': AnimationInfo(
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
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () async {
        if (_model.checkbox01Value!) {
          safeSetState(() {
            _model.checkbox01Value = false;
          });
        } else {
          safeSetState(() {
            _model.checkbox01Value = true;
          });
        }

        if (animationsMap['containerOnActionTriggerAnimation'] != null) {
          animationsMap['containerOnActionTriggerAnimation']!
              .controller
              .forward(from: 0.0);
        }
        await Future.delayed(
          const Duration(
            milliseconds: 100,
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              _model.checkbox01Value == true
                  ? FlutterFlowTheme.of(context).secondary
                  : FlutterFlowTheme.of(context).secondaryBackground,
              _model.checkbox01Value == true
                  ? FlutterFlowTheme.of(context).primary
                  : FlutterFlowTheme.of(context).secondaryBackground
            ],
            stops: const [0.0, 1.0],
            begin: const AlignmentDirectional(1.0, 0.34),
            end: const AlignmentDirectional(-1.0, -0.34),
          ),
          borderRadius: BorderRadius.circular(24.0),
          border: Border.all(
            color: _model.checkbox01Value == true
                ? const Color(0x00FFFFFF)
                : const Color(0xFFCED4E6),
            width: 1.0,
          ),
        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(12.0, 20.0, 12.0, 20.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    valueOrDefault<String>(
                      widget.text,
                      'na',
                    ),
                    style: FlutterFlowTheme.of(context).labelLarge.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).labelLargeFamily,
                          color: _model.checkbox01Value == true
                              ? FlutterFlowTheme.of(context).secondaryBackground
                              : FlutterFlowTheme.of(context).secondaryText,
                          letterSpacing: 0.0,
                          useGoogleFonts:
                              !FlutterFlowTheme.of(context).labelLargeIsCustom,
                        ),
                  ),
                ].divide(const SizedBox(width: 4.0)),
              ),
            ),
            Theme(
              data: ThemeData(
                checkboxTheme: CheckboxThemeData(
                  visualDensity: VisualDensity.compact,
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                ),
                unselectedWidgetColor: const Color(0x00FFFFFF),
              ),
              child: Checkbox(
                value: _model.checkbox01Value ??= false,
                onChanged: (newValue) async {
                  safeSetState(() => _model.checkbox01Value = newValue!);
                },
                side: (const Color(0x00FFFFFF) != null)
                    ? BorderSide(
                        width: 2,
                        color: const Color(0x00FFFFFF),
                      )
                    : null,
                activeColor: const Color(0x00FFFFFF),
                checkColor: const Color(0x00FFFFFF),
              ),
            ),
          ],
        ),
      ),
    ).animateOnActionTrigger(
      animationsMap['containerOnActionTriggerAnimation']!,
    );
  }
}
