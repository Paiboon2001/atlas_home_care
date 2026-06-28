import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'ratepiont_model.dart';
export 'ratepiont_model.dart';

class RatepiontWidget extends StatefulWidget {
  const RatepiontWidget({
    super.key,
    required this.text,
    required this.rate,
  });

  final String? text;
  final String? rate;

  @override
  State<RatepiontWidget> createState() => _RatepiontWidgetState();
}

class _RatepiontWidgetState extends State<RatepiontWidget> {
  late RatepiontModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RatepiontModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFE9F0F9),
        borderRadius: BorderRadius.circular(16.0),
        border: Border.all(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          width: 1.0,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(valueOrDefault<double>(
          () {
            if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
              return 12.0;
            } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
              return 12.0;
            } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  valueOrDefault<String>(
                    widget.text,
                    'na',
                  ),
                  textAlign: TextAlign.start,
                  style: FlutterFlowTheme.of(context).bodySmall.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodySmallFamily,
                        fontSize: () {
                          if (MediaQuery.sizeOf(context).width <
                              kBreakpointSmall) {
                            return 12.0;
                          } else if (MediaQuery.sizeOf(context).width <
                              kBreakpointMedium) {
                            return 12.0;
                          } else if (MediaQuery.sizeOf(context).width <
                              kBreakpointLarge) {
                            return 16.0;
                          } else {
                            return 16.0;
                          }
                        }(),
                        letterSpacing: 0.0,
                        lineHeight: 1.8,
                        useGoogleFonts:
                            !FlutterFlowTheme.of(context).bodySmallIsCustom,
                      ),
                ),
                Text(
                  valueOrDefault<String>(
                    widget.rate,
                    'na',
                  ),
                  textAlign: TextAlign.start,
                  style: FlutterFlowTheme.of(context).bodySmall.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodySmallFamily,
                        fontSize: () {
                          if (MediaQuery.sizeOf(context).width <
                              kBreakpointSmall) {
                            return 12.0;
                          } else if (MediaQuery.sizeOf(context).width <
                              kBreakpointMedium) {
                            return 12.0;
                          } else if (MediaQuery.sizeOf(context).width <
                              kBreakpointLarge) {
                            return 16.0;
                          } else {
                            return 16.0;
                          }
                        }(),
                        letterSpacing: 0.0,
                        lineHeight: 1.8,
                        useGoogleFonts:
                            !FlutterFlowTheme.of(context).bodySmallIsCustom,
                      ),
                ),
              ],
            ),
            Expanded(
              child: MasonryGridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: () {
                    if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                      return 6;
                    } else if (MediaQuery.sizeOf(context).width <
                        kBreakpointMedium) {
                      return 6;
                    } else if (MediaQuery.sizeOf(context).width <
                        kBreakpointLarge) {
                      return 11;
                    } else {
                      return 11;
                    }
                  }(),
                ),
                crossAxisSpacing: 16.0,
                mainAxisSpacing: 16.0,
                itemCount: 11,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return [
                    () => Container(
                          width: () {
                            if (MediaQuery.sizeOf(context).width <
                                kBreakpointSmall) {
                              return 40.0;
                            } else if (MediaQuery.sizeOf(context).width <
                                kBreakpointMedium) {
                              return 40.0;
                            } else if (MediaQuery.sizeOf(context).width <
                                kBreakpointLarge) {
                              return 48.0;
                            } else {
                              return 48.0;
                            }
                          }(),
                          height: () {
                            if (MediaQuery.sizeOf(context).width <
                                kBreakpointSmall) {
                              return 40.0;
                            } else if (MediaQuery.sizeOf(context).width <
                                kBreakpointMedium) {
                              return 40.0;
                            } else if (MediaQuery.sizeOf(context).width <
                                kBreakpointLarge) {
                              return 48.0;
                            } else {
                              return 48.0;
                            }
                          }(),
                          decoration: BoxDecoration(
                            color: valueOrDefault<Color>(
                              _model.checkboxValue1 == true
                                  ? FlutterFlowTheme.of(context).primary
                                  : FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                              FlutterFlowTheme.of(context).secondaryBackground,
                            ),
                            shape: BoxShape.circle,
                          ),
                          child: Stack(
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Text(
                                  '0',
                                  style: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .titleMediumFamily,
                                        color: valueOrDefault<Color>(
                                          _model.checkboxValue1 == true
                                              ? FlutterFlowTheme.of(context)
                                                  .secondaryBackground
                                              : FlutterFlowTheme.of(context)
                                                  .primary,
                                          FlutterFlowTheme.of(context).primary,
                                        ),
                                        letterSpacing: 0.0,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .titleMediumIsCustom,
                                      ),
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Theme(
                                  data: ThemeData(
                                    checkboxTheme: CheckboxThemeData(
                                      visualDensity: VisualDensity.compact,
                                      materialTapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(4.0),
                                      ),
                                    ),
                                    unselectedWidgetColor: Colors.transparent,
                                  ),
                                  child: Checkbox(
                                    value: _model.checkboxValue1 ??= false,
                                    onChanged: (newValue) async {
                                      safeSetState(() =>
                                          _model.checkboxValue1 = newValue!);
                                      if (newValue!) {
                                        safeSetState(() {
                                          _model.checkboxValue2 = false;
                                          _model.checkboxValue3 = false;
                                          _model.checkboxValue4 = false;
                                          _model.checkboxValue5 = false;
                                          _model.checkboxValue6 = false;
                                          _model.checkboxValue7 = false;
                                          _model.checkboxValue8 = false;
                                          _model.checkboxValue9 = false;
                                          _model.checkboxValue10 = false;
                                          _model.checkboxValue11 = false;
                                        });
                                      }
                                    },
                                    side: (Colors.transparent != null)
                                        ? BorderSide(
                                            width: 2,
                                            color: Colors.transparent,
                                          )
                                        : null,
                                    activeColor: Colors.transparent,
                                    checkColor: Colors.transparent,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                    () => Container(
                          width: () {
                            if (MediaQuery.sizeOf(context).width <
                                kBreakpointSmall) {
                              return 40.0;
                            } else if (MediaQuery.sizeOf(context).width <
                                kBreakpointMedium) {
                              return 40.0;
                            } else if (MediaQuery.sizeOf(context).width <
                                kBreakpointLarge) {
                              return 48.0;
                            } else {
                              return 48.0;
                            }
                          }(),
                          height: () {
                            if (MediaQuery.sizeOf(context).width <
                                kBreakpointSmall) {
                              return 40.0;
                            } else if (MediaQuery.sizeOf(context).width <
                                kBreakpointMedium) {
                              return 40.0;
                            } else if (MediaQuery.sizeOf(context).width <
                                kBreakpointLarge) {
                              return 48.0;
                            } else {
                              return 48.0;
                            }
                          }(),
                          decoration: BoxDecoration(
                            color: valueOrDefault<Color>(
                              _model.checkboxValue2 == true
                                  ? FlutterFlowTheme.of(context).primary
                                  : FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                              FlutterFlowTheme.of(context).secondaryBackground,
                            ),
                            shape: BoxShape.circle,
                          ),
                          child: Stack(
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Text(
                                  '1',
                                  style: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .titleMediumFamily,
                                        color: valueOrDefault<Color>(
                                          _model.checkboxValue2 == true
                                              ? FlutterFlowTheme.of(context)
                                                  .secondaryBackground
                                              : FlutterFlowTheme.of(context)
                                                  .primary,
                                          FlutterFlowTheme.of(context).primary,
                                        ),
                                        letterSpacing: 0.0,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .titleMediumIsCustom,
                                      ),
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Theme(
                                  data: ThemeData(
                                    checkboxTheme: CheckboxThemeData(
                                      visualDensity: VisualDensity.compact,
                                      materialTapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(4.0),
                                      ),
                                    ),
                                    unselectedWidgetColor: Colors.transparent,
                                  ),
                                  child: Checkbox(
                                    value: _model.checkboxValue2 ??= false,
                                    onChanged: (newValue) async {
                                      safeSetState(() =>
                                          _model.checkboxValue2 = newValue!);
                                      if (newValue!) {
                                        safeSetState(() {
                                          _model.checkboxValue3 = false;
                                          _model.checkboxValue4 = false;
                                          _model.checkboxValue5 = false;
                                          _model.checkboxValue6 = false;
                                          _model.checkboxValue7 = false;
                                          _model.checkboxValue8 = false;
                                          _model.checkboxValue9 = false;
                                          _model.checkboxValue10 = false;
                                          _model.checkboxValue11 = false;
                                          _model.checkboxValue1 = false;
                                        });
                                      }
                                    },
                                    side: (Colors.transparent != null)
                                        ? BorderSide(
                                            width: 2,
                                            color: Colors.transparent,
                                          )
                                        : null,
                                    activeColor: Colors.transparent,
                                    checkColor: Colors.transparent,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                    () => Container(
                          width: () {
                            if (MediaQuery.sizeOf(context).width <
                                kBreakpointSmall) {
                              return 40.0;
                            } else if (MediaQuery.sizeOf(context).width <
                                kBreakpointMedium) {
                              return 40.0;
                            } else if (MediaQuery.sizeOf(context).width <
                                kBreakpointLarge) {
                              return 48.0;
                            } else {
                              return 48.0;
                            }
                          }(),
                          height: () {
                            if (MediaQuery.sizeOf(context).width <
                                kBreakpointSmall) {
                              return 40.0;
                            } else if (MediaQuery.sizeOf(context).width <
                                kBreakpointMedium) {
                              return 40.0;
                            } else if (MediaQuery.sizeOf(context).width <
                                kBreakpointLarge) {
                              return 48.0;
                            } else {
                              return 48.0;
                            }
                          }(),
                          decoration: BoxDecoration(
                            color: valueOrDefault<Color>(
                              _model.checkboxValue3 == true
                                  ? FlutterFlowTheme.of(context).primary
                                  : FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                              FlutterFlowTheme.of(context).secondaryBackground,
                            ),
                            shape: BoxShape.circle,
                          ),
                          child: Stack(
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Text(
                                  '2',
                                  style: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .titleMediumFamily,
                                        color: valueOrDefault<Color>(
                                          _model.checkboxValue3 == true
                                              ? FlutterFlowTheme.of(context)
                                                  .secondaryBackground
                                              : FlutterFlowTheme.of(context)
                                                  .primary,
                                          FlutterFlowTheme.of(context).primary,
                                        ),
                                        letterSpacing: 0.0,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .titleMediumIsCustom,
                                      ),
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Theme(
                                  data: ThemeData(
                                    checkboxTheme: CheckboxThemeData(
                                      visualDensity: VisualDensity.compact,
                                      materialTapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(4.0),
                                      ),
                                    ),
                                    unselectedWidgetColor: Colors.transparent,
                                  ),
                                  child: Checkbox(
                                    value: _model.checkboxValue3 ??= false,
                                    onChanged: (newValue) async {
                                      safeSetState(() =>
                                          _model.checkboxValue3 = newValue!);
                                      if (newValue!) {
                                        safeSetState(() {
                                          _model.checkboxValue2 = false;
                                          _model.checkboxValue4 = false;
                                          _model.checkboxValue5 = false;
                                          _model.checkboxValue6 = false;
                                          _model.checkboxValue7 = false;
                                          _model.checkboxValue8 = false;
                                          _model.checkboxValue9 = false;
                                          _model.checkboxValue10 = false;
                                          _model.checkboxValue11 = false;
                                          _model.checkboxValue1 = false;
                                        });
                                      }
                                    },
                                    side: (Colors.transparent != null)
                                        ? BorderSide(
                                            width: 2,
                                            color: Colors.transparent,
                                          )
                                        : null,
                                    activeColor: Colors.transparent,
                                    checkColor: Colors.transparent,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                    () => Container(
                          width: () {
                            if (MediaQuery.sizeOf(context).width <
                                kBreakpointSmall) {
                              return 40.0;
                            } else if (MediaQuery.sizeOf(context).width <
                                kBreakpointMedium) {
                              return 40.0;
                            } else if (MediaQuery.sizeOf(context).width <
                                kBreakpointLarge) {
                              return 48.0;
                            } else {
                              return 48.0;
                            }
                          }(),
                          height: () {
                            if (MediaQuery.sizeOf(context).width <
                                kBreakpointSmall) {
                              return 40.0;
                            } else if (MediaQuery.sizeOf(context).width <
                                kBreakpointMedium) {
                              return 40.0;
                            } else if (MediaQuery.sizeOf(context).width <
                                kBreakpointLarge) {
                              return 48.0;
                            } else {
                              return 48.0;
                            }
                          }(),
                          decoration: BoxDecoration(
                            color: valueOrDefault<Color>(
                              _model.checkboxValue4 == true
                                  ? FlutterFlowTheme.of(context).primary
                                  : FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                              FlutterFlowTheme.of(context).secondaryBackground,
                            ),
                            shape: BoxShape.circle,
                          ),
                          child: Stack(
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Text(
                                  '3',
                                  style: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .titleMediumFamily,
                                        color: valueOrDefault<Color>(
                                          _model.checkboxValue4 == true
                                              ? FlutterFlowTheme.of(context)
                                                  .secondaryBackground
                                              : FlutterFlowTheme.of(context)
                                                  .primary,
                                          FlutterFlowTheme.of(context).primary,
                                        ),
                                        letterSpacing: 0.0,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .titleMediumIsCustom,
                                      ),
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Theme(
                                  data: ThemeData(
                                    checkboxTheme: CheckboxThemeData(
                                      visualDensity: VisualDensity.compact,
                                      materialTapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(4.0),
                                      ),
                                    ),
                                    unselectedWidgetColor: Colors.transparent,
                                  ),
                                  child: Checkbox(
                                    value: _model.checkboxValue4 ??= false,
                                    onChanged: (newValue) async {
                                      safeSetState(() =>
                                          _model.checkboxValue4 = newValue!);
                                      if (newValue!) {
                                        safeSetState(() {
                                          _model.checkboxValue2 = false;
                                          _model.checkboxValue3 = false;
                                          _model.checkboxValue5 = false;
                                          _model.checkboxValue6 = false;
                                          _model.checkboxValue7 = false;
                                          _model.checkboxValue8 = false;
                                          _model.checkboxValue9 = false;
                                          _model.checkboxValue10 = false;
                                          _model.checkboxValue11 = false;
                                          _model.checkboxValue1 = false;
                                        });
                                      }
                                    },
                                    side: (Colors.transparent != null)
                                        ? BorderSide(
                                            width: 2,
                                            color: Colors.transparent,
                                          )
                                        : null,
                                    activeColor: Colors.transparent,
                                    checkColor: Colors.transparent,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                    () => Container(
                          width: () {
                            if (MediaQuery.sizeOf(context).width <
                                kBreakpointSmall) {
                              return 40.0;
                            } else if (MediaQuery.sizeOf(context).width <
                                kBreakpointMedium) {
                              return 40.0;
                            } else if (MediaQuery.sizeOf(context).width <
                                kBreakpointLarge) {
                              return 48.0;
                            } else {
                              return 48.0;
                            }
                          }(),
                          height: () {
                            if (MediaQuery.sizeOf(context).width <
                                kBreakpointSmall) {
                              return 40.0;
                            } else if (MediaQuery.sizeOf(context).width <
                                kBreakpointMedium) {
                              return 40.0;
                            } else if (MediaQuery.sizeOf(context).width <
                                kBreakpointLarge) {
                              return 48.0;
                            } else {
                              return 48.0;
                            }
                          }(),
                          decoration: BoxDecoration(
                            color: valueOrDefault<Color>(
                              _model.checkboxValue5 == true
                                  ? FlutterFlowTheme.of(context).primary
                                  : FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                              FlutterFlowTheme.of(context).secondaryBackground,
                            ),
                            shape: BoxShape.circle,
                          ),
                          child: Stack(
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Text(
                                  '4',
                                  style: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .titleMediumFamily,
                                        color: valueOrDefault<Color>(
                                          _model.checkboxValue5 == true
                                              ? FlutterFlowTheme.of(context)
                                                  .secondaryBackground
                                              : FlutterFlowTheme.of(context)
                                                  .primary,
                                          FlutterFlowTheme.of(context).primary,
                                        ),
                                        letterSpacing: 0.0,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .titleMediumIsCustom,
                                      ),
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Theme(
                                  data: ThemeData(
                                    checkboxTheme: CheckboxThemeData(
                                      visualDensity: VisualDensity.compact,
                                      materialTapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(4.0),
                                      ),
                                    ),
                                    unselectedWidgetColor: Colors.transparent,
                                  ),
                                  child: Checkbox(
                                    value: _model.checkboxValue5 ??= false,
                                    onChanged: (newValue) async {
                                      safeSetState(() =>
                                          _model.checkboxValue5 = newValue!);
                                      if (newValue!) {
                                        safeSetState(() {
                                          _model.checkboxValue2 = false;
                                          _model.checkboxValue3 = false;
                                          _model.checkboxValue4 = false;
                                          _model.checkboxValue6 = false;
                                          _model.checkboxValue7 = false;
                                          _model.checkboxValue8 = false;
                                          _model.checkboxValue9 = false;
                                          _model.checkboxValue10 = false;
                                          _model.checkboxValue11 = false;
                                          _model.checkboxValue1 = false;
                                        });
                                      }
                                    },
                                    side: (Colors.transparent != null)
                                        ? BorderSide(
                                            width: 2,
                                            color: Colors.transparent,
                                          )
                                        : null,
                                    activeColor: Colors.transparent,
                                    checkColor: Colors.transparent,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                    () => Container(
                          width: () {
                            if (MediaQuery.sizeOf(context).width <
                                kBreakpointSmall) {
                              return 40.0;
                            } else if (MediaQuery.sizeOf(context).width <
                                kBreakpointMedium) {
                              return 40.0;
                            } else if (MediaQuery.sizeOf(context).width <
                                kBreakpointLarge) {
                              return 48.0;
                            } else {
                              return 48.0;
                            }
                          }(),
                          height: () {
                            if (MediaQuery.sizeOf(context).width <
                                kBreakpointSmall) {
                              return 40.0;
                            } else if (MediaQuery.sizeOf(context).width <
                                kBreakpointMedium) {
                              return 40.0;
                            } else if (MediaQuery.sizeOf(context).width <
                                kBreakpointLarge) {
                              return 48.0;
                            } else {
                              return 48.0;
                            }
                          }(),
                          decoration: BoxDecoration(
                            color: valueOrDefault<Color>(
                              _model.checkboxValue6 == true
                                  ? FlutterFlowTheme.of(context).primary
                                  : FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                              FlutterFlowTheme.of(context).secondaryBackground,
                            ),
                            shape: BoxShape.circle,
                          ),
                          child: Stack(
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Text(
                                  '5',
                                  style: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .titleMediumFamily,
                                        color: valueOrDefault<Color>(
                                          _model.checkboxValue6 == true
                                              ? FlutterFlowTheme.of(context)
                                                  .secondaryBackground
                                              : FlutterFlowTheme.of(context)
                                                  .primary,
                                          FlutterFlowTheme.of(context).primary,
                                        ),
                                        letterSpacing: 0.0,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .titleMediumIsCustom,
                                      ),
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Theme(
                                  data: ThemeData(
                                    checkboxTheme: CheckboxThemeData(
                                      visualDensity: VisualDensity.compact,
                                      materialTapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(4.0),
                                      ),
                                    ),
                                    unselectedWidgetColor: Colors.transparent,
                                  ),
                                  child: Checkbox(
                                    value: _model.checkboxValue6 ??= false,
                                    onChanged: (newValue) async {
                                      safeSetState(() =>
                                          _model.checkboxValue6 = newValue!);
                                      if (newValue!) {
                                        safeSetState(() {
                                          _model.checkboxValue2 = false;
                                          _model.checkboxValue3 = false;
                                          _model.checkboxValue4 = false;
                                          _model.checkboxValue5 = false;
                                          _model.checkboxValue7 = false;
                                          _model.checkboxValue8 = false;
                                          _model.checkboxValue9 = false;
                                          _model.checkboxValue10 = false;
                                          _model.checkboxValue11 = false;
                                          _model.checkboxValue1 = false;
                                        });
                                      }
                                    },
                                    side: (Colors.transparent != null)
                                        ? BorderSide(
                                            width: 2,
                                            color: Colors.transparent,
                                          )
                                        : null,
                                    activeColor: Colors.transparent,
                                    checkColor: Colors.transparent,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                    () => Container(
                          width: () {
                            if (MediaQuery.sizeOf(context).width <
                                kBreakpointSmall) {
                              return 40.0;
                            } else if (MediaQuery.sizeOf(context).width <
                                kBreakpointMedium) {
                              return 40.0;
                            } else if (MediaQuery.sizeOf(context).width <
                                kBreakpointLarge) {
                              return 48.0;
                            } else {
                              return 48.0;
                            }
                          }(),
                          height: () {
                            if (MediaQuery.sizeOf(context).width <
                                kBreakpointSmall) {
                              return 40.0;
                            } else if (MediaQuery.sizeOf(context).width <
                                kBreakpointMedium) {
                              return 40.0;
                            } else if (MediaQuery.sizeOf(context).width <
                                kBreakpointLarge) {
                              return 48.0;
                            } else {
                              return 48.0;
                            }
                          }(),
                          decoration: BoxDecoration(
                            color: valueOrDefault<Color>(
                              _model.checkboxValue7 == true
                                  ? FlutterFlowTheme.of(context).primary
                                  : FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                              FlutterFlowTheme.of(context).secondaryBackground,
                            ),
                            shape: BoxShape.circle,
                          ),
                          child: Stack(
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Text(
                                  '6',
                                  style: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .titleMediumFamily,
                                        color: valueOrDefault<Color>(
                                          _model.checkboxValue7 == true
                                              ? FlutterFlowTheme.of(context)
                                                  .secondaryBackground
                                              : FlutterFlowTheme.of(context)
                                                  .primary,
                                          FlutterFlowTheme.of(context).primary,
                                        ),
                                        letterSpacing: 0.0,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .titleMediumIsCustom,
                                      ),
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Theme(
                                  data: ThemeData(
                                    checkboxTheme: CheckboxThemeData(
                                      visualDensity: VisualDensity.compact,
                                      materialTapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(4.0),
                                      ),
                                    ),
                                    unselectedWidgetColor: Colors.transparent,
                                  ),
                                  child: Checkbox(
                                    value: _model.checkboxValue7 ??= false,
                                    onChanged: (newValue) async {
                                      safeSetState(() =>
                                          _model.checkboxValue7 = newValue!);
                                      if (newValue!) {
                                        safeSetState(() {
                                          _model.checkboxValue2 = false;
                                          _model.checkboxValue3 = false;
                                          _model.checkboxValue4 = false;
                                          _model.checkboxValue5 = false;
                                          _model.checkboxValue6 = false;
                                          _model.checkboxValue8 = false;
                                          _model.checkboxValue9 = false;
                                          _model.checkboxValue10 = false;
                                          _model.checkboxValue11 = false;
                                          _model.checkboxValue1 = false;
                                        });
                                      }
                                    },
                                    side: (Colors.transparent != null)
                                        ? BorderSide(
                                            width: 2,
                                            color: Colors.transparent,
                                          )
                                        : null,
                                    activeColor: Colors.transparent,
                                    checkColor: Colors.transparent,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                    () => Container(
                          width: () {
                            if (MediaQuery.sizeOf(context).width <
                                kBreakpointSmall) {
                              return 40.0;
                            } else if (MediaQuery.sizeOf(context).width <
                                kBreakpointMedium) {
                              return 40.0;
                            } else if (MediaQuery.sizeOf(context).width <
                                kBreakpointLarge) {
                              return 48.0;
                            } else {
                              return 48.0;
                            }
                          }(),
                          height: () {
                            if (MediaQuery.sizeOf(context).width <
                                kBreakpointSmall) {
                              return 40.0;
                            } else if (MediaQuery.sizeOf(context).width <
                                kBreakpointMedium) {
                              return 40.0;
                            } else if (MediaQuery.sizeOf(context).width <
                                kBreakpointLarge) {
                              return 48.0;
                            } else {
                              return 48.0;
                            }
                          }(),
                          decoration: BoxDecoration(
                            color: valueOrDefault<Color>(
                              _model.checkboxValue8 == true
                                  ? FlutterFlowTheme.of(context).primary
                                  : FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                              FlutterFlowTheme.of(context).secondaryBackground,
                            ),
                            shape: BoxShape.circle,
                          ),
                          child: Stack(
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Text(
                                  '7',
                                  style: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .titleMediumFamily,
                                        color: valueOrDefault<Color>(
                                          _model.checkboxValue8 == true
                                              ? FlutterFlowTheme.of(context)
                                                  .secondaryBackground
                                              : FlutterFlowTheme.of(context)
                                                  .primary,
                                          FlutterFlowTheme.of(context).primary,
                                        ),
                                        letterSpacing: 0.0,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .titleMediumIsCustom,
                                      ),
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Theme(
                                  data: ThemeData(
                                    checkboxTheme: CheckboxThemeData(
                                      visualDensity: VisualDensity.compact,
                                      materialTapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(4.0),
                                      ),
                                    ),
                                    unselectedWidgetColor: Colors.transparent,
                                  ),
                                  child: Checkbox(
                                    value: _model.checkboxValue8 ??= false,
                                    onChanged: (newValue) async {
                                      safeSetState(() =>
                                          _model.checkboxValue8 = newValue!);
                                      if (newValue!) {
                                        safeSetState(() {
                                          _model.checkboxValue2 = false;
                                          _model.checkboxValue3 = false;
                                          _model.checkboxValue4 = false;
                                          _model.checkboxValue5 = false;
                                          _model.checkboxValue6 = false;
                                          _model.checkboxValue7 = false;
                                          _model.checkboxValue9 = false;
                                          _model.checkboxValue10 = false;
                                          _model.checkboxValue11 = false;
                                          _model.checkboxValue1 = false;
                                        });
                                      }
                                    },
                                    side: (Colors.transparent != null)
                                        ? BorderSide(
                                            width: 2,
                                            color: Colors.transparent,
                                          )
                                        : null,
                                    activeColor: Colors.transparent,
                                    checkColor: Colors.transparent,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                    () => Container(
                          width: () {
                            if (MediaQuery.sizeOf(context).width <
                                kBreakpointSmall) {
                              return 40.0;
                            } else if (MediaQuery.sizeOf(context).width <
                                kBreakpointMedium) {
                              return 40.0;
                            } else if (MediaQuery.sizeOf(context).width <
                                kBreakpointLarge) {
                              return 48.0;
                            } else {
                              return 48.0;
                            }
                          }(),
                          height: () {
                            if (MediaQuery.sizeOf(context).width <
                                kBreakpointSmall) {
                              return 40.0;
                            } else if (MediaQuery.sizeOf(context).width <
                                kBreakpointMedium) {
                              return 40.0;
                            } else if (MediaQuery.sizeOf(context).width <
                                kBreakpointLarge) {
                              return 48.0;
                            } else {
                              return 48.0;
                            }
                          }(),
                          decoration: BoxDecoration(
                            color: valueOrDefault<Color>(
                              _model.checkboxValue9 == true
                                  ? FlutterFlowTheme.of(context).primary
                                  : FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                              FlutterFlowTheme.of(context).secondaryBackground,
                            ),
                            shape: BoxShape.circle,
                          ),
                          child: Stack(
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Text(
                                  '8',
                                  style: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .titleMediumFamily,
                                        color: valueOrDefault<Color>(
                                          _model.checkboxValue9 == true
                                              ? FlutterFlowTheme.of(context)
                                                  .secondaryBackground
                                              : FlutterFlowTheme.of(context)
                                                  .primary,
                                          FlutterFlowTheme.of(context).primary,
                                        ),
                                        letterSpacing: 0.0,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .titleMediumIsCustom,
                                      ),
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Theme(
                                  data: ThemeData(
                                    checkboxTheme: CheckboxThemeData(
                                      visualDensity: VisualDensity.compact,
                                      materialTapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(4.0),
                                      ),
                                    ),
                                    unselectedWidgetColor: Colors.transparent,
                                  ),
                                  child: Checkbox(
                                    value: _model.checkboxValue9 ??= false,
                                    onChanged: (newValue) async {
                                      safeSetState(() =>
                                          _model.checkboxValue9 = newValue!);
                                      if (newValue!) {
                                        safeSetState(() {
                                          _model.checkboxValue2 = false;
                                          _model.checkboxValue3 = false;
                                          _model.checkboxValue4 = false;
                                          _model.checkboxValue5 = false;
                                          _model.checkboxValue6 = false;
                                          _model.checkboxValue7 = false;
                                          _model.checkboxValue8 = false;
                                          _model.checkboxValue10 = false;
                                          _model.checkboxValue11 = false;
                                          _model.checkboxValue1 = false;
                                        });
                                      }
                                    },
                                    side: (Colors.transparent != null)
                                        ? BorderSide(
                                            width: 2,
                                            color: Colors.transparent,
                                          )
                                        : null,
                                    activeColor: Colors.transparent,
                                    checkColor: Colors.transparent,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                    () => Container(
                          width: () {
                            if (MediaQuery.sizeOf(context).width <
                                kBreakpointSmall) {
                              return 40.0;
                            } else if (MediaQuery.sizeOf(context).width <
                                kBreakpointMedium) {
                              return 40.0;
                            } else if (MediaQuery.sizeOf(context).width <
                                kBreakpointLarge) {
                              return 48.0;
                            } else {
                              return 48.0;
                            }
                          }(),
                          height: () {
                            if (MediaQuery.sizeOf(context).width <
                                kBreakpointSmall) {
                              return 40.0;
                            } else if (MediaQuery.sizeOf(context).width <
                                kBreakpointMedium) {
                              return 40.0;
                            } else if (MediaQuery.sizeOf(context).width <
                                kBreakpointLarge) {
                              return 48.0;
                            } else {
                              return 48.0;
                            }
                          }(),
                          decoration: BoxDecoration(
                            color: valueOrDefault<Color>(
                              _model.checkboxValue10 == true
                                  ? FlutterFlowTheme.of(context).primary
                                  : FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                              FlutterFlowTheme.of(context).secondaryBackground,
                            ),
                            shape: BoxShape.circle,
                          ),
                          child: Stack(
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Text(
                                  '9',
                                  style: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .titleMediumFamily,
                                        color: valueOrDefault<Color>(
                                          _model.checkboxValue10 == true
                                              ? FlutterFlowTheme.of(context)
                                                  .secondaryBackground
                                              : FlutterFlowTheme.of(context)
                                                  .primary,
                                          FlutterFlowTheme.of(context).primary,
                                        ),
                                        letterSpacing: 0.0,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .titleMediumIsCustom,
                                      ),
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Theme(
                                  data: ThemeData(
                                    checkboxTheme: CheckboxThemeData(
                                      visualDensity: VisualDensity.compact,
                                      materialTapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(4.0),
                                      ),
                                    ),
                                    unselectedWidgetColor: Colors.transparent,
                                  ),
                                  child: Checkbox(
                                    value: _model.checkboxValue10 ??= false,
                                    onChanged: (newValue) async {
                                      safeSetState(() =>
                                          _model.checkboxValue10 = newValue!);
                                      if (newValue!) {
                                        safeSetState(() {
                                          _model.checkboxValue2 = false;
                                          _model.checkboxValue3 = false;
                                          _model.checkboxValue4 = false;
                                          _model.checkboxValue5 = false;
                                          _model.checkboxValue6 = false;
                                          _model.checkboxValue7 = false;
                                          _model.checkboxValue8 = false;
                                          _model.checkboxValue9 = false;
                                          _model.checkboxValue11 = false;
                                          _model.checkboxValue1 = false;
                                        });
                                      }
                                    },
                                    side: (Colors.transparent != null)
                                        ? BorderSide(
                                            width: 2,
                                            color: Colors.transparent,
                                          )
                                        : null,
                                    activeColor: Colors.transparent,
                                    checkColor: Colors.transparent,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                    () => Container(
                          width: () {
                            if (MediaQuery.sizeOf(context).width <
                                kBreakpointSmall) {
                              return 40.0;
                            } else if (MediaQuery.sizeOf(context).width <
                                kBreakpointMedium) {
                              return 40.0;
                            } else if (MediaQuery.sizeOf(context).width <
                                kBreakpointLarge) {
                              return 48.0;
                            } else {
                              return 48.0;
                            }
                          }(),
                          height: () {
                            if (MediaQuery.sizeOf(context).width <
                                kBreakpointSmall) {
                              return 40.0;
                            } else if (MediaQuery.sizeOf(context).width <
                                kBreakpointMedium) {
                              return 40.0;
                            } else if (MediaQuery.sizeOf(context).width <
                                kBreakpointLarge) {
                              return 48.0;
                            } else {
                              return 48.0;
                            }
                          }(),
                          decoration: BoxDecoration(
                            color: valueOrDefault<Color>(
                              _model.checkboxValue11 == true
                                  ? FlutterFlowTheme.of(context).primary
                                  : FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                              FlutterFlowTheme.of(context).secondaryBackground,
                            ),
                            shape: BoxShape.circle,
                          ),
                          child: Stack(
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Text(
                                  '10',
                                  style: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .titleMediumFamily,
                                        color: valueOrDefault<Color>(
                                          _model.checkboxValue11 == true
                                              ? FlutterFlowTheme.of(context)
                                                  .secondaryBackground
                                              : FlutterFlowTheme.of(context)
                                                  .primary,
                                          FlutterFlowTheme.of(context).primary,
                                        ),
                                        letterSpacing: 0.0,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .titleMediumIsCustom,
                                      ),
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Theme(
                                  data: ThemeData(
                                    checkboxTheme: CheckboxThemeData(
                                      visualDensity: VisualDensity.compact,
                                      materialTapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(4.0),
                                      ),
                                    ),
                                    unselectedWidgetColor: Colors.transparent,
                                  ),
                                  child: Checkbox(
                                    value: _model.checkboxValue11 ??= false,
                                    onChanged: (newValue) async {
                                      safeSetState(() =>
                                          _model.checkboxValue11 = newValue!);
                                      if (newValue!) {
                                        safeSetState(() {
                                          _model.checkboxValue2 = false;
                                          _model.checkboxValue3 = false;
                                          _model.checkboxValue4 = false;
                                          _model.checkboxValue5 = false;
                                          _model.checkboxValue6 = false;
                                          _model.checkboxValue7 = false;
                                          _model.checkboxValue8 = false;
                                          _model.checkboxValue9 = false;
                                          _model.checkboxValue10 = false;
                                          _model.checkboxValue1 = false;
                                        });
                                      }
                                    },
                                    side: (Colors.transparent != null)
                                        ? BorderSide(
                                            width: 2,
                                            color: Colors.transparent,
                                          )
                                        : null,
                                    activeColor: Colors.transparent,
                                    checkColor: Colors.transparent,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                  ][index]();
                },
              ),
            ),
          ].divide(const SizedBox(height: 12.0)),
        ),
      ),
    );
  }
}
