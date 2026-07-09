import '/components/thai_date_picker_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/home/widget/number_calendar/number_calendar_widget.dart';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'tablecalenda_model.dart';
export 'tablecalenda_model.dart';

class TablecalendaWidget extends StatefulWidget {
  const TablecalendaWidget({super.key});

  @override
  State<TablecalendaWidget> createState() => _TablecalendaWidgetState();
}

class _TablecalendaWidgetState extends State<TablecalendaWidget> {
  late TablecalendaModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TablecalendaModel());

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
      width: double.infinity,
      height: () {
        if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
          return 480.0;
        } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
          return 480.0;
        } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
          return 600.0;
        } else {
          return 600.0;
        }
      }(),
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        boxShadow: const [
          BoxShadow(
            blurRadius: 8.0,
            color: Color(0x1A000000),
            offset: Offset(
              0.0,
              0.0,
            ),
          )
        ],
        borderRadius: BorderRadius.circular(24.0),
      ),
      child: Stack(
        children: [
          Align(
            alignment: const AlignmentDirectional(-1.0, -1.0),
            child: Container(
              width: double.infinity,
              height: 90.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: Image.asset(
                    'assets/images/bgappbar.png',
                  ).image,
                ),
                gradient: LinearGradient(
                  colors: [
                    const Color(0xFF2370BC),
                    FlutterFlowTheme.of(context).primary
                  ],
                  stops: const [0.0, 1.0],
                  begin: const AlignmentDirectional(0.0, -1.0),
                  end: const AlignmentDirectional(0, 1.0),
                ),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(24.0),
                  topRight: Radius.circular(24.0),
                ),
              ),
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: SizedBox(
                  width: double.infinity,
                  height: 500.0,
                  child: PageView(
                    controller: _model.pageViewController ??=
                        PageController(initialPage: 1),
                    scrollDirection: Axis.horizontal,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Text(
                                    valueOrDefault<String>(
                                      dateTimeFormat(
                                          "MMMM y", _model.datePicked1),
                                      'เมษายน 2568',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmallFamily,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .titleSmallIsCustom,
                                        ),
                                  ),
                                ),
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    final datePicked1Date =
                                        await showDatePicker(
                                      context: context,
                                      barrierDismissible: false,
                                      initialDate: getCurrentTimestamp,
                                      firstDate: DateTime(1900),
                                      lastDate: DateTime(2050),
                                    );

                                    if (datePicked1Date != null) {
                                      safeSetState(() {
                                        _model.datePicked1 = DateTime(
                                          datePicked1Date.year,
                                          datePicked1Date.month,
                                          datePicked1Date.day,
                                        );
                                      });
                                    } else if (_model.datePicked1 != null) {
                                      safeSetState(() {
                                        _model.datePicked1 =
                                            getCurrentTimestamp;
                                      });
                                    }
                                  },
                                  child: Icon(
                                    Icons.calendar_month,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    size: 24.0,
                                  ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Icon(
                                      Icons.keyboard_arrow_left_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      size: 24.0,
                                    ),
                                    InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        await _model.pageViewController
                                            ?.animateToPage(
                                          1,
                                          duration: const Duration(milliseconds: 500),
                                          curve: Curves.ease,
                                        );
                                      },
                                      child: Icon(
                                        Icons.keyboard_arrow_right_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        size: 24.0,
                                      ),
                                    ),
                                  ].divide(const SizedBox(width: 32.0)),
                                ),
                              ].divide(const SizedBox(width: 32.0)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                8.0, 0.0, 8.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Text(
                                    'อา.',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodySmallFamily,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .bodySmallIsCustom,
                                        ),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    'จ.',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodySmallFamily,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .bodySmallIsCustom,
                                        ),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    'อ.',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodySmallFamily,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .bodySmallIsCustom,
                                        ),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    'พ.',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodySmallFamily,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .bodySmallIsCustom,
                                        ),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    'พฤ.',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodySmallFamily,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .bodySmallIsCustom,
                                        ),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    'ศ.',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodySmallFamily,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .bodySmallIsCustom,
                                        ),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    'ส.',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodySmallFamily,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .bodySmallIsCustom,
                                        ),
                                  ),
                                ),
                              ].divide(const SizedBox(width: 16.0)),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  8.0, 0.0, 8.0, 0.0),
                              child: MasonryGridView.builder(
                                physics: const NeverScrollableScrollPhysics(),
                                gridDelegate:
                                    const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 7,
                                ),
                                crossAxisSpacing: 12.0,
                                mainAxisSpacing: () {
                                  if (MediaQuery.sizeOf(context).width <
                                      kBreakpointSmall) {
                                    return 8.0;
                                  } else if (MediaQuery.sizeOf(context).width <
                                      kBreakpointMedium) {
                                    return 8.0;
                                  } else if (MediaQuery.sizeOf(context).width <
                                      kBreakpointLarge) {
                                    return 24.0;
                                  } else {
                                    return 24.0;
                                  }
                                }(),
                                itemCount: 35,
                                padding: const EdgeInsets.fromLTRB(
                                  0,
                                  8.0,
                                  0,
                                  8.0,
                                ),
                                itemBuilder: (context, index) {
                                  return [
                                    () => wrapWithModel(
                                          model: _model.numberCalendarModel1,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: NumberCalendarWidget(
                                            numcalen: '30',
                                            piccorlor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            textcorlor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryText,
                                          ),
                                        ),
                                    () => Container(
                                          child: wrapWithModel(
                                            model: _model.numberCalendarModel2,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: NumberCalendarWidget(
                                              numcalen: '31',
                                              piccorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textcorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                            ),
                                          ),
                                        ),
                                    () => Container(
                                          decoration: const BoxDecoration(),
                                          child: wrapWithModel(
                                            model: _model.numberCalendarModel3,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: NumberCalendarWidget(
                                              numcalen: '1',
                                              piccorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textcorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                          ),
                                        ),
                                    () => Container(
                                          decoration: const BoxDecoration(),
                                          child: wrapWithModel(
                                            model: _model.numberCalendarModel4,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: NumberCalendarWidget(
                                              numcalen: '2',
                                              piccorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textcorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                          ),
                                        ),
                                    () => Container(
                                          decoration: const BoxDecoration(),
                                          child: wrapWithModel(
                                            model: _model.numberCalendarModel5,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: NumberCalendarWidget(
                                              numcalen: '3',
                                              piccorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textcorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                          ),
                                        ),
                                    () => Container(
                                          decoration: const BoxDecoration(),
                                          child: wrapWithModel(
                                            model: _model.numberCalendarModel6,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: NumberCalendarWidget(
                                              numcalen: '4',
                                              piccorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textcorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                          ),
                                        ),
                                    () => Container(
                                          decoration: const BoxDecoration(),
                                          child: wrapWithModel(
                                            model: _model.numberCalendarModel7,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: NumberCalendarWidget(
                                              numcalen: '5',
                                              piccorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textcorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                            ),
                                          ),
                                        ),
                                    () => Container(
                                          decoration: const BoxDecoration(),
                                          child: wrapWithModel(
                                            model: _model.numberCalendarModel8,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: NumberCalendarWidget(
                                              numcalen: '6',
                                              piccorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textcorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                            ),
                                          ),
                                        ),
                                    () => Container(
                                          decoration: const BoxDecoration(),
                                          child: wrapWithModel(
                                            model: _model.numberCalendarModel9,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: NumberCalendarWidget(
                                              numcalen: '7',
                                              piccorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textcorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                          ),
                                        ),
                                    () => Container(
                                          decoration: const BoxDecoration(),
                                          child: wrapWithModel(
                                            model: _model.numberCalendarModel10,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: NumberCalendarWidget(
                                              numcalen: '8',
                                              piccorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textcorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                          ),
                                        ),
                                    () => Container(
                                          decoration: const BoxDecoration(),
                                          child: wrapWithModel(
                                            model: _model.numberCalendarModel11,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: NumberCalendarWidget(
                                              numcalen: '9',
                                              piccorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textcorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                          ),
                                        ),
                                    () => Container(
                                          decoration: const BoxDecoration(),
                                          child: wrapWithModel(
                                            model: _model.numberCalendarModel12,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: NumberCalendarWidget(
                                              numcalen: '10',
                                              piccorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textcorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                          ),
                                        ),
                                    () => Container(
                                          decoration: const BoxDecoration(),
                                          child: wrapWithModel(
                                            model: _model.numberCalendarModel13,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: NumberCalendarWidget(
                                              numcalen: '11',
                                              piccorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textcorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                          ),
                                        ),
                                    () => Container(
                                          decoration: const BoxDecoration(),
                                          child: wrapWithModel(
                                            model: _model.numberCalendarModel14,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: NumberCalendarWidget(
                                              numcalen: '12',
                                              piccorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textcorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                            ),
                                          ),
                                        ),
                                    () => Container(
                                          decoration: const BoxDecoration(),
                                          child: wrapWithModel(
                                            model: _model.numberCalendarModel15,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: NumberCalendarWidget(
                                              numcalen: '13',
                                              piccorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textcorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                            ),
                                          ),
                                        ),
                                    () => Container(
                                          decoration: const BoxDecoration(),
                                          child: wrapWithModel(
                                            model: _model.numberCalendarModel16,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: NumberCalendarWidget(
                                              numcalen: '14',
                                              piccorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textcorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                          ),
                                        ),
                                    () => Container(
                                          decoration: const BoxDecoration(),
                                          child: wrapWithModel(
                                            model: _model.numberCalendarModel17,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: NumberCalendarWidget(
                                              numcalen: '15',
                                              piccorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textcorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                          ),
                                        ),
                                    () => Container(
                                          decoration: const BoxDecoration(),
                                          child: wrapWithModel(
                                            model: _model.numberCalendarModel18,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: NumberCalendarWidget(
                                              numcalen: '16',
                                              piccorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textcorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                          ),
                                        ),
                                    () => Container(
                                          decoration: const BoxDecoration(),
                                          child: wrapWithModel(
                                            model: _model.numberCalendarModel19,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: NumberCalendarWidget(
                                              numcalen: '17',
                                              piccorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textcorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                          ),
                                        ),
                                    () => Container(
                                          decoration: const BoxDecoration(),
                                          child: wrapWithModel(
                                            model: _model.numberCalendarModel20,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: NumberCalendarWidget(
                                              numcalen: '18',
                                              piccorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textcorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                          ),
                                        ),
                                    () => Container(
                                          decoration: const BoxDecoration(),
                                          child: wrapWithModel(
                                            model: _model.numberCalendarModel21,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: NumberCalendarWidget(
                                              numcalen: '19',
                                              piccorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textcorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                            ),
                                          ),
                                        ),
                                    () => Container(
                                          decoration: const BoxDecoration(),
                                          child: wrapWithModel(
                                            model: _model.numberCalendarModel22,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: NumberCalendarWidget(
                                              numcalen: '20',
                                              piccorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textcorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                            ),
                                          ),
                                        ),
                                    () => Container(
                                          decoration: const BoxDecoration(),
                                          child: wrapWithModel(
                                            model: _model.numberCalendarModel23,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: NumberCalendarWidget(
                                              numcalen: '21',
                                              piccorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textcorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                          ),
                                        ),
                                    () => Container(
                                          decoration: const BoxDecoration(),
                                          child: wrapWithModel(
                                            model: _model.numberCalendarModel24,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: NumberCalendarWidget(
                                              numcalen: '22',
                                              piccorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textcorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                          ),
                                        ),
                                    () => Container(
                                          decoration: const BoxDecoration(),
                                          child: wrapWithModel(
                                            model: _model.numberCalendarModel25,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: NumberCalendarWidget(
                                              numcalen: '23',
                                              piccorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textcorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                          ),
                                        ),
                                    () => Container(
                                          decoration: const BoxDecoration(),
                                          child: wrapWithModel(
                                            model: _model.numberCalendarModel26,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: NumberCalendarWidget(
                                              numcalen: '24',
                                              piccorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textcorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                          ),
                                        ),
                                    () => Container(
                                          decoration: const BoxDecoration(),
                                          child: wrapWithModel(
                                            model: _model.numberCalendarModel27,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: NumberCalendarWidget(
                                              numcalen: '25',
                                              piccorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textcorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                          ),
                                        ),
                                    () => Container(
                                          decoration: const BoxDecoration(),
                                          child: wrapWithModel(
                                            model: _model.numberCalendarModel28,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: NumberCalendarWidget(
                                              numcalen: '26',
                                              piccorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textcorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                            ),
                                          ),
                                        ),
                                    () => Container(
                                          decoration: const BoxDecoration(),
                                          child: wrapWithModel(
                                            model: _model.numberCalendarModel29,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: NumberCalendarWidget(
                                              numcalen: '27',
                                              piccorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textcorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                            ),
                                          ),
                                        ),
                                    () => Container(
                                          decoration: const BoxDecoration(),
                                          child: wrapWithModel(
                                            model: _model.numberCalendarModel30,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: NumberCalendarWidget(
                                              numcalen: '28',
                                              piccorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textcorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                          ),
                                        ),
                                    () => Container(
                                          decoration: const BoxDecoration(),
                                          child: wrapWithModel(
                                            model: _model.numberCalendarModel31,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: NumberCalendarWidget(
                                              numcalen: '29',
                                              piccorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textcorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                          ),
                                        ),
                                    () => Container(
                                          decoration: const BoxDecoration(),
                                          child: wrapWithModel(
                                            model: _model.numberCalendarModel32,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: NumberCalendarWidget(
                                              numcalen: '30',
                                              piccorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textcorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                          ),
                                        ),
                                    () => Container(
                                          decoration: const BoxDecoration(),
                                          child: wrapWithModel(
                                            model: _model.numberCalendarModel33,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: NumberCalendarWidget(
                                              numcalen: '1',
                                              piccorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textcorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                            ),
                                          ),
                                        ),
                                    () => Container(
                                          decoration: const BoxDecoration(),
                                          child: wrapWithModel(
                                            model: _model.numberCalendarModel34,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: NumberCalendarWidget(
                                              numcalen: '2',
                                              piccorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textcorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                            ),
                                          ),
                                        ),
                                    () => Container(
                                          decoration: const BoxDecoration(),
                                          child: wrapWithModel(
                                            model: _model.numberCalendarModel35,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: NumberCalendarWidget(
                                              numcalen: '3',
                                              piccorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textcorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                            ),
                                          ),
                                        ),
                                  ][index]();
                                },
                              ),
                            ),
                          ),
                        ]
                            .divide(const SizedBox(height: 16.0))
                            .addToStart(const SizedBox(height: 16.0)),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                12.0, 0.0, 12.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Text(
                                    valueOrDefault<String>(
                                      dateTimeFormat(
                                          "MMMM y", _model.datePicked2),
                                      'พฤษภาคม 2568',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmallFamily,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .titleSmallIsCustom,
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
                                                PointerDeviceKind.mouse,
                                                PointerDeviceKind.touch,
                                                PointerDeviceKind.stylus,
                                                PointerDeviceKind.unknown
                                              },
                                            ),
                                            child: SizedBox(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height /
                                                  3,
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              child: ThaiDatePicker(
                                                initialDate:
                                                    _model.datePicked2 ??
                                                        getCurrentTimestamp,
                                                firstDate: DateTime(1900),
                                                lastDate: DateTime(2050),
                                                onChanged: (newDateTime) =>
                                                    safeSetState(() {
                                                  _model.datePicked2 =
                                                      newDateTime;
                                                }),
                                              ),
                                            ),
                                          );
                                        });
                                  },
                                  child: Icon(
                                    Icons.calendar_month,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    size: () {
                                      if (MediaQuery.sizeOf(context).width <
                                          kBreakpointSmall) {
                                        return 24.0;
                                      } else if (MediaQuery.sizeOf(context)
                                              .width <
                                          kBreakpointMedium) {
                                        return 24.0;
                                      } else if (MediaQuery.sizeOf(context)
                                              .width <
                                          kBreakpointLarge) {
                                        return 32.0;
                                      } else {
                                        return 32.0;
                                      }
                                    }(),
                                  ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        await _model.pageViewController
                                            ?.animateToPage(
                                          0,
                                          duration: const Duration(milliseconds: 500),
                                          curve: Curves.ease,
                                        );
                                      },
                                      child: Icon(
                                        Icons.keyboard_arrow_left_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        size: 24.0,
                                      ),
                                    ),
                                    InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        await _model.pageViewController
                                            ?.animateToPage(
                                          2,
                                          duration: const Duration(milliseconds: 500),
                                          curve: Curves.ease,
                                        );
                                      },
                                      child: Icon(
                                        Icons.keyboard_arrow_right_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        size: 24.0,
                                      ),
                                    ),
                                  ].divide(const SizedBox(width: 32.0)),
                                ),
                              ].divide(const SizedBox(width: 32.0)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                8.0, 0.0, 8.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Text(
                                    'อา.',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodySmallFamily,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .bodySmallIsCustom,
                                        ),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    'จ.',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodySmallFamily,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .bodySmallIsCustom,
                                        ),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    'อ.',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodySmallFamily,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .bodySmallIsCustom,
                                        ),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    'พ.',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodySmallFamily,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .bodySmallIsCustom,
                                        ),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    'พฤ.',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodySmallFamily,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .bodySmallIsCustom,
                                        ),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    'ศ.',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodySmallFamily,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .bodySmallIsCustom,
                                        ),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    'ส.',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodySmallFamily,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .bodySmallIsCustom,
                                        ),
                                  ),
                                ),
                              ].divide(const SizedBox(width: 16.0)),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  8.0, 0.0, 8.0, 0.0),
                              child: MasonryGridView.builder(
                                physics: const NeverScrollableScrollPhysics(),
                                gridDelegate:
                                    const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 7,
                                ),
                                crossAxisSpacing: 12.0,
                                mainAxisSpacing: () {
                                  if (MediaQuery.sizeOf(context).width <
                                      kBreakpointSmall) {
                                    return 8.0;
                                  } else if (MediaQuery.sizeOf(context).width <
                                      kBreakpointMedium) {
                                    return 8.0;
                                  } else if (MediaQuery.sizeOf(context).width <
                                      kBreakpointLarge) {
                                    return 24.0;
                                  } else {
                                    return 24.0;
                                  }
                                }(),
                                itemCount: 35,
                                padding: const EdgeInsets.fromLTRB(
                                  0,
                                  8.0,
                                  0,
                                  8.0,
                                ),
                                itemBuilder: (context, index) {
                                  return [
                                    () => wrapWithModel(
                                          model: _model.numberCalendarModel36,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: NumberCalendarWidget(
                                            numcalen: '27',
                                            piccorlor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            textcorlor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryText,
                                          ),
                                        ),
                                    () => Container(
                                          child: wrapWithModel(
                                            model: _model.numberCalendarModel37,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: NumberCalendarWidget(
                                              numcalen: '28',
                                              piccorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textcorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                            ),
                                          ),
                                        ),
                                    () => Container(
                                          decoration: const BoxDecoration(),
                                          child: wrapWithModel(
                                            model: _model.numberCalendarModel38,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: NumberCalendarWidget(
                                              numcalen: '29',
                                              piccorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textcorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                            ),
                                          ),
                                        ),
                                    () => Container(
                                          decoration: const BoxDecoration(),
                                          child: wrapWithModel(
                                            model: _model.numberCalendarModel39,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: NumberCalendarWidget(
                                              numcalen: '30',
                                              piccorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textcorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                            ),
                                          ),
                                        ),
                                    () => Container(
                                          decoration: const BoxDecoration(),
                                          child: wrapWithModel(
                                            model: _model.numberCalendarModel40,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: NumberCalendarWidget(
                                              numcalen: '1',
                                              piccorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textcorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                          ),
                                        ),
                                    () => Container(
                                          decoration: const BoxDecoration(),
                                          child: wrapWithModel(
                                            model: _model.numberCalendarModel41,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: NumberCalendarWidget(
                                              numcalen: '2',
                                              piccorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textcorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                          ),
                                        ),
                                    () => Container(
                                          decoration: const BoxDecoration(),
                                          child: wrapWithModel(
                                            model: _model.numberCalendarModel42,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: NumberCalendarWidget(
                                              numcalen: '3',
                                              piccorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textcorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                            ),
                                          ),
                                        ),
                                    () => Container(
                                          decoration: const BoxDecoration(),
                                          child: wrapWithModel(
                                            model: _model.numberCalendarModel43,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: NumberCalendarWidget(
                                              numcalen: '4',
                                              piccorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textcorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                            ),
                                          ),
                                        ),
                                    () => Container(
                                          decoration: const BoxDecoration(),
                                          child: wrapWithModel(
                                            model: _model.numberCalendarModel44,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: NumberCalendarWidget(
                                              numcalen: '5',
                                              piccorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textcorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                          ),
                                        ),
                                    () => Container(
                                          decoration: const BoxDecoration(),
                                          child: wrapWithModel(
                                            model: _model.numberCalendarModel45,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: NumberCalendarWidget(
                                              numcalen: '6',
                                              piccorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textcorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                          ),
                                        ),
                                    () => Container(
                                          decoration: const BoxDecoration(),
                                          child: wrapWithModel(
                                            model: _model.numberCalendarModel46,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: NumberCalendarWidget(
                                              numcalen: '7',
                                              piccorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textcorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                          ),
                                        ),
                                    () => Container(
                                          decoration: const BoxDecoration(),
                                          child: wrapWithModel(
                                            model: _model.numberCalendarModel47,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: NumberCalendarWidget(
                                              numcalen: '8',
                                              piccorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textcorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                          ),
                                        ),
                                    () => Container(
                                          decoration: const BoxDecoration(),
                                          child: wrapWithModel(
                                            model: _model.numberCalendarModel48,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: NumberCalendarWidget(
                                              numcalen: '9',
                                              piccorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textcorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                          ),
                                        ),
                                    () => Container(
                                          decoration: const BoxDecoration(),
                                          child: wrapWithModel(
                                            model: _model.numberCalendarModel49,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: NumberCalendarWidget(
                                              numcalen: '10',
                                              piccorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textcorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                            ),
                                          ),
                                        ),
                                    () => Container(
                                          decoration: const BoxDecoration(),
                                          child: wrapWithModel(
                                            model: _model.numberCalendarModel50,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: NumberCalendarWidget(
                                              numcalen: '11',
                                              piccorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textcorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                            ),
                                          ),
                                        ),
                                    () => Container(
                                          decoration: const BoxDecoration(),
                                          child: wrapWithModel(
                                            model: _model.numberCalendarModel51,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: NumberCalendarWidget(
                                              numcalen: '12',
                                              piccorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textcorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                          ),
                                        ),
                                    () => Container(
                                          decoration: const BoxDecoration(),
                                          child: wrapWithModel(
                                            model: _model.numberCalendarModel52,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: NumberCalendarWidget(
                                              numcalen: '13',
                                              piccorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textcorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                          ),
                                        ),
                                    () => Container(
                                          decoration: const BoxDecoration(),
                                          child: wrapWithModel(
                                            model: _model.numberCalendarModel53,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: NumberCalendarWidget(
                                              numcalen: '14',
                                              piccorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textcorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                          ),
                                        ),
                                    () => Container(
                                          decoration: const BoxDecoration(),
                                          child: wrapWithModel(
                                            model: _model.numberCalendarModel54,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: NumberCalendarWidget(
                                              numcalen: '15',
                                              piccorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textcorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                          ),
                                        ),
                                    () => Container(
                                          decoration: const BoxDecoration(),
                                          child: wrapWithModel(
                                            model: _model.numberCalendarModel55,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: NumberCalendarWidget(
                                              numcalen: '16',
                                              piccorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textcorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                          ),
                                        ),
                                    () => Container(
                                          decoration: const BoxDecoration(),
                                          child: wrapWithModel(
                                            model: _model.numberCalendarModel56,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: NumberCalendarWidget(
                                              numcalen: '17',
                                              piccorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textcorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                            ),
                                          ),
                                        ),
                                    () => Container(
                                          decoration: const BoxDecoration(),
                                          child: wrapWithModel(
                                            model: _model.numberCalendarModel57,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: NumberCalendarWidget(
                                              numcalen: '18',
                                              piccorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textcorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                            ),
                                          ),
                                        ),
                                    () => Container(
                                          decoration: const BoxDecoration(),
                                          child: wrapWithModel(
                                            model: _model.numberCalendarModel58,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: NumberCalendarWidget(
                                              numcalen: '19',
                                              piccorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textcorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                          ),
                                        ),
                                    () => Container(
                                          decoration: const BoxDecoration(),
                                          child: wrapWithModel(
                                            model: _model.numberCalendarModel59,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: NumberCalendarWidget(
                                              numcalen: '20',
                                              piccorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textcorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                          ),
                                        ),
                                    () => Container(
                                          decoration: const BoxDecoration(),
                                          child: wrapWithModel(
                                            model: _model.numberCalendarModel60,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: NumberCalendarWidget(
                                              numcalen: '21',
                                              piccorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textcorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                          ),
                                        ),
                                    () => Container(
                                          decoration: const BoxDecoration(),
                                          child: wrapWithModel(
                                            model: _model.numberCalendarModel61,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: NumberCalendarWidget(
                                              numcalen: '22',
                                              piccorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textcorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                          ),
                                        ),
                                    () => Container(
                                          decoration: const BoxDecoration(),
                                          child: wrapWithModel(
                                            model: _model.numberCalendarModel62,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: NumberCalendarWidget(
                                              numcalen: '23',
                                              piccorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textcorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                          ),
                                        ),
                                    () => Container(
                                          decoration: const BoxDecoration(),
                                          child: wrapWithModel(
                                            model: _model.numberCalendarModel63,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: NumberCalendarWidget(
                                              numcalen: '24',
                                              piccorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textcorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                            ),
                                          ),
                                        ),
                                    () => Container(
                                          decoration: const BoxDecoration(),
                                          child: wrapWithModel(
                                            model: _model.numberCalendarModel64,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: NumberCalendarWidget(
                                              numcalen: '25',
                                              piccorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textcorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                            ),
                                          ),
                                        ),
                                    () => Container(
                                          decoration: const BoxDecoration(),
                                          child: wrapWithModel(
                                            model: _model.numberCalendarModel65,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: NumberCalendarWidget(
                                              numcalen: '26',
                                              piccorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textcorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                          ),
                                        ),
                                    () => Container(
                                          decoration: const BoxDecoration(),
                                          child: wrapWithModel(
                                            model: _model.numberCalendarModel66,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: NumberCalendarWidget(
                                              numcalen: '27',
                                              piccorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textcorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                          ),
                                        ),
                                    () => Container(
                                          decoration: const BoxDecoration(),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              context.pushNamed(
                                                CalendarWidget.routeName,
                                                extra: <String, dynamic>{
                                                  '__transition_info__':
                                                      const TransitionInfo(
                                                    hasTransition: true,
                                                    transitionType:
                                                        PageTransitionType.fade,
                                                  ),
                                                },
                                              );
                                            },
                                            child: wrapWithModel(
                                              model:
                                                  _model.numberCalendarModel67,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: NumberCalendarWidget(
                                                numcalen: '28',
                                                piccorlor:
                                                    FlutterFlowTheme.of(context)
                                                        .customColor5,
                                                textcorlor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                              ),
                                            ),
                                          ),
                                        ),
                                    () => Container(
                                          decoration: const BoxDecoration(),
                                          child: wrapWithModel(
                                            model: _model.numberCalendarModel68,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: NumberCalendarWidget(
                                              numcalen: '29',
                                              piccorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textcorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                          ),
                                        ),
                                    () => Container(
                                          decoration: const BoxDecoration(),
                                          child: wrapWithModel(
                                            model: _model.numberCalendarModel69,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: NumberCalendarWidget(
                                              numcalen: '30',
                                              piccorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textcorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                          ),
                                        ),
                                    () => Container(
                                          decoration: const BoxDecoration(),
                                          child: wrapWithModel(
                                            model: _model.numberCalendarModel70,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: NumberCalendarWidget(
                                              numcalen: '31',
                                              piccorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textcorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                            ),
                                          ),
                                        ),
                                  ][index]();
                                },
                              ),
                            ),
                          ),
                        ]
                            .divide(const SizedBox(height: 16.0))
                            .addToStart(const SizedBox(height: 16.0)),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Text(
                                    valueOrDefault<String>(
                                      dateTimeFormat(
                                          "MMMM/y", _model.datePicked3),
                                      'มิถุนายน 2568',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmallFamily,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .titleSmallIsCustom,
                                        ),
                                  ),
                                ),
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    final datePicked3Date =
                                        await showDatePicker(
                                      context: context,
                                      barrierDismissible: false,
                                      initialDate: getCurrentTimestamp,
                                      firstDate: DateTime(1900),
                                      lastDate: DateTime(2050),
                                    );

                                    if (datePicked3Date != null) {
                                      safeSetState(() {
                                        _model.datePicked3 = DateTime(
                                          datePicked3Date.year,
                                          datePicked3Date.month,
                                          datePicked3Date.day,
                                        );
                                      });
                                    } else if (_model.datePicked3 != null) {
                                      safeSetState(() {
                                        _model.datePicked3 =
                                            getCurrentTimestamp;
                                      });
                                    }
                                  },
                                  child: Icon(
                                    Icons.calendar_month,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    size: 24.0,
                                  ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        await _model.pageViewController
                                            ?.animateToPage(
                                          1,
                                          duration: const Duration(milliseconds: 500),
                                          curve: Curves.ease,
                                        );
                                      },
                                      child: Icon(
                                        Icons.keyboard_arrow_left_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        size: 24.0,
                                      ),
                                    ),
                                    Icon(
                                      Icons.keyboard_arrow_right_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      size: 24.0,
                                    ),
                                  ].divide(const SizedBox(width: 32.0)),
                                ),
                              ].divide(const SizedBox(width: 32.0)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                8.0, 0.0, 8.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Text(
                                    'อา.',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodySmallFamily,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .bodySmallIsCustom,
                                        ),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    'จ.',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodySmallFamily,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .bodySmallIsCustom,
                                        ),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    'อ.',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodySmallFamily,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .bodySmallIsCustom,
                                        ),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    'พ.',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodySmallFamily,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .bodySmallIsCustom,
                                        ),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    'พฤ.',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodySmallFamily,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .bodySmallIsCustom,
                                        ),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    'ศ.',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodySmallFamily,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .bodySmallIsCustom,
                                        ),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    'ส.',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodySmallFamily,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .bodySmallIsCustom,
                                        ),
                                  ),
                                ),
                              ].divide(const SizedBox(width: 16.0)),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  8.0, 0.0, 8.0, 0.0),
                              child: MasonryGridView.builder(
                                gridDelegate:
                                    const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 7,
                                ),
                                crossAxisSpacing: 12.0,
                                mainAxisSpacing: () {
                                  if (MediaQuery.sizeOf(context).width <
                                      kBreakpointSmall) {
                                    return 8.0;
                                  } else if (MediaQuery.sizeOf(context).width <
                                      kBreakpointMedium) {
                                    return 8.0;
                                  } else if (MediaQuery.sizeOf(context).width <
                                      kBreakpointLarge) {
                                    return 24.0;
                                  } else {
                                    return 24.0;
                                  }
                                }(),
                                itemCount: 35,
                                padding: const EdgeInsets.fromLTRB(
                                  0,
                                  8.0,
                                  0,
                                  8.0,
                                ),
                                itemBuilder: (context, index) {
                                  return [
                                    () => wrapWithModel(
                                          model: _model.numberCalendarModel71,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: NumberCalendarWidget(
                                            numcalen: '1',
                                            piccorlor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            textcorlor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryText,
                                          ),
                                        ),
                                    () => Container(
                                          child: wrapWithModel(
                                            model: _model.numberCalendarModel72,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: NumberCalendarWidget(
                                              numcalen: '2',
                                              piccorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textcorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                          ),
                                        ),
                                    () => Container(
                                          decoration: const BoxDecoration(),
                                          child: wrapWithModel(
                                            model: _model.numberCalendarModel73,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: NumberCalendarWidget(
                                              numcalen: '3',
                                              piccorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textcorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                          ),
                                        ),
                                    () => Container(
                                          decoration: const BoxDecoration(),
                                          child: wrapWithModel(
                                            model: _model.numberCalendarModel74,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: NumberCalendarWidget(
                                              numcalen: '4',
                                              piccorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textcorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                          ),
                                        ),
                                    () => Container(
                                          decoration: const BoxDecoration(),
                                          child: wrapWithModel(
                                            model: _model.numberCalendarModel75,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: NumberCalendarWidget(
                                              numcalen: '5',
                                              piccorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textcorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                          ),
                                        ),
                                    () => Container(
                                          decoration: const BoxDecoration(),
                                          child: wrapWithModel(
                                            model: _model.numberCalendarModel76,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: NumberCalendarWidget(
                                              numcalen: '6',
                                              piccorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textcorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                          ),
                                        ),
                                    () => Container(
                                          decoration: const BoxDecoration(),
                                          child: wrapWithModel(
                                            model: _model.numberCalendarModel77,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: NumberCalendarWidget(
                                              numcalen: '7',
                                              piccorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textcorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                            ),
                                          ),
                                        ),
                                    () => Container(
                                          decoration: const BoxDecoration(),
                                          child: wrapWithModel(
                                            model: _model.numberCalendarModel78,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: NumberCalendarWidget(
                                              numcalen: '8',
                                              piccorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textcorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                            ),
                                          ),
                                        ),
                                    () => Container(
                                          decoration: const BoxDecoration(),
                                          child: wrapWithModel(
                                            model: _model.numberCalendarModel79,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: NumberCalendarWidget(
                                              numcalen: '9',
                                              piccorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textcorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                          ),
                                        ),
                                    () => Container(
                                          decoration: const BoxDecoration(),
                                          child: wrapWithModel(
                                            model: _model.numberCalendarModel80,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: NumberCalendarWidget(
                                              numcalen: '10',
                                              piccorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textcorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                          ),
                                        ),
                                    () => Container(
                                          decoration: const BoxDecoration(),
                                          child: wrapWithModel(
                                            model: _model.numberCalendarModel81,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: NumberCalendarWidget(
                                              numcalen: '11',
                                              piccorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textcorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                          ),
                                        ),
                                    () => Container(
                                          decoration: const BoxDecoration(),
                                          child: wrapWithModel(
                                            model: _model.numberCalendarModel82,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: NumberCalendarWidget(
                                              numcalen: '12',
                                              piccorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textcorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                          ),
                                        ),
                                    () => Container(
                                          decoration: const BoxDecoration(),
                                          child: wrapWithModel(
                                            model: _model.numberCalendarModel83,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: NumberCalendarWidget(
                                              numcalen: '13',
                                              piccorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textcorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                          ),
                                        ),
                                    () => Container(
                                          decoration: const BoxDecoration(),
                                          child: wrapWithModel(
                                            model: _model.numberCalendarModel84,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: NumberCalendarWidget(
                                              numcalen: '14',
                                              piccorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textcorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                            ),
                                          ),
                                        ),
                                    () => Container(
                                          decoration: const BoxDecoration(),
                                          child: wrapWithModel(
                                            model: _model.numberCalendarModel85,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: NumberCalendarWidget(
                                              numcalen: '15',
                                              piccorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textcorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                            ),
                                          ),
                                        ),
                                    () => Container(
                                          decoration: const BoxDecoration(),
                                          child: wrapWithModel(
                                            model: _model.numberCalendarModel86,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: NumberCalendarWidget(
                                              numcalen: '16',
                                              piccorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textcorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                          ),
                                        ),
                                    () => Container(
                                          decoration: const BoxDecoration(),
                                          child: wrapWithModel(
                                            model: _model.numberCalendarModel87,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: NumberCalendarWidget(
                                              numcalen: '17',
                                              piccorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textcorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                          ),
                                        ),
                                    () => Container(
                                          decoration: const BoxDecoration(),
                                          child: wrapWithModel(
                                            model: _model.numberCalendarModel88,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: NumberCalendarWidget(
                                              numcalen: '18',
                                              piccorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textcorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                          ),
                                        ),
                                    () => Container(
                                          decoration: const BoxDecoration(),
                                          child: wrapWithModel(
                                            model: _model.numberCalendarModel89,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: NumberCalendarWidget(
                                              numcalen: '19',
                                              piccorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textcorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                          ),
                                        ),
                                    () => Container(
                                          decoration: const BoxDecoration(),
                                          child: wrapWithModel(
                                            model: _model.numberCalendarModel90,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: NumberCalendarWidget(
                                              numcalen: '20',
                                              piccorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textcorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                          ),
                                        ),
                                    () => Container(
                                          decoration: const BoxDecoration(),
                                          child: wrapWithModel(
                                            model: _model.numberCalendarModel91,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: NumberCalendarWidget(
                                              numcalen: '21',
                                              piccorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textcorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                            ),
                                          ),
                                        ),
                                    () => Container(
                                          decoration: const BoxDecoration(),
                                          child: wrapWithModel(
                                            model: _model.numberCalendarModel92,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: NumberCalendarWidget(
                                              numcalen: '22',
                                              piccorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textcorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                            ),
                                          ),
                                        ),
                                    () => Container(
                                          decoration: const BoxDecoration(),
                                          child: wrapWithModel(
                                            model: _model.numberCalendarModel93,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: NumberCalendarWidget(
                                              numcalen: '23',
                                              piccorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textcorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                          ),
                                        ),
                                    () => Container(
                                          decoration: const BoxDecoration(),
                                          child: wrapWithModel(
                                            model: _model.numberCalendarModel94,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: NumberCalendarWidget(
                                              numcalen: '24',
                                              piccorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textcorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                          ),
                                        ),
                                    () => Container(
                                          decoration: const BoxDecoration(),
                                          child: wrapWithModel(
                                            model: _model.numberCalendarModel95,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: NumberCalendarWidget(
                                              numcalen: '25',
                                              piccorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textcorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                          ),
                                        ),
                                    () => Container(
                                          decoration: const BoxDecoration(),
                                          child: wrapWithModel(
                                            model: _model.numberCalendarModel96,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: NumberCalendarWidget(
                                              numcalen: '26',
                                              piccorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textcorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                          ),
                                        ),
                                    () => Container(
                                          decoration: const BoxDecoration(),
                                          child: wrapWithModel(
                                            model: _model.numberCalendarModel97,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: NumberCalendarWidget(
                                              numcalen: '27',
                                              piccorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textcorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                          ),
                                        ),
                                    () => Container(
                                          decoration: const BoxDecoration(),
                                          child: wrapWithModel(
                                            model: _model.numberCalendarModel98,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: NumberCalendarWidget(
                                              numcalen: '28',
                                              piccorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textcorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                            ),
                                          ),
                                        ),
                                    () => Container(
                                          decoration: const BoxDecoration(),
                                          child: wrapWithModel(
                                            model: _model.numberCalendarModel99,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: NumberCalendarWidget(
                                              numcalen: '29',
                                              piccorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textcorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                            ),
                                          ),
                                        ),
                                    () => Container(
                                          decoration: const BoxDecoration(),
                                          child: wrapWithModel(
                                            model:
                                                _model.numberCalendarModel100,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: NumberCalendarWidget(
                                              numcalen: '30',
                                              piccorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textcorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                          ),
                                        ),
                                    () => Container(
                                          decoration: const BoxDecoration(),
                                          child: wrapWithModel(
                                            model:
                                                _model.numberCalendarModel101,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: NumberCalendarWidget(
                                              numcalen: '1',
                                              piccorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textcorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                            ),
                                          ),
                                        ),
                                    () => Container(
                                          decoration: const BoxDecoration(),
                                          child: wrapWithModel(
                                            model:
                                                _model.numberCalendarModel102,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: NumberCalendarWidget(
                                              numcalen: '2',
                                              piccorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textcorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                            ),
                                          ),
                                        ),
                                    () => Container(
                                          decoration: const BoxDecoration(),
                                          child: wrapWithModel(
                                            model:
                                                _model.numberCalendarModel103,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: NumberCalendarWidget(
                                              numcalen: '3',
                                              piccorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textcorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                            ),
                                          ),
                                        ),
                                    () => Container(
                                          decoration: const BoxDecoration(),
                                          child: wrapWithModel(
                                            model:
                                                _model.numberCalendarModel104,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: NumberCalendarWidget(
                                              numcalen: '4',
                                              piccorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textcorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                            ),
                                          ),
                                        ),
                                    () => Container(
                                          decoration: const BoxDecoration(),
                                          child: wrapWithModel(
                                            model:
                                                _model.numberCalendarModel105,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: NumberCalendarWidget(
                                              numcalen: '5',
                                              piccorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textcorlor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                            ),
                                          ),
                                        ),
                                  ][index]();
                                },
                              ),
                            ),
                          ),
                        ]
                            .divide(const SizedBox(height: 16.0))
                            .addToStart(const SizedBox(height: 16.0)),
                      ),
                    ],
                  ),
                ),
              ),
            ].divide(const SizedBox(height: 16.0)),
          ),
        ],
      ),
    );
  }
}
