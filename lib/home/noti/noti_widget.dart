import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/home/widget/news/news_widget.dart';
import '/home/widget/visit_done/visit_done_widget.dart';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'noti_model.dart';
export 'noti_model.dart';

class NotiWidget extends StatefulWidget {
  const NotiWidget({super.key});

  static String routeName = 'noti';
  static String routePath = '/noti';

  @override
  State<NotiWidget> createState() => _NotiWidgetState();
}

class _NotiWidgetState extends State<NotiWidget> with TickerProviderStateMixin {
  late NotiModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NotiModel());

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
            context.pop();
          },
        ),
        title: Text(
          'แจ้งเตือน',
          style: FlutterFlowTheme.of(context).titleMedium.override(
                fontFamily: FlutterFlowTheme.of(context).titleMediumFamily,
                color: FlutterFlowTheme.of(context).secondaryBackground,
                letterSpacing: 0.0,
                useGoogleFonts:
                    !FlutterFlowTheme.of(context).titleMediumIsCustom,
              ),
        ),
        actions: [],
        flexibleSpace: FlexibleSpaceBar(
          background: Opacity(
            opacity: 0.3,
            child: Align(
              alignment: AlignmentDirectional(1.0, 1.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/healflow-1ya11l/assets/5yfb9q5kks4p/noti.png',
                  fit: BoxFit.cover,
                  alignment: Alignment(1.0, 1.0),
                ),
              ),
            ),
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(8.0),
          child: Container(),
        ),
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
              blurRadius: 8.0,
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
            Expanded(
              child: Column(
                children: [
                  Align(
                    alignment: Alignment(0.0, 0),
                    child: FlutterFlowButtonTabBar(
                      useToggleButtonStyle: true,
                      labelStyle: FlutterFlowTheme.of(context)
                          .labelMedium
                          .override(
                            fontFamily:
                                FlutterFlowTheme.of(context).labelMediumFamily,
                            letterSpacing: 0.0,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .labelMediumIsCustom,
                          ),
                      unselectedLabelStyle: FlutterFlowTheme.of(context)
                          .labelMedium
                          .override(
                            fontFamily:
                                FlutterFlowTheme.of(context).labelMediumFamily,
                            letterSpacing: 0.0,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .labelMediumIsCustom,
                          ),
                      labelColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      unselectedLabelColor:
                          FlutterFlowTheme.of(context).secondaryText,
                      backgroundColor: FlutterFlowTheme.of(context).primary,
                      unselectedBackgroundColor: Color(0xFFE5EAF6),
                      unselectedBorderColor:
                          FlutterFlowTheme.of(context).primaryBackground,
                      borderWidth: 2.0,
                      borderRadius: 26.0,
                      elevation: 0.0,
                      buttonMargin:
                          EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                      padding: EdgeInsets.all(4.0),
                      tabs: [
                        Tab(
                          text: 'ทั้งหมด',
                        ),
                        Tab(
                          text: 'งานใหม่',
                        ),
                        Tab(
                          text: 'ข่าวสาร',
                        ),
                      ],
                      controller: _model.tabBarController,
                      onTap: (i) async {
                        [() async {}, () async {}, () async {}][i]();
                      },
                    ),
                  ),
                  Expanded(
                    child: TabBarView(
                      controller: _model.tabBarController,
                      children: [
                        ListView(
                          padding: EdgeInsets.fromLTRB(
                            0,
                            16.0,
                            0,
                            124.0,
                          ),
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '09 กุมภาพันธ์ 2026',
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
                                      borderRadius: BorderRadius.circular(24.0),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            context.pushNamed(
                                                DetailesPatientNewtaskWidget
                                                    .routeName);
                                          },
                                          child: wrapWithModel(
                                            model: _model.visitDoneModel1,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: VisitDoneWidget(
                                              iconse: Icon(
                                                Icons.medical_services_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                size: 10.0,
                                              ),
                                              colore: Color(0xFFFF8600),
                                              textre: 'นายสุขภาพดี จิตแจ่มใส',
                                              picture:
                                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/healflow-1ya11l/assets/m7xdpmwhlgki/girl1.png',
                                              gradientone: Color(0xFF44B0FF),
                                              gradienttwo: Color(0xFF9ACEF6),
                                              textcolor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              pincolor:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                            ),
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
                                              Icons.medical_services_rounded,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              size: 10.0,
                                            ),
                                            colore: Color(0xFFFF8600),
                                            textre: 'นางรัตนา ศรีสุข',
                                            picture:
                                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/healflow-1ya11l/assets/16ztnqju67da/student_girl.png',
                                            gradientone: Color(0xFF44B0FF),
                                            gradienttwo: Color(0xFF9ACEF6),
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
                                        InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            context.pushNamed(
                                                NewsdetailWidget.routeName);
                                          },
                                          child: wrapWithModel(
                                            model: _model.newsModel1,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: NewsWidget(
                                              iconse: Icon(
                                                Icons.newspaper,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                size: 12.0,
                                              ),
                                              colore:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              textre:
                                                  '5 ท่าบริหาร \"ข้อเข่าเสื่อม\" ทำง่าย แค่วันละ 10 นาที!',
                                              picture:
                                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/healflow-1ya11l/assets/fcs86qh2eojn/pretty-yogi.jpg',
                                              gradientone:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              gradienttwo:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              textcolor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              pincolor:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ].divide(SizedBox(height: 8.0)),
                              ),
                            ),
                          ].divide(SizedBox(height: 32.0)),
                        ),
                        ListView(
                          padding: EdgeInsets.fromLTRB(
                            0,
                            16.0,
                            0,
                            124.0,
                          ),
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '09 กุมภาพันธ์ 2026',
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
                                      borderRadius: BorderRadius.circular(24.0),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            context.pushNamed(
                                                DetailesPatientNewtaskWidget
                                                    .routeName);
                                          },
                                          child: wrapWithModel(
                                            model: _model.visitDoneModel3,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: VisitDoneWidget(
                                              iconse: Icon(
                                                Icons.medical_services_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                size: 10.0,
                                              ),
                                              colore: Color(0xFFFF8600),
                                              textre: 'นายสุขภาพดี จิตแจ่มใส',
                                              picture:
                                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/healflow-1ya11l/assets/m7xdpmwhlgki/girl1.png',
                                              gradientone: Color(0xFF44B0FF),
                                              gradienttwo: Color(0xFF9ACEF6),
                                              textcolor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              pincolor:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                            ),
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
                                          model: _model.visitDoneModel4,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: VisitDoneWidget(
                                            iconse: Icon(
                                              Icons.medical_services_rounded,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              size: 10.0,
                                            ),
                                            colore: Color(0xFFFF8600),
                                            textre: 'นางรัตนา ศรีสุข',
                                            picture:
                                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/healflow-1ya11l/assets/16ztnqju67da/student_girl.png',
                                            gradientone: Color(0xFF44B0FF),
                                            gradienttwo: Color(0xFF9ACEF6),
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
                                ].divide(SizedBox(height: 8.0)),
                              ),
                            ),
                          ].divide(SizedBox(height: 32.0)),
                        ),
                        ListView(
                          padding: EdgeInsets.fromLTRB(
                            0,
                            16.0,
                            0,
                            124.0,
                          ),
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '09 กุมภาพันธ์ 2026',
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
                                      borderRadius: BorderRadius.circular(24.0),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            context.pushNamed(
                                                NewsdetailWidget.routeName);
                                          },
                                          child: wrapWithModel(
                                            model: _model.newsModel2,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: NewsWidget(
                                              iconse: Icon(
                                                Icons.newspaper,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                size: 12.0,
                                              ),
                                              colore:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              textre:
                                                  '5 ท่าบริหาร \"ข้อเข่าเสื่อม\" ทำง่าย แค่วันละ 10 นาที!',
                                              picture:
                                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/healflow-1ya11l/assets/fcs86qh2eojn/pretty-yogi.jpg',
                                              gradientone:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              gradienttwo:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              textcolor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              pincolor:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ].divide(SizedBox(height: 8.0)),
                              ),
                            ),
                          ].divide(SizedBox(height: 32.0)),
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
