import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'sucess_model.dart';
export 'sucess_model.dart';

class SucessWidget extends StatefulWidget {
  const SucessWidget({super.key});

  @override
  State<SucessWidget> createState() => _SucessWidgetState();
}

class _SucessWidgetState extends State<SucessWidget>
    with TickerProviderStateMixin {
  late SucessModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SucessModel());

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 600.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeOut,
            delay: 600.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.0, 50.0),
            end: const Offset(0.0, 0.0),
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
    return Align(
      alignment: const AlignmentDirectional(0.0, 1.0),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 112.0),
        child: Container(
          // Sized by its content: a fixed 170×56 box overflowed once the label
          // grew (titleSmall is larger on tablets).
          constraints: const BoxConstraints(minHeight: 56.0),
          margin: const EdgeInsets.symmetric(horizontal: 24.0),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color(0xFF7BE6C6),
                FlutterFlowTheme.of(context).customColor1
              ],
              stops: const [0.0, 1.0],
              begin: const AlignmentDirectional(0.0, -1.0),
              end: const AlignmentDirectional(0, 1.0),
            ),
            borderRadius: BorderRadius.circular(16.0),
            border: Border.all(
              color: FlutterFlowTheme.of(context).customColor2,
              width: 2.0,
            ),
          ),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 8.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.check_circle_rounded,
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  size: 32.0,
                ),
                Flexible(
                  child: Text(
                    'บันทึกสำเร็จ',
                    textAlign: TextAlign.center,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).titleSmallFamily,
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          letterSpacing: 0.0,
                          lineHeight: 1.5,
                          useGoogleFonts:
                              !FlutterFlowTheme.of(context).titleSmallIsCustom,
                        ),
                  ),
                ),
              ].divide(const SizedBox(width: 8.0)),
            ),
          ),
        ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!),
      ),
    );
  }
}
