import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/utils/close/close_widget.dart';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'add_l_a_b_model.dart';
export 'add_l_a_b_model.dart';

class AddLABWidget extends StatefulWidget {
  const AddLABWidget({super.key});

  @override
  State<AddLABWidget> createState() => _AddLABWidgetState();
}

class _AddLABWidgetState extends State<AddLABWidget> {
  late AddLABModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddLABModel());

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
      alignment: AlignmentDirectional(0.0, 1.0),
      child: Container(
        width: double.infinity,
        height: MediaQuery.sizeOf(context).height * 0.5,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
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
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: () {
                      if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                        return 32.0;
                      } else if (MediaQuery.sizeOf(context).width <
                          kBreakpointMedium) {
                        return 32.0;
                      } else if (MediaQuery.sizeOf(context).width <
                          kBreakpointLarge) {
                        return 40.0;
                      } else {
                        return 40.0;
                      }
                    }(),
                    height: () {
                      if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                        return 32.0;
                      } else if (MediaQuery.sizeOf(context).width <
                          kBreakpointMedium) {
                        return 32.0;
                      } else if (MediaQuery.sizeOf(context).width <
                          kBreakpointLarge) {
                        return 40.0;
                      } else {
                        return 40.0;
                      }
                    }(),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'เลือก LAB ที่ต้องการสั่ง',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).titleSmall.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).titleSmallFamily,
                            letterSpacing: 0.0,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .titleSmallIsCustom,
                          ),
                    ),
                  ),
                  wrapWithModel(
                    model: _model.closeModel,
                    updateCallback: () => safeSetState(() {}),
                    child: CloseWidget(),
                  ),
                ].divide(SizedBox(width: 8.0)),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 0.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          safeSetState(() {
                            _model.checkboxValue1 = true;
                          });
                          safeSetState(() {
                            _model.checkboxValue2 = false;
                            _model.checkboxValue3 = false;
                            _model.checkboxValue4 = false;
                          });

                          context.pushNamed(SelectLabFormWidget.routeName);

                          await Future.delayed(
                            Duration(
                              milliseconds: 400,
                            ),
                          );
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 12.0, 0.0, 12.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 32.0,
                                    height: 32.0,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: Stack(
                                      children: [
                                        Theme(
                                          data: ThemeData(
                                            checkboxTheme: CheckboxThemeData(
                                              visualDensity:
                                                  VisualDensity.compact,
                                              materialTapTargetSize:
                                                  MaterialTapTargetSize
                                                      .shrinkWrap,
                                              shape: CircleBorder(),
                                            ),
                                            unselectedWidgetColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryText,
                                          ),
                                          child: Checkbox(
                                            value: _model.checkboxValue1 ??=
                                                false,
                                            onChanged: (newValue) async {
                                              safeSetState(() => _model
                                                  .checkboxValue1 = newValue!);
                                            },
                                            side: (FlutterFlowTheme.of(context)
                                                        .secondaryText !=
                                                    null)
                                                ? BorderSide(
                                                    width: 2,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText!,
                                                  )
                                                : null,
                                            activeColor:
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                            checkColor:
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: Container(
                                            width: 14.0,
                                            height: 14.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              shape: BoxShape.circle,
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: Container(
                                            width: 8.0,
                                            height: 8.0,
                                            decoration: BoxDecoration(
                                              color: _model.checkboxValue1 ==
                                                      true
                                                  ? FlutterFlowTheme.of(context)
                                                      .primary
                                                  : FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              shape: BoxShape.circle,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Text(
                                    'เลือกรายการ LAB',
                                    textAlign: TextAlign.start,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          color: _model.checkboxValue1 == true
                                              ? FlutterFlowTheme.of(context)
                                                  .primaryText
                                              : FlutterFlowTheme.of(context)
                                                  .secondaryText,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .bodyMediumIsCustom,
                                        ),
                                  ),
                                ].divide(SizedBox(width: 8.0)),
                              ),
                            ),
                            Divider(
                              height: 1.0,
                              thickness: 1.0,
                              indent: 40.0,
                              color: FlutterFlowTheme.of(context).alternate,
                            ),
                          ],
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          safeSetState(() {
                            _model.checkboxValue2 = true;
                          });
                          safeSetState(() {
                            _model.checkboxValue1 = false;
                            _model.checkboxValue3 = false;
                            _model.checkboxValue4 = false;
                          });

                          context.pushNamed(LABDiabetesWidget.routeName);

                          await Future.delayed(
                            Duration(
                              milliseconds: 400,
                            ),
                          );
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 12.0, 0.0, 12.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 32.0,
                                    height: 32.0,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: Stack(
                                      children: [
                                        Theme(
                                          data: ThemeData(
                                            checkboxTheme: CheckboxThemeData(
                                              visualDensity:
                                                  VisualDensity.compact,
                                              materialTapTargetSize:
                                                  MaterialTapTargetSize
                                                      .shrinkWrap,
                                              shape: CircleBorder(),
                                            ),
                                            unselectedWidgetColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryText,
                                          ),
                                          child: Checkbox(
                                            value: _model.checkboxValue2 ??=
                                                false,
                                            onChanged: (newValue) async {
                                              safeSetState(() => _model
                                                  .checkboxValue2 = newValue!);
                                            },
                                            side: (FlutterFlowTheme.of(context)
                                                        .secondaryText !=
                                                    null)
                                                ? BorderSide(
                                                    width: 2,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText!,
                                                  )
                                                : null,
                                            activeColor:
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                            checkColor:
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: Container(
                                            width: 14.0,
                                            height: 14.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              shape: BoxShape.circle,
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: Container(
                                            width: 8.0,
                                            height: 8.0,
                                            decoration: BoxDecoration(
                                              color: _model.checkboxValue2 ==
                                                      true
                                                  ? FlutterFlowTheme.of(context)
                                                      .primary
                                                  : FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              shape: BoxShape.circle,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Text(
                                    'LAB เบาหวาน',
                                    textAlign: TextAlign.start,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          color: _model.checkboxValue2 == true
                                              ? FlutterFlowTheme.of(context)
                                                  .primaryText
                                              : FlutterFlowTheme.of(context)
                                                  .secondaryText,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .bodyMediumIsCustom,
                                        ),
                                  ),
                                ].divide(SizedBox(width: 8.0)),
                              ),
                            ),
                            Divider(
                              height: 1.0,
                              thickness: 1.0,
                              indent: 40.0,
                              color: FlutterFlowTheme.of(context).alternate,
                            ),
                          ],
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          safeSetState(() {
                            _model.checkboxValue3 = true;
                          });
                          safeSetState(() {
                            _model.checkboxValue2 = false;
                            _model.checkboxValue1 = false;
                            _model.checkboxValue4 = false;
                          });

                          context.pushNamed(LABBloodpressureWidget.routeName);

                          await Future.delayed(
                            Duration(
                              milliseconds: 400,
                            ),
                          );
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 12.0, 0.0, 12.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 32.0,
                                    height: 32.0,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: Stack(
                                      children: [
                                        Theme(
                                          data: ThemeData(
                                            checkboxTheme: CheckboxThemeData(
                                              visualDensity:
                                                  VisualDensity.compact,
                                              materialTapTargetSize:
                                                  MaterialTapTargetSize
                                                      .shrinkWrap,
                                              shape: CircleBorder(),
                                            ),
                                            unselectedWidgetColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryText,
                                          ),
                                          child: Checkbox(
                                            value: _model.checkboxValue3 ??=
                                                false,
                                            onChanged: (newValue) async {
                                              safeSetState(() => _model
                                                  .checkboxValue3 = newValue!);
                                            },
                                            side: (FlutterFlowTheme.of(context)
                                                        .secondaryText !=
                                                    null)
                                                ? BorderSide(
                                                    width: 2,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText!,
                                                  )
                                                : null,
                                            activeColor:
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                            checkColor:
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: Container(
                                            width: 14.0,
                                            height: 14.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              shape: BoxShape.circle,
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: Container(
                                            width: 8.0,
                                            height: 8.0,
                                            decoration: BoxDecoration(
                                              color: _model.checkboxValue3 ==
                                                      true
                                                  ? FlutterFlowTheme.of(context)
                                                      .primary
                                                  : FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              shape: BoxShape.circle,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Text(
                                    'LAB ความดันโลหิตสูง',
                                    textAlign: TextAlign.start,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          color: _model.checkboxValue3 == true
                                              ? FlutterFlowTheme.of(context)
                                                  .primaryText
                                              : FlutterFlowTheme.of(context)
                                                  .secondaryText,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .bodyMediumIsCustom,
                                        ),
                                  ),
                                ].divide(SizedBox(width: 8.0)),
                              ),
                            ),
                            Divider(
                              height: 1.0,
                              thickness: 1.0,
                              indent: 40.0,
                              color: FlutterFlowTheme.of(context).alternate,
                            ),
                          ],
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          safeSetState(() {
                            _model.checkboxValue4 = true;
                          });
                          safeSetState(() {
                            _model.checkboxValue2 = false;
                            _model.checkboxValue1 = false;
                            _model.checkboxValue3 = false;
                          });

                          context.pushNamed(LABBloodfatWidget.routeName);

                          await Future.delayed(
                            Duration(
                              milliseconds: 400,
                            ),
                          );
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 12.0, 0.0, 12.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 32.0,
                                    height: 32.0,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: Stack(
                                      children: [
                                        Theme(
                                          data: ThemeData(
                                            checkboxTheme: CheckboxThemeData(
                                              visualDensity:
                                                  VisualDensity.compact,
                                              materialTapTargetSize:
                                                  MaterialTapTargetSize
                                                      .shrinkWrap,
                                              shape: CircleBorder(),
                                            ),
                                            unselectedWidgetColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryText,
                                          ),
                                          child: Checkbox(
                                            value: _model.checkboxValue4 ??=
                                                false,
                                            onChanged: (newValue) async {
                                              safeSetState(() => _model
                                                  .checkboxValue4 = newValue!);
                                            },
                                            side: (FlutterFlowTheme.of(context)
                                                        .secondaryText !=
                                                    null)
                                                ? BorderSide(
                                                    width: 2,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText!,
                                                  )
                                                : null,
                                            activeColor:
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                            checkColor:
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: Container(
                                            width: 14.0,
                                            height: 14.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              shape: BoxShape.circle,
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: Container(
                                            width: 8.0,
                                            height: 8.0,
                                            decoration: BoxDecoration(
                                              color: _model.checkboxValue4 ==
                                                      true
                                                  ? FlutterFlowTheme.of(context)
                                                      .primary
                                                  : FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              shape: BoxShape.circle,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Text(
                                    'LAB ไขมันในเลือด',
                                    textAlign: TextAlign.start,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          color: _model.checkboxValue4 == true
                                              ? FlutterFlowTheme.of(context)
                                                  .primaryText
                                              : FlutterFlowTheme.of(context)
                                                  .secondaryText,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .bodyMediumIsCustom,
                                        ),
                                  ),
                                ].divide(SizedBox(width: 8.0)),
                              ),
                            ),
                            Divider(
                              height: 1.0,
                              thickness: 1.0,
                              indent: 40.0,
                              color: FlutterFlowTheme.of(context).alternate,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
