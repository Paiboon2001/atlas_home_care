import '/components/thai_date_picker_widget.dart';
import '/planvisit_home/widget/search_patient/search_patient_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/home/widget/visit_done/visit_done_widget.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'history_model.dart';
export 'history_model.dart';

class HistoryWidget extends StatefulWidget {
  const HistoryWidget({super.key});

  static String routeName = 'History';
  static String routePath = '/history';

  @override
  State<HistoryWidget> createState() => _HistoryWidgetState();
}

class _HistoryWidgetState extends State<HistoryWidget>
    with TickerProviderStateMixin {
  late HistoryModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  /// Selected status filter shown in the status pill.
  static const List<String> _statusOptions = [
    'ทั้งหมด',
    'งานสำเร็จ',
    'ยกเลิกงาน',
    'ปฏิเสธงาน',
  ];
  String _statusFilter = _statusOptions.first;

  /// Status filter bottom sheet with a drag handle and the status options.
  Future<void> _openStatusFilter() async {
    await showModalBottomSheet(
      context: context,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24.0)),
      ),
      builder: (sheetContext) {
        return SafeArea(
          top: false,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding:
                    const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 20.0),
                child: Center(
                  child: Container(
                    width: 40.0,
                    height: 4.0,
                    decoration: BoxDecoration(
                      color: const Color(0xFFD0D8E0),
                      borderRadius: BorderRadius.circular(100.0),
                    ),
                  ),
                ),
              ),
              for (final opt in _statusOptions)
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () {
                    safeSetState(() => _statusFilter = opt);
                    Navigator.pop(sheetContext);
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 14.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            opt,
                            style:
                                FlutterFlowTheme.of(context).bodyLarge.override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyLargeFamily,
                                      color: opt == _statusFilter
                                          ? FlutterFlowTheme.of(context).primary
                                          : FlutterFlowTheme.of(context)
                                              .primaryText,
                                      fontSize: 16.0,
                                      letterSpacing: 0.0,
                                      fontWeight: opt == _statusFilter
                                          ? FontWeight.w600
                                          : FontWeight.normal,
                                      useGoogleFonts: !FlutterFlowTheme.of(
                                              context)
                                          .bodyLargeIsCustom,
                                    ),
                          ),
                        ),
                        Icon(
                          opt == _statusFilter
                              ? Icons.radio_button_checked
                              : Icons.radio_button_unchecked,
                          color: opt == _statusFilter
                              ? FlutterFlowTheme.of(context).primary
                              : FlutterFlowTheme.of(context).secondaryText,
                          size: 22.0,
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        );
      },
    );
  }

  /// Filter pill: white rounded-100 chip with a [#D0D8E0] outline, a
  /// Sarabun 14 label, and a muted chevron-down. Wrap it in an InkWell to
  /// make it tappable.
  Widget _filterPill(BuildContext context, String text) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(100.0),
        border: Border.all(color: const Color(0xFFD0D8E0), width: 1.0),
      ),
      padding: const EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 12.0, 8.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            text,
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                  color: const Color(0xFF041228),
                  fontSize: 14.0,
                  letterSpacing: -0.14,
                  useGoogleFonts:
                      !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                ),
          ),
          const SizedBox(width: 10.0),
          const Icon(
            Icons.keyboard_arrow_down_rounded,
            color: Color(0xFF8A8F97),
            size: 24.0,
          ),
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HistoryModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 3,
      initialIndex: 0,
    )..addListener(() => safeSetState(() {}));

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
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30.0,
          borderWidth: 1.0,
          buttonSize: 44.0,
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.white,
            size: 18.0,
          ),
          onPressed: () async {
            context.pop();
          },
        ),
        title: Text(
          'ประวัติการทำรายการ',
          style: FlutterFlowTheme.of(context).titleLarge.override(
                fontFamily: FlutterFlowTheme.of(context).titleLargeFamily,
                color: FlutterFlowTheme.of(context).secondaryBackground,
                letterSpacing: 0.0,
                useGoogleFonts:
                    !FlutterFlowTheme.of(context).titleLargeIsCustom,
              ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
            child: InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                // Capture the status-bar inset here; inside the modal
                // (useSafeArea: false) MediaQuery strips the top padding.
                final topInset = MediaQuery.viewPaddingOf(context).top;
                await showModalBottomSheet(
                  isScrollControlled: true,
                  backgroundColor: Colors.transparent,
                  enableDrag: false,
                  useSafeArea: false,
                  context: context,
                  builder: (context) {
                    return SearchPatientWidget(topInset: topInset);
                  },
                ).then((value) => safeSetState(() {}));
              },
              child: Icon(
                Icons.search_rounded,
                color: FlutterFlowTheme.of(context).secondaryBackground,
                size: 24.0,
              ),
            ),
          ),
        ],
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primaryBackground,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(32.0),
            topRight: Radius.circular(32.0),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: ListView(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 32.0),
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 16.0, 16.0, 24.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {},
                                child: const Icon(
                                  Icons.tune_rounded,
                                  color: Color(0xFF041228),
                                  size: 24.0,
                                ),
                              ),
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  await _openStatusFilter();
                                },
                                child: _filterPill(context, _statusFilter),
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
                                              yearOnly: true,
                                              initialDate: _model.datePicked1 ??
                                                  getCurrentTimestamp,
                                              firstDate: DateTime(1900),
                                              lastDate: getCurrentTimestamp,
                                              onChanged: (newDateTime) =>
                                                  safeSetState(() {
                                                _model.datePicked1 =
                                                    newDateTime;
                                              }),
                                            ),
                                          ),
                                        );
                                      });
                                },
                                child: _filterPill(
                                  context,
                                  _model.datePicked1 != null
                                      ? '${_model.datePicked1!.year + 543}'
                                      : '2569',
                                ),
                              ),
                            ].divide(const SizedBox(width: 16.0)),
                          ),
                        ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 32.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '12 กุมภาพันธ์',
                                    style: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmallFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .titleSmallIsCustom,
                                        ),
                                  ),
                                  Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      boxShadow: const [
                                        BoxShadow(
                                          blurRadius: 8.0,
                                          color: Color(0x145F9ED6),
                                          offset: Offset(
                                            0.0,
                                            0.0,
                                          ),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(24.0),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        wrapWithModel(
                                          model: _model.visitDoneModel1,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: VisitDoneWidget(
                                            iconse: Icon(
                                              Icons.check_rounded,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              size: 12.0,
                                            ),
                                            colore: FlutterFlowTheme.of(context)
                                                .success,
                                            textre: 'นางรัตนาการ สนามฉันท์',
                                            picture:
                                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/healflow-1ya11l/assets/m7xdpmwhlgki/girl1.png',
                                            gradientone: const Color(0xFF79DF9E),
                                            gradienttwo: const Color(0xFF79DF9E),
                                            textcolor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryText,
                                            pincolor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                          ),
                                        ),
                                        Divider(
                                          height: 1.0,
                                          thickness: 1.0,
                                          indent: () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                kBreakpointSmall) {
                                              return 68.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointMedium) {
                                              return 68.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointLarge) {
                                              return 88.0;
                                            } else {
                                              return 88.0;
                                            }
                                          }(),
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                        ),
                                        wrapWithModel(
                                          model: _model.visitDoneModel2,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: VisitDoneWidget(
                                            iconse: Icon(
                                              Icons.check_rounded,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              size: 12.0,
                                            ),
                                            colore: FlutterFlowTheme.of(context)
                                                .success,
                                            textre: 'นางสาวกนกร อมรศรี',
                                            picture:
                                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/healflow-1ya11l/assets/16ztnqju67da/student_girl.png',
                                            gradientone: const Color(0xFF79DF9E),
                                            gradienttwo: const Color(0xFF79DF9E),
                                            textcolor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryText,
                                            pincolor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ].divide(const SizedBox(height: 8.0)),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 32.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '11 กุมภาพันธ์',
                                    style: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmallFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .titleSmallIsCustom,
                                        ),
                                  ),
                                  Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      boxShadow: const [
                                        BoxShadow(
                                          blurRadius: 8.0,
                                          color: Color(0x145F9ED6),
                                          offset: Offset(
                                            0.0,
                                            0.0,
                                          ),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(24.0),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        wrapWithModel(
                                          model: _model.visitDoneModel3,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: VisitDoneWidget(
                                            iconse: Icon(
                                              Icons.check_rounded,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              size: 12.0,
                                            ),
                                            colore: FlutterFlowTheme.of(context)
                                                .success,
                                            textre: 'นายฉันทยนา สนามฉันท์',
                                            picture:
                                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/healflow-1ya11l/assets/4fytd19jk0eu/callege_Boy.png',
                                            gradientone: const Color(0xFF79DF9E),
                                            gradienttwo: const Color(0xFF79DF9E),
                                            textcolor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryText,
                                            pincolor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ].divide(const SizedBox(height: 8.0)),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 32.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '11 กุมภาพันธ์',
                                    style: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmallFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .titleSmallIsCustom,
                                        ),
                                  ),
                                  Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      boxShadow: const [
                                        BoxShadow(
                                          blurRadius: 8.0,
                                          color: Color(0x145F9ED6),
                                          offset: Offset(
                                            0.0,
                                            0.0,
                                          ),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(24.0),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        wrapWithModel(
                                          model: _model.visitDoneModel6,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: VisitDoneWidget(
                                            iconse: Icon(
                                              Icons.cached_sharp,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              size: 12.0,
                                            ),
                                            colore: const Color(0xFFFFC200),
                                            textre: 'นางสาวสุรีพร ศาสนสภาน',
                                            picture:
                                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/healflow-1ya11l/assets/0a355akt4mcc/callege_Girl.png',
                                            gradientone: const Color(0xFF44B0FF),
                                            gradienttwo: const Color(0xFF9ACEF6),
                                            textcolor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryText,
                                            pincolor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ].divide(const SizedBox(height: 8.0)),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 32.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '09 กุมภาพันธ์',
                                    style: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmallFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .titleSmallIsCustom,
                                        ),
                                  ),
                                  Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      boxShadow: const [
                                        BoxShadow(
                                          blurRadius: 8.0,
                                          color: Color(0x145F9ED6),
                                          offset: Offset(
                                            0.0,
                                            0.0,
                                          ),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(24.0),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        wrapWithModel(
                                          model: _model.visitDoneModel7,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: VisitDoneWidget(
                                            iconse: Icon(
                                              Icons.close_rounded,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              size: 12.0,
                                            ),
                                            colore: FlutterFlowTheme.of(context)
                                                .error,
                                            textre: 'นางสาวศิริกาญจนา มหานทีกร',
                                            picture:
                                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/healflow-1ya11l/assets/m7xdpmwhlgki/girl1.png',
                                            gradientone: const Color(0xFF44B0FF),
                                            gradienttwo: const Color(0xFF9ACEF6),
                                            textcolor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryText,
                                            pincolor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                          ),
                                        ),
                                        Divider(
                                          height: 1.0,
                                          thickness: 1.0,
                                          indent: () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                kBreakpointSmall) {
                                              return 68.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointMedium) {
                                              return 68.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointLarge) {
                                              return 88.0;
                                            } else {
                                              return 88.0;
                                            }
                                          }(),
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                        ),
                                        wrapWithModel(
                                          model: _model.visitDoneModel8,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: VisitDoneWidget(
                                            iconse: Icon(
                                              Icons.close_rounded,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              size: 12.0,
                                            ),
                                            colore: FlutterFlowTheme.of(context)
                                                .error,
                                            textre: 'นางรัตนา ศรีสุข',
                                            picture:
                                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/healflow-1ya11l/assets/0a355akt4mcc/callege_Girl.png',
                                            gradientone: const Color(0xFF44B0FF),
                                            gradienttwo: const Color(0xFF9ACEF6),
                                            textcolor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryText,
                                            pincolor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ].divide(const SizedBox(height: 8.0)),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '06 กุมภาพันธ์',
                                    style: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmallFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .titleSmallIsCustom,
                                        ),
                                  ),
                                  Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      boxShadow: const [
                                        BoxShadow(
                                          blurRadius: 8.0,
                                          color: Color(0x145F9ED6),
                                          offset: Offset(
                                            0.0,
                                            0.0,
                                          ),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(24.0),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        wrapWithModel(
                                          model: _model.visitDoneModel4,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: VisitDoneWidget(
                                            iconse: Icon(
                                              Icons.check_rounded,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              size: 12.0,
                                            ),
                                            colore: FlutterFlowTheme.of(context)
                                                .success,
                                            textre: 'นายกิริยากร ธนสานสมบัติ',
                                            picture:
                                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/healflow-1ya11l/assets/4mq6lu0xx1l8/oldman1.png',
                                            gradientone: const Color(0xFF79DF9E),
                                            gradienttwo: const Color(0xFF79DF9E),
                                            textcolor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryText,
                                            pincolor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                          ),
                                        ),
                                        Divider(
                                          height: 1.0,
                                          thickness: 1.0,
                                          indent: () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                kBreakpointSmall) {
                                              return 68.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointMedium) {
                                              return 68.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointLarge) {
                                              return 88.0;
                                            } else {
                                              return 88.0;
                                            }
                                          }(),
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                        ),
                                        wrapWithModel(
                                          model: _model.visitDoneModel5,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: VisitDoneWidget(
                                            iconse: Icon(
                                              Icons.check_rounded,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              size: 12.0,
                                            ),
                                            colore: FlutterFlowTheme.of(context)
                                                .success,
                                            textre: 'นางหทัยรัตน์ เจริญปุระ',
                                            picture:
                                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/healflow-1ya11l/assets/9e97rkkhahtb/oldgirl1.png',
                                            gradientone: const Color(0xFF79DF9E),
                                            gradienttwo: const Color(0xFF79DF9E),
                                            textcolor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryText,
                                            pincolor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ].divide(const SizedBox(height: 8.0)),
                              ),
                            ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
