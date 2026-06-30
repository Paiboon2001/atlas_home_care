import '/components/main_button_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/utils/botton_cancel/botton_cancel_widget.dart';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'change_datetime_model.dart';
export 'change_datetime_model.dart';

class ChangeDatetimeWidget extends StatefulWidget {
  const ChangeDatetimeWidget({super.key});

  @override
  State<ChangeDatetimeWidget> createState() => _ChangeDatetimeWidgetState();
}

class _ChangeDatetimeWidgetState extends State<ChangeDatetimeWidget> {
  late ChangeDatetimeModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChangeDatetimeModel());

    _model.textController1 ??= TextEditingController(
        text: dateTimeFormat("d MMMM y", _model.datePicked1));
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??=
        TextEditingController(text: dateTimeFormat("Hm", _model.datePicked2));
    _model.textFieldFocusNode2 ??= FocusNode();

    _model.textController3 ??= TextEditingController();
    _model.textFieldFocusNode3 ??= FocusNode();

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
      alignment: const AlignmentDirectional(0.0, 0.0),
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Container(
          width: () {
            if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
              return 600.0;
            } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
              return 600.0;
            } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
              return 450.0;
            } else {
              return 450.0;
            }
          }(),
          height: () {
            if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
              return 350.0;
            } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
              return 350.0;
            } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
              return 380.0;
            } else {
              return 380.0;
            }
          }(),
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            borderRadius: BorderRadius.circular(32.0),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Text(
                        'เลื่อนการนัดหมาย',
                        style: FlutterFlowTheme.of(context).titleSmall.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).titleSmallFamily,
                              letterSpacing: 0.0,
                              shadows: [
                                const Shadow(
                                  color: Color(0x0F6C6C6C),
                                  offset: Offset(2.0, 2.0),
                                  blurRadius: 2.0,
                                )
                              ],
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .titleSmallIsCustom,
                            ),
                      ),
                    ),
                  ].divide(const SizedBox(width: 8.0)),
                ),
              ),
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(16.0, 24.0, 16.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      MasonryGridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate:
                            const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                        ),
                        crossAxisSpacing: 12.0,
                        mainAxisSpacing: 12.0,
                        itemCount: 2,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return [
                            () => Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                          width: () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                kBreakpointSmall) {
                                              return 24.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointMedium) {
                                              return 24.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointLarge) {
                                              return 32.0;
                                            } else {
                                              return 32.0;
                                            }
                                          }(),
                                          height: () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                kBreakpointSmall) {
                                              return 24.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointMedium) {
                                              return 24.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointLarge) {
                                              return 32.0;
                                            } else {
                                              return 32.0;
                                            }
                                          }(),
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                              colors: [
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                                const Color(0xFF216DAA)
                                              ],
                                              stops: const [0.0, 1.0],
                                              begin: const AlignmentDirectional(
                                                  0.0, -1.0),
                                              end: const AlignmentDirectional(0, 1.0),
                                            ),
                                            shape: BoxShape.circle,
                                          ),
                                          child: Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: Icon(
                                              Icons.calendar_month_rounded,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              size: 14.0,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          'วันที่',
                                          style: FlutterFlowTheme.of(context)
                                              .labelSmall
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .labelSmallFamily,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .labelSmallIsCustom,
                                              ),
                                        ),
                                      ].divide(const SizedBox(width: 8.0)),
                                    ),
                                    Container(
                                      width: double.infinity,
                                      height: 46.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      child: Stack(
                                        children: [
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(-1.0, 0.0),
                                            child: SizedBox(
                                              width: double.infinity,
                                              child: TextFormField(
                                                controller:
                                                    _model.textController1,
                                                focusNode:
                                                    _model.textFieldFocusNode1,
                                                autofocus: false,
                                                readOnly: true,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  isDense: true,
                                                  hintStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelLarge
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelLargeFamily,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelLargeIsCustom,
                                                          ),
                                                  enabledBorder:
                                                      InputBorder.none,
                                                  focusedBorder:
                                                      InputBorder.none,
                                                  errorBorder: InputBorder.none,
                                                  focusedErrorBorder:
                                                      InputBorder.none,
                                                  contentPadding:
                                                      const EdgeInsetsDirectional
                                                          .fromSTEB(16.0, 0.0,
                                                              16.0, 0.0),
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMediumIsCustom,
                                                        ),
                                                validator: _model
                                                    .textController1Validator
                                                    .asValidator(context),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(1.0, 0.0),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 12.0, 0.0),
                                              child: Icon(
                                                Icons.calendar_month,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .customColor5,
                                                size: 24.0,
                                              ),
                                            ),
                                          ),
                                          InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              await showModalBottomSheet<bool>(
                                                  context: context,
                                                  builder: (context) {
                                                    return ScrollConfiguration(
                                                      behavior:
                                                          const MaterialScrollBehavior()
                                                              .copyWith(
                                                        dragDevices: {
                                                          PointerDeviceKind
                                                              .mouse,
                                                          PointerDeviceKind
                                                              .touch,
                                                          PointerDeviceKind
                                                              .stylus,
                                                          PointerDeviceKind
                                                              .unknown
                                                        },
                                                      ),
                                                      child: SizedBox(
                                                        height: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .height /
                                                            3,
                                                        width: MediaQuery.of(
                                                                context)
                                                            .size
                                                            .width,
                                                        child:
                                                            CupertinoDatePicker(
                                                          mode:
                                                              CupertinoDatePickerMode
                                                                  .date,
                                                          minimumDate:
                                                              getCurrentTimestamp,
                                                          initialDateTime:
                                                              getCurrentTimestamp,
                                                          maximumDate:
                                                              DateTime(2050),
                                                          use24hFormat: false,
                                                          onDateTimeChanged:
                                                              (newDateTime) =>
                                                                  safeSetState(
                                                                      () {
                                                            _model.datePicked1 =
                                                                newDateTime;
                                                          }),
                                                        ),
                                                      ),
                                                    );
                                                  });
                                              safeSetState(() {
                                                _model.textController1?.text =
                                                    dateTimeFormat("d/M/y",
                                                        _model.datePicked1);
                                              });
                                            },
                                            child: Container(
                                              width: double.infinity,
                                              height: double.infinity,
                                              decoration: const BoxDecoration(),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ].divide(const SizedBox(height: 8.0)),
                                ),
                            () => Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                          width: () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                kBreakpointSmall) {
                                              return 24.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointMedium) {
                                              return 24.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointLarge) {
                                              return 32.0;
                                            } else {
                                              return 32.0;
                                            }
                                          }(),
                                          height: () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                kBreakpointSmall) {
                                              return 24.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointMedium) {
                                              return 24.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointLarge) {
                                              return 32.0;
                                            } else {
                                              return 32.0;
                                            }
                                          }(),
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                              colors: [
                                                const Color(0xFF78C7FF),
                                                FlutterFlowTheme.of(context)
                                                    .primary
                                              ],
                                              stops: const [0.0, 1.0],
                                              begin: const AlignmentDirectional(
                                                  0.56, -1.0),
                                              end: const AlignmentDirectional(
                                                  -0.56, 1.0),
                                            ),
                                            shape: BoxShape.circle,
                                          ),
                                          child: Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: Icon(
                                              Icons.access_time_filled_rounded,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              size: 14.0,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          'เวลา',
                                          style: FlutterFlowTheme.of(context)
                                              .labelSmall
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .labelSmallFamily,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .labelSmallIsCustom,
                                              ),
                                        ),
                                      ].divide(const SizedBox(width: 8.0)),
                                    ),
                                    Container(
                                      width: double.infinity,
                                      height: 46.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      child: Stack(
                                        children: [
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(-1.0, 0.0),
                                            child: SizedBox(
                                              width: double.infinity,
                                              child: TextFormField(
                                                controller:
                                                    _model.textController2,
                                                focusNode:
                                                    _model.textFieldFocusNode2,
                                                autofocus: false,
                                                readOnly: true,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  isDense: true,
                                                  hintStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelLarge
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelLargeFamily,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelLargeIsCustom,
                                                          ),
                                                  enabledBorder:
                                                      InputBorder.none,
                                                  focusedBorder:
                                                      InputBorder.none,
                                                  errorBorder: InputBorder.none,
                                                  focusedErrorBorder:
                                                      InputBorder.none,
                                                  contentPadding:
                                                      const EdgeInsetsDirectional
                                                          .fromSTEB(16.0, 0.0,
                                                              16.0, 0.0),
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMediumIsCustom,
                                                        ),
                                                validator: _model
                                                    .textController2Validator
                                                    .asValidator(context),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(1.0, 0.0),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 12.0, 0.0),
                                              child: Icon(
                                                Icons.access_time_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .customColor5,
                                                size: 24.0,
                                              ),
                                            ),
                                          ),
                                          InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              await showModalBottomSheet<bool>(
                                                  context: context,
                                                  builder: (context) {
                                                    return ScrollConfiguration(
                                                      behavior:
                                                          const MaterialScrollBehavior()
                                                              .copyWith(
                                                        dragDevices: {
                                                          PointerDeviceKind
                                                              .mouse,
                                                          PointerDeviceKind
                                                              .touch,
                                                          PointerDeviceKind
                                                              .stylus,
                                                          PointerDeviceKind
                                                              .unknown
                                                        },
                                                      ),
                                                      child: SizedBox(
                                                        height: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .height /
                                                            3,
                                                        width: MediaQuery.of(
                                                                context)
                                                            .size
                                                            .width,
                                                        child:
                                                            CupertinoDatePicker(
                                                          mode:
                                                              CupertinoDatePickerMode
                                                                  .time,
                                                          minimumDate:
                                                              DateTime(1900),
                                                          initialDateTime:
                                                              getCurrentTimestamp,
                                                          maximumDate:
                                                              DateTime(2050),
                                                          use24hFormat: false,
                                                          onDateTimeChanged:
                                                              (newDateTime) =>
                                                                  safeSetState(
                                                                      () {
                                                            _model.datePicked2 =
                                                                newDateTime;
                                                          }),
                                                        ),
                                                      ),
                                                    );
                                                  });
                                              safeSetState(() {
                                                _model.textController2?.text =
                                                    dateTimeFormat("Hm",
                                                        _model.datePicked2);
                                              });
                                            },
                                            child: Container(
                                              width: double.infinity,
                                              height: double.infinity,
                                              decoration: const BoxDecoration(),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ].divide(const SizedBox(height: 8.0)),
                                ),
                          ][index]();
                        },
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: TextFormField(
                          controller: _model.textController3,
                          focusNode: _model.textFieldFocusNode3,
                          autofocus: false,
                          obscureText: false,
                          decoration: InputDecoration(
                            isDense: false,
                            labelStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .labelMediumFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .labelMediumIsCustom,
                                ),
                            hintText: 'ระบุเหตุผล',
                            hintStyle: FlutterFlowTheme.of(context)
                                .labelSmall
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .labelSmallFamily,
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .labelSmallIsCustom,
                                ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color(0xFFBBBBBB),
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color:
                                    FlutterFlowTheme.of(context).customColor5,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            filled: true,
                            fillColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          style: FlutterFlowTheme.of(context)
                              .titleSmall
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .titleSmallFamily,
                                color:
                                    FlutterFlowTheme.of(context).customColor5,
                                letterSpacing: 0.0,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .titleSmallIsCustom,
                              ),
                          textAlign: TextAlign.start,
                          maxLines: 3,
                          cursorColor: FlutterFlowTheme.of(context).primary,
                          enableInteractiveSelection: false,
                          validator: _model.textController3Validator
                              .asValidator(context),
                        ),
                      ),
                    ].divide(const SizedBox(height: 16.0)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: wrapWithModel(
                        model: _model.bottonCancelModel,
                        updateCallback: () => safeSetState(() {}),
                        child: const BottonCancelWidget(),
                      ),
                    ),
                    Expanded(
                      child: MainButton(
                        text: 'บันทึก',
                        onPressed: () async {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ]
                      .divide(const SizedBox(width: 12.0))
                      .addToStart(const SizedBox(width: 16.0))
                      .addToEnd(const SizedBox(width: 16.0)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
