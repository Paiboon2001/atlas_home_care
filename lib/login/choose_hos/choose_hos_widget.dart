import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/login/widget/hospital_cs/hospital_cs_widget.dart';
import 'dart:math';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'choose_hos_model.dart';
export 'choose_hos_model.dart';

class ChooseHosWidget extends StatefulWidget {
  const ChooseHosWidget({
    super.key,
    required this.photo,
    required this.text,
    required this.chand,
  });

  final String? photo;
  final String? text;
  final String? chand;

  static String routeName = 'Choose_hos';
  static String routePath = '/chooseHos';

  @override
  State<ChooseHosWidget> createState() => _ChooseHosWidgetState();
}

class _ChooseHosWidgetState extends State<ChooseHosWidget>
    with TickerProviderStateMixin {
  late ChooseHosModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChooseHosModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    animationsMap.addAll({
      'hospitalCsOnActionTriggerAnimation1': AnimationInfo(
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
      'hospitalCsOnActionTriggerAnimation2': AnimationInfo(
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
      'hospitalCsOnActionTriggerAnimation3': AnimationInfo(
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
      'hospitalCsOnActionTriggerAnimation4': AnimationInfo(
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
      'hospitalCsOnActionTriggerAnimation5': AnimationInfo(
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
      'hospitalCsOnActionTriggerAnimation6': AnimationInfo(
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
      'hospitalCsOnActionTriggerAnimation7': AnimationInfo(
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
      'hospitalCsOnActionTriggerAnimation8': AnimationInfo(
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
      'hospitalCsOnActionTriggerAnimation9': AnimationInfo(
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
      'hospitalCsOnActionTriggerAnimation10': AnimationInfo(
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
      'hospitalCsOnActionTriggerAnimation11': AnimationInfo(
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
      'hospitalCsOnActionTriggerAnimation12': AnimationInfo(
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
      'hospitalCsOnActionTriggerAnimation13': AnimationInfo(
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
      'hospitalCsOnActionTriggerAnimation14': AnimationInfo(
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
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primary,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 54.0,
            icon: Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Colors.white,
              size: 18.0,
            ),
            onPressed: () async {
              context.safePop();
            },
          ),
          title: Text(
            'กรุณาเลือกสถานพยาบาล',
            style: FlutterFlowTheme.of(context).titleMedium.override(
                  fontFamily: FlutterFlowTheme.of(context).titleMediumFamily,
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  letterSpacing: 0.0,
                  useGoogleFonts:
                      !FlutterFlowTheme.of(context).titleMediumIsCustom,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).primaryBackground,
            boxShadow: [
              BoxShadow(
                blurRadius: 4.0,
                color: Color(0x33000000),
                offset: Offset(
                  0.0,
                  0.0,
                ),
              )
            ],
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24.0),
              topRight: Radius.circular(24.0),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Container(
                  width: double.infinity,
                  child: TextFormField(
                    controller: _model.textController,
                    focusNode: _model.textFieldFocusNode,
                    autofocus: true,
                    obscureText: false,
                    decoration: InputDecoration(
                      isDense: true,
                      hintText: 'ค้นหา...',
                      hintStyle: FlutterFlowTheme.of(context)
                          .bodyMedium
                          .override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyMediumFamily,
                            letterSpacing: 0.0,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .bodyMediumIsCustom,
                          ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(100.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).customColor5,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(100.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).error,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(100.0),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).error,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(100.0),
                      ),
                      filled: true,
                      fillColor: FlutterFlowTheme.of(context).alternate,
                      prefixIcon: Icon(
                        Icons.search_rounded,
                        size: 20.0,
                      ),
                    ),
                    style: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).titleSmallFamily,
                          letterSpacing: 0.0,
                          useGoogleFonts:
                              !FlutterFlowTheme.of(context).titleSmallIsCustom,
                        ),
                    cursorColor: FlutterFlowTheme.of(context).primary,
                    validator:
                        _model.textControllerValidator.asValidator(context),
                  ),
                ),
              ),
              Divider(
                height: 1.0,
                thickness: 1.0,
                color: Color(0xFFD7D8D9),
              ),
              Expanded(
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
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        FFAppState().cshospi = '1';
                        safeSetState(() {});

                        context.pushNamed(PINCodeWidget.routeName);

                        if (animationsMap[
                                'hospitalCsOnActionTriggerAnimation1'] !=
                            null) {
                          animationsMap['hospitalCsOnActionTriggerAnimation1']!
                              .controller
                              .forward(from: 0.0);
                        }
                        await Future.delayed(
                          Duration(
                            milliseconds: 300,
                          ),
                        );
                      },
                      child: wrapWithModel(
                        model: _model.hospitalCsModel1,
                        updateCallback: () => safeSetState(() {}),
                        child: HospitalCsWidget(
                          photo:
                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/healflow-1ya11l/assets/ddtbleiyx0pd/ChatGPT_Image_18_เม.ย._2568_13_15_45.png',
                          text: 'โรงพยาบาลโพธิ์ทองราช',
                          chand: '1',
                        ),
                      ),
                    ).animateOnActionTrigger(
                      animationsMap['hospitalCsOnActionTriggerAnimation1']!,
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        FFAppState().cshospi = '2';
                        safeSetState(() {});

                        context.pushNamed(PINCodeWidget.routeName);

                        if (animationsMap[
                                'hospitalCsOnActionTriggerAnimation2'] !=
                            null) {
                          animationsMap['hospitalCsOnActionTriggerAnimation2']!
                              .controller
                              .forward(from: 0.0);
                        }
                        await Future.delayed(
                          Duration(
                            milliseconds: 300,
                          ),
                        );
                      },
                      child: wrapWithModel(
                        model: _model.hospitalCsModel2,
                        updateCallback: () => safeSetState(() {}),
                        child: HospitalCsWidget(
                          photo:
                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/healflow-1ya11l/assets/ddtbleiyx0pd/ChatGPT_Image_18_เม.ย._2568_13_15_45.png',
                          text: 'โรงพยาบาล',
                          chand: '2',
                        ),
                      ),
                    ).animateOnActionTrigger(
                      animationsMap['hospitalCsOnActionTriggerAnimation2']!,
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        FFAppState().cshospi = '3';
                        safeSetState(() {});

                        context.pushNamed(PINCodeWidget.routeName);

                        if (animationsMap[
                                'hospitalCsOnActionTriggerAnimation3'] !=
                            null) {
                          animationsMap['hospitalCsOnActionTriggerAnimation3']!
                              .controller
                              .forward(from: 0.0);
                        }
                        await Future.delayed(
                          Duration(
                            milliseconds: 300,
                          ),
                        );
                      },
                      child: wrapWithModel(
                        model: _model.hospitalCsModel3,
                        updateCallback: () => safeSetState(() {}),
                        child: HospitalCsWidget(
                          photo:
                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/healflow-1ya11l/assets/ddtbleiyx0pd/ChatGPT_Image_18_เม.ย._2568_13_15_45.png',
                          text: 'โรงพยาบาลสุพรรณ',
                          chand: '3',
                        ),
                      ),
                    ).animateOnActionTrigger(
                      animationsMap['hospitalCsOnActionTriggerAnimation3']!,
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        FFAppState().cshospi = '4';
                        safeSetState(() {});

                        context.pushNamed(PINCodeWidget.routeName);

                        if (animationsMap[
                                'hospitalCsOnActionTriggerAnimation4'] !=
                            null) {
                          animationsMap['hospitalCsOnActionTriggerAnimation4']!
                              .controller
                              .forward(from: 0.0);
                        }
                        await Future.delayed(
                          Duration(
                            milliseconds: 300,
                          ),
                        );
                      },
                      child: wrapWithModel(
                        model: _model.hospitalCsModel4,
                        updateCallback: () => safeSetState(() {}),
                        child: HospitalCsWidget(
                          photo:
                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/healflow-1ya11l/assets/zuy7us6nbzoi/ChatGPT_Image_9_เม.ย._2568_09_49_19.png',
                          text: 'รพ.สต.โพธิ์ทองราช',
                          chand: '4',
                        ),
                      ),
                    ).animateOnActionTrigger(
                      animationsMap['hospitalCsOnActionTriggerAnimation4']!,
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        FFAppState().cshospi = '4';
                        safeSetState(() {});

                        context.pushNamed(PINCodeWidget.routeName);

                        if (animationsMap[
                                'hospitalCsOnActionTriggerAnimation5'] !=
                            null) {
                          animationsMap['hospitalCsOnActionTriggerAnimation5']!
                              .controller
                              .forward(from: 0.0);
                        }
                        await Future.delayed(
                          Duration(
                            milliseconds: 300,
                          ),
                        );
                      },
                      child: wrapWithModel(
                        model: _model.hospitalCsModel5,
                        updateCallback: () => safeSetState(() {}),
                        child: HospitalCsWidget(
                          photo:
                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/healflow-1ya11l/assets/zuy7us6nbzoi/ChatGPT_Image_9_เม.ย._2568_09_49_19.png',
                          text: 'รพ.สต.โพธิ์ทองราช',
                          chand: '4',
                        ),
                      ),
                    ).animateOnActionTrigger(
                      animationsMap['hospitalCsOnActionTriggerAnimation5']!,
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        FFAppState().cshospi = '4';
                        safeSetState(() {});

                        context.pushNamed(PINCodeWidget.routeName);

                        if (animationsMap[
                                'hospitalCsOnActionTriggerAnimation6'] !=
                            null) {
                          animationsMap['hospitalCsOnActionTriggerAnimation6']!
                              .controller
                              .forward(from: 0.0);
                        }
                        await Future.delayed(
                          Duration(
                            milliseconds: 300,
                          ),
                        );
                      },
                      child: wrapWithModel(
                        model: _model.hospitalCsModel6,
                        updateCallback: () => safeSetState(() {}),
                        child: HospitalCsWidget(
                          photo:
                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/healflow-1ya11l/assets/zuy7us6nbzoi/ChatGPT_Image_9_เม.ย._2568_09_49_19.png',
                          text: 'รพ.สต.โพธิ์ทองราช',
                          chand: '4',
                        ),
                      ),
                    ).animateOnActionTrigger(
                      animationsMap['hospitalCsOnActionTriggerAnimation6']!,
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        FFAppState().cshospi = '4';
                        safeSetState(() {});

                        context.pushNamed(PINCodeWidget.routeName);

                        if (animationsMap[
                                'hospitalCsOnActionTriggerAnimation7'] !=
                            null) {
                          animationsMap['hospitalCsOnActionTriggerAnimation7']!
                              .controller
                              .forward(from: 0.0);
                        }
                        await Future.delayed(
                          Duration(
                            milliseconds: 300,
                          ),
                        );
                      },
                      child: wrapWithModel(
                        model: _model.hospitalCsModel7,
                        updateCallback: () => safeSetState(() {}),
                        child: HospitalCsWidget(
                          photo:
                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/healflow-1ya11l/assets/zuy7us6nbzoi/ChatGPT_Image_9_เม.ย._2568_09_49_19.png',
                          text: 'รพ.สต.โพธิ์ทองราช',
                          chand: '4',
                        ),
                      ),
                    ).animateOnActionTrigger(
                      animationsMap['hospitalCsOnActionTriggerAnimation7']!,
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        FFAppState().cshospi = '4';
                        safeSetState(() {});

                        context.pushNamed(PINCodeWidget.routeName);

                        if (animationsMap[
                                'hospitalCsOnActionTriggerAnimation8'] !=
                            null) {
                          animationsMap['hospitalCsOnActionTriggerAnimation8']!
                              .controller
                              .forward(from: 0.0);
                        }
                        await Future.delayed(
                          Duration(
                            milliseconds: 300,
                          ),
                        );
                      },
                      child: wrapWithModel(
                        model: _model.hospitalCsModel8,
                        updateCallback: () => safeSetState(() {}),
                        child: HospitalCsWidget(
                          photo:
                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/healflow-1ya11l/assets/zuy7us6nbzoi/ChatGPT_Image_9_เม.ย._2568_09_49_19.png',
                          text: 'รพ.สต.โพธิ์ทองราช',
                          chand: '4',
                        ),
                      ),
                    ).animateOnActionTrigger(
                      animationsMap['hospitalCsOnActionTriggerAnimation8']!,
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        FFAppState().cshospi = '4';
                        safeSetState(() {});

                        context.pushNamed(PINCodeWidget.routeName);

                        if (animationsMap[
                                'hospitalCsOnActionTriggerAnimation9'] !=
                            null) {
                          animationsMap['hospitalCsOnActionTriggerAnimation9']!
                              .controller
                              .forward(from: 0.0);
                        }
                        await Future.delayed(
                          Duration(
                            milliseconds: 300,
                          ),
                        );
                      },
                      child: wrapWithModel(
                        model: _model.hospitalCsModel9,
                        updateCallback: () => safeSetState(() {}),
                        child: HospitalCsWidget(
                          photo:
                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/healflow-1ya11l/assets/zuy7us6nbzoi/ChatGPT_Image_9_เม.ย._2568_09_49_19.png',
                          text: 'รพ.สต.โพธิ์ทองราช',
                          chand: '4',
                        ),
                      ),
                    ).animateOnActionTrigger(
                      animationsMap['hospitalCsOnActionTriggerAnimation9']!,
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        FFAppState().cshospi = '4';
                        safeSetState(() {});

                        context.pushNamed(PINCodeWidget.routeName);

                        if (animationsMap[
                                'hospitalCsOnActionTriggerAnimation10'] !=
                            null) {
                          animationsMap['hospitalCsOnActionTriggerAnimation10']!
                              .controller
                              .forward(from: 0.0);
                        }
                        await Future.delayed(
                          Duration(
                            milliseconds: 300,
                          ),
                        );
                      },
                      child: wrapWithModel(
                        model: _model.hospitalCsModel10,
                        updateCallback: () => safeSetState(() {}),
                        child: HospitalCsWidget(
                          photo:
                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/healflow-1ya11l/assets/zuy7us6nbzoi/ChatGPT_Image_9_เม.ย._2568_09_49_19.png',
                          text: 'รพ.สต.โพธิ์ทองราช',
                          chand: '4',
                        ),
                      ),
                    ).animateOnActionTrigger(
                      animationsMap['hospitalCsOnActionTriggerAnimation10']!,
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        FFAppState().cshospi = '4';
                        safeSetState(() {});

                        context.pushNamed(PINCodeWidget.routeName);

                        if (animationsMap[
                                'hospitalCsOnActionTriggerAnimation11'] !=
                            null) {
                          animationsMap['hospitalCsOnActionTriggerAnimation11']!
                              .controller
                              .forward(from: 0.0);
                        }
                        await Future.delayed(
                          Duration(
                            milliseconds: 300,
                          ),
                        );
                      },
                      child: wrapWithModel(
                        model: _model.hospitalCsModel11,
                        updateCallback: () => safeSetState(() {}),
                        child: HospitalCsWidget(
                          photo:
                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/healflow-1ya11l/assets/zuy7us6nbzoi/ChatGPT_Image_9_เม.ย._2568_09_49_19.png',
                          text: 'รพ.สต.โพธิ์ทองราช',
                          chand: '4',
                        ),
                      ),
                    ).animateOnActionTrigger(
                      animationsMap['hospitalCsOnActionTriggerAnimation11']!,
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        FFAppState().cshospi = '4';
                        safeSetState(() {});

                        context.pushNamed(PINCodeWidget.routeName);

                        if (animationsMap[
                                'hospitalCsOnActionTriggerAnimation12'] !=
                            null) {
                          animationsMap['hospitalCsOnActionTriggerAnimation12']!
                              .controller
                              .forward(from: 0.0);
                        }
                        await Future.delayed(
                          Duration(
                            milliseconds: 300,
                          ),
                        );
                      },
                      child: wrapWithModel(
                        model: _model.hospitalCsModel12,
                        updateCallback: () => safeSetState(() {}),
                        child: HospitalCsWidget(
                          photo:
                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/healflow-1ya11l/assets/zuy7us6nbzoi/ChatGPT_Image_9_เม.ย._2568_09_49_19.png',
                          text: 'รพ.สต.โพธิ์ทองราช',
                          chand: '4',
                        ),
                      ),
                    ).animateOnActionTrigger(
                      animationsMap['hospitalCsOnActionTriggerAnimation12']!,
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        FFAppState().cshospi = '4';
                        safeSetState(() {});

                        context.pushNamed(PINCodeWidget.routeName);

                        if (animationsMap[
                                'hospitalCsOnActionTriggerAnimation13'] !=
                            null) {
                          animationsMap['hospitalCsOnActionTriggerAnimation13']!
                              .controller
                              .forward(from: 0.0);
                        }
                        await Future.delayed(
                          Duration(
                            milliseconds: 300,
                          ),
                        );
                      },
                      child: wrapWithModel(
                        model: _model.hospitalCsModel13,
                        updateCallback: () => safeSetState(() {}),
                        child: HospitalCsWidget(
                          photo:
                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/healflow-1ya11l/assets/zuy7us6nbzoi/ChatGPT_Image_9_เม.ย._2568_09_49_19.png',
                          text: 'รพ.สต.โพธิ์ทองราช',
                          chand: '4',
                        ),
                      ),
                    ).animateOnActionTrigger(
                      animationsMap['hospitalCsOnActionTriggerAnimation13']!,
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        FFAppState().cshospi = '4';
                        safeSetState(() {});

                        context.pushNamed(PINCodeWidget.routeName);

                        if (animationsMap[
                                'hospitalCsOnActionTriggerAnimation14'] !=
                            null) {
                          animationsMap['hospitalCsOnActionTriggerAnimation14']!
                              .controller
                              .forward(from: 0.0);
                        }
                        await Future.delayed(
                          Duration(
                            milliseconds: 300,
                          ),
                        );
                      },
                      child: wrapWithModel(
                        model: _model.hospitalCsModel14,
                        updateCallback: () => safeSetState(() {}),
                        child: HospitalCsWidget(
                          photo:
                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/healflow-1ya11l/assets/zuy7us6nbzoi/ChatGPT_Image_9_เม.ย._2568_09_49_19.png',
                          text: 'รพ.สต.โพธิ์ทองราช',
                          chand: '4',
                        ),
                      ),
                    ).animateOnActionTrigger(
                      animationsMap['hospitalCsOnActionTriggerAnimation14']!,
                    ),
                  ].divide(SizedBox(height: 8.0)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
