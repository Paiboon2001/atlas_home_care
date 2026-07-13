import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/homevisitlist/widget/item_house_hold_members/item_house_hold_members_widget.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'total_parents_model.dart';
export 'total_parents_model.dart';

class TotalParentsWidget extends StatefulWidget {
  const TotalParentsWidget({super.key});

  @override
  State<TotalParentsWidget> createState() => _TotalParentsWidgetState();
}

class _TotalParentsWidgetState extends State<TotalParentsWidget> {
  late TotalParentsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TotalParentsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          width: double.infinity,
          height: 104.0,
          decoration: const BoxDecoration(),
          child: ListView(
            padding: const EdgeInsets.fromLTRB(
              16.0,
              0,
              16.0,
              0,
            ),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: [
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.pushNamed(AddHomememberWidget.routeName);
                },
                child: Container(
                  height: double.infinity,
                  decoration: const BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(1.0),
                        child: Container(
                          width: 80.0,
                          height: 80.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).alternate,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.add_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 32.0,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          'เพิ่มสมาชิก',
                          textAlign: TextAlign.center,
                          maxLines: 1,
                          style: GoogleFonts.sarabun(
                            color: FlutterFlowTheme.of(context).primaryText,
                            fontWeight: FontWeight.normal,
                            fontSize: 12.0,
                            height: 1.7,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  FFAppState().parents = 1;
                  safeSetState(() {});
                },
                child: Container(
                  height: double.infinity,
                  decoration: const BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100.0),
                          border: Border.all(
                            color: valueOrDefault<Color>(
                              FFAppState().parents == 1
                                  ? FlutterFlowTheme.of(context).error
                                  : FlutterFlowTheme.of(context)
                                      .primaryBackground,
                              FlutterFlowTheme.of(context).primaryBackground,
                            ),
                            width: 1.0,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: Container(
                            width: 80.0,
                            height: 80.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: Image.asset(
                                  'assets/images/man1.png',
                                ).image,
                              ),
                              gradient: LinearGradient(
                                colors: [
                                  FlutterFlowTheme.of(context).accent1,
                                  FlutterFlowTheme.of(context).primary
                                ],
                                stops: const [0.0, 1.0],
                                begin: const AlignmentDirectional(0.0, -1.0),
                                end: const AlignmentDirectional(0, 1.0),
                              ),
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                width: 1.0,
                              ),
                            ),
                            child: Stack(
                              children: [
                                Align(
                                  alignment: const AlignmentDirectional(1.0, 1.0),
                                  child: Container(
                                    width: 24.0,
                                    height: 24.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context).error,
                                      shape: BoxShape.circle,
                                    ),
                                    child: Align(
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      child: Icon(
                                        Icons.airline_seat_flat_angled_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        size: 16.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          'ทดลอง ทดสอบ',
                          textAlign: TextAlign.center,
                          maxLines: 1,
                          style: GoogleFonts.sarabun(
                            color: valueOrDefault<Color>(
                              FFAppState().parents == 1
                                  ? FlutterFlowTheme.of(context).error
                                  : FlutterFlowTheme.of(context).primaryText,
                              FlutterFlowTheme.of(context).primaryText,
                            ),
                            fontWeight: FontWeight.normal,
                            fontSize: 12.0,
                            height: 1.7,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  FFAppState().parents = 2;
                  safeSetState(() {});
                },
                child: Container(
                  height: double.infinity,
                  decoration: const BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100.0),
                          border: Border.all(
                            color: valueOrDefault<Color>(
                              FFAppState().parents == 2
                                  ? FlutterFlowTheme.of(context).primary
                                  : FlutterFlowTheme.of(context)
                                      .primaryBackground,
                              FlutterFlowTheme.of(context).primaryBackground,
                            ),
                            width: 1.0,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: Container(
                            width: 80.0,
                            height: 80.0,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  FlutterFlowTheme.of(context).accent1,
                                  FlutterFlowTheme.of(context).primary
                                ],
                                stops: const [0.0, 1.0],
                                begin: const AlignmentDirectional(0.0, -1.0),
                                end: const AlignmentDirectional(0, 1.0),
                              ),
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                width: 1.0,
                              ),
                            ),
                            child: Stack(
                              children: [
                                Container(
                                  width: 200.0,
                                  height: 200.0,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.asset(
                                    'assets/images/girl1.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          'ทดลอง ทดสอบ',
                          textAlign: TextAlign.center,
                          maxLines: 1,
                          style: GoogleFonts.sarabun(
                            color: valueOrDefault<Color>(
                              FFAppState().parents == 2
                                  ? FlutterFlowTheme.of(context).primary
                                  : FlutterFlowTheme.of(context).primaryText,
                              FlutterFlowTheme.of(context).primaryText,
                            ),
                            fontWeight: FontWeight.normal,
                            fontSize: 12.0,
                            height: 1.7,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  FFAppState().parents = 3;
                  safeSetState(() {});
                },
                child: Container(
                  height: double.infinity,
                  decoration: const BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100.0),
                          border: Border.all(
                            color: valueOrDefault<Color>(
                              FFAppState().parents == 3
                                  ? FlutterFlowTheme.of(context).primary
                                  : FlutterFlowTheme.of(context)
                                      .primaryBackground,
                              FlutterFlowTheme.of(context).primaryBackground,
                            ),
                            width: 1.0,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: Container(
                            width: 80.0,
                            height: 80.0,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  FlutterFlowTheme.of(context).accent1,
                                  FlutterFlowTheme.of(context).primary
                                ],
                                stops: const [0.0, 1.0],
                                begin: const AlignmentDirectional(0.0, -1.0),
                                end: const AlignmentDirectional(0, 1.0),
                              ),
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                width: 1.0,
                              ),
                            ),
                            child: Stack(
                              children: [
                                Container(
                                  width: 200.0,
                                  height: 200.0,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.asset(
                                    'assets/images/oldgirl1.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          'ทดลอง ทดสอบ',
                          textAlign: TextAlign.center,
                          maxLines: 1,
                          style: GoogleFonts.sarabun(
                            color: valueOrDefault<Color>(
                              FFAppState().parents == 3
                                  ? FlutterFlowTheme.of(context).primary
                                  : FlutterFlowTheme.of(context).primaryText,
                              FlutterFlowTheme.of(context).primaryText,
                            ),
                            fontWeight: FontWeight.normal,
                            fontSize: 12.0,
                            height: 1.7,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  FFAppState().parents = 4;
                  safeSetState(() {});
                },
                child: Container(
                  height: double.infinity,
                  decoration: const BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100.0),
                          border: Border.all(
                            color: valueOrDefault<Color>(
                              FFAppState().parents == 4
                                  ? FlutterFlowTheme.of(context).primary
                                  : FlutterFlowTheme.of(context)
                                      .primaryBackground,
                              FlutterFlowTheme.of(context).primaryBackground,
                            ),
                            width: 1.0,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: Container(
                            width: 80.0,
                            height: 80.0,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  FlutterFlowTheme.of(context).accent1,
                                  FlutterFlowTheme.of(context).primary
                                ],
                                stops: const [0.0, 1.0],
                                begin: const AlignmentDirectional(0.0, -1.0),
                                end: const AlignmentDirectional(0, 1.0),
                              ),
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                width: 1.0,
                              ),
                            ),
                            child: Stack(
                              children: [
                                Container(
                                  width: 200.0,
                                  height: 200.0,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.asset(
                                    'assets/images/oldman1.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          'ทดลอง ทดสอบ',
                          textAlign: TextAlign.center,
                          maxLines: 1,
                          style: GoogleFonts.sarabun(
                            color: valueOrDefault<Color>(
                              FFAppState().parents == 4
                                  ? FlutterFlowTheme.of(context).primary
                                  : FlutterFlowTheme.of(context).primaryText,
                              FlutterFlowTheme.of(context).primaryText,
                            ),
                            fontWeight: FontWeight.normal,
                            fontSize: 12.0,
                            height: 1.7,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  FFAppState().parents = 5;
                  safeSetState(() {});
                },
                child: Container(
                  height: double.infinity,
                  decoration: const BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100.0),
                          border: Border.all(
                            color: valueOrDefault<Color>(
                              FFAppState().parents == 5
                                  ? FlutterFlowTheme.of(context).primary
                                  : FlutterFlowTheme.of(context)
                                      .primaryBackground,
                              FlutterFlowTheme.of(context).primaryBackground,
                            ),
                            width: 1.0,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: Container(
                            width: 80.0,
                            height: 80.0,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  FlutterFlowTheme.of(context).accent1,
                                  FlutterFlowTheme.of(context).primary
                                ],
                                stops: const [0.0, 1.0],
                                begin: const AlignmentDirectional(0.0, -1.0),
                                end: const AlignmentDirectional(0, 1.0),
                              ),
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                width: 1.0,
                              ),
                            ),
                            child: Stack(
                              children: [
                                Container(
                                  width: 200.0,
                                  height: 200.0,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.asset(
                                    'assets/images/student_Boy.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          'ทดลอง ทดสอบ',
                          textAlign: TextAlign.center,
                          maxLines: 1,
                          style: GoogleFonts.sarabun(
                            color: valueOrDefault<Color>(
                              FFAppState().parents == 5
                                  ? FlutterFlowTheme.of(context).primary
                                  : FlutterFlowTheme.of(context).primaryText,
                              FlutterFlowTheme.of(context).primaryText,
                            ),
                            fontWeight: FontWeight.normal,
                            fontSize: 12.0,
                            height: 1.7,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  FFAppState().parents = 6;
                  safeSetState(() {});
                },
                child: Container(
                  height: double.infinity,
                  decoration: const BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100.0),
                          border: Border.all(
                            color: valueOrDefault<Color>(
                              FFAppState().parents == 5
                                  ? FlutterFlowTheme.of(context).primary
                                  : FlutterFlowTheme.of(context)
                                      .primaryBackground,
                              FlutterFlowTheme.of(context).primaryBackground,
                            ),
                            width: 1.0,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: Container(
                            width: 80.0,
                            height: 80.0,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  FlutterFlowTheme.of(context).accent1,
                                  FlutterFlowTheme.of(context).primary
                                ],
                                stops: const [0.0, 1.0],
                                begin: const AlignmentDirectional(0.0, -1.0),
                                end: const AlignmentDirectional(0, 1.0),
                              ),
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                width: 1.0,
                              ),
                            ),
                            child: Stack(
                              children: [
                                Container(
                                  width: 200.0,
                                  height: 200.0,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.asset(
                                    'assets/images/student_girl.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          'ทดลอง ทดสอบ',
                          textAlign: TextAlign.center,
                          maxLines: 1,
                          style: GoogleFonts.sarabun(
                            color: valueOrDefault<Color>(
                              FFAppState().parents == 5
                                  ? FlutterFlowTheme.of(context).primary
                                  : FlutterFlowTheme.of(context).primaryText,
                              FlutterFlowTheme.of(context).primaryText,
                            ),
                            fontWeight: FontWeight.normal,
                            fontSize: 12.0,
                            height: 1.7,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  FFAppState().parents = 7;
                  safeSetState(() {});
                },
                child: Container(
                  height: double.infinity,
                  decoration: const BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100.0),
                          border: Border.all(
                            color: valueOrDefault<Color>(
                              FFAppState().parents == 5
                                  ? FlutterFlowTheme.of(context).primary
                                  : FlutterFlowTheme.of(context)
                                      .primaryBackground,
                              FlutterFlowTheme.of(context).primaryBackground,
                            ),
                            width: 1.0,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: Container(
                            width: 80.0,
                            height: 80.0,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  FlutterFlowTheme.of(context).accent1,
                                  FlutterFlowTheme.of(context).primary
                                ],
                                stops: const [0.0, 1.0],
                                begin: const AlignmentDirectional(0.0, -1.0),
                                end: const AlignmentDirectional(0, 1.0),
                              ),
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                width: 1.0,
                              ),
                            ),
                            child: Stack(
                              children: [
                                Container(
                                  width: 200.0,
                                  height: 200.0,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.asset(
                                    'assets/images/callege_Boy.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          'ทดลอง ทดสอบ',
                          textAlign: TextAlign.center,
                          maxLines: 1,
                          style: GoogleFonts.sarabun(
                            color: valueOrDefault<Color>(
                              FFAppState().parents == 5
                                  ? FlutterFlowTheme.of(context).primary
                                  : FlutterFlowTheme.of(context).primaryText,
                              FlutterFlowTheme.of(context).primaryText,
                            ),
                            fontWeight: FontWeight.normal,
                            fontSize: 12.0,
                            height: 1.7,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  FFAppState().parents = 8;
                  safeSetState(() {});
                },
                child: Container(
                  height: double.infinity,
                  decoration: const BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100.0),
                          border: Border.all(
                            color: valueOrDefault<Color>(
                              FFAppState().parents == 5
                                  ? FlutterFlowTheme.of(context).primary
                                  : FlutterFlowTheme.of(context)
                                      .primaryBackground,
                              FlutterFlowTheme.of(context).primaryBackground,
                            ),
                            width: 1.0,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: Container(
                            width: 80.0,
                            height: 80.0,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  FlutterFlowTheme.of(context).accent1,
                                  FlutterFlowTheme.of(context).primary
                                ],
                                stops: const [0.0, 1.0],
                                begin: const AlignmentDirectional(0.0, -1.0),
                                end: const AlignmentDirectional(0, 1.0),
                              ),
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                width: 1.0,
                              ),
                            ),
                            child: Stack(
                              children: [
                                Container(
                                  width: 200.0,
                                  height: 200.0,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.asset(
                                    'assets/images/callege_Girl.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          'ทดลอง ทดสอบ',
                          textAlign: TextAlign.center,
                          maxLines: 1,
                          style: GoogleFonts.sarabun(
                            color: valueOrDefault<Color>(
                              FFAppState().parents == 5
                                  ? FlutterFlowTheme.of(context).primary
                                  : FlutterFlowTheme.of(context).primaryText,
                              FlutterFlowTheme.of(context).primaryText,
                            ),
                            fontWeight: FontWeight.normal,
                            fontSize: 12.0,
                            height: 1.7,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  FFAppState().parents = 9;
                  safeSetState(() {});
                },
                child: Container(
                  height: double.infinity,
                  decoration: const BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100.0),
                          border: Border.all(
                            color: valueOrDefault<Color>(
                              FFAppState().parents == 5
                                  ? FlutterFlowTheme.of(context).primary
                                  : FlutterFlowTheme.of(context)
                                      .primaryBackground,
                              FlutterFlowTheme.of(context).primaryBackground,
                            ),
                            width: 1.0,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: Container(
                            width: 80.0,
                            height: 80.0,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  FlutterFlowTheme.of(context).accent1,
                                  FlutterFlowTheme.of(context).primary
                                ],
                                stops: const [0.0, 1.0],
                                begin: const AlignmentDirectional(0.0, -1.0),
                                end: const AlignmentDirectional(0, 1.0),
                              ),
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                width: 1.0,
                              ),
                            ),
                            child: Stack(
                              children: [
                                Container(
                                  width: 200.0,
                                  height: 200.0,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.asset(
                                    'assets/images/Baby_Girl.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          'ทดลอง ทดสอบ',
                          textAlign: TextAlign.center,
                          maxLines: 1,
                          style: GoogleFonts.sarabun(
                            color: valueOrDefault<Color>(
                              FFAppState().parents == 5
                                  ? FlutterFlowTheme.of(context).primary
                                  : FlutterFlowTheme.of(context).primaryText,
                              FlutterFlowTheme.of(context).primaryText,
                            ),
                            fontWeight: FontWeight.normal,
                            fontSize: 12.0,
                            height: 1.7,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  FFAppState().parents = 10;
                  safeSetState(() {});
                },
                child: Container(
                  height: double.infinity,
                  decoration: const BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100.0),
                          border: Border.all(
                            color: valueOrDefault<Color>(
                              FFAppState().parents == 5
                                  ? FlutterFlowTheme.of(context).primary
                                  : FlutterFlowTheme.of(context)
                                      .primaryBackground,
                              FlutterFlowTheme.of(context).primaryBackground,
                            ),
                            width: 1.0,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: Container(
                            width: 80.0,
                            height: 80.0,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  FlutterFlowTheme.of(context).accent1,
                                  FlutterFlowTheme.of(context).primary
                                ],
                                stops: const [0.0, 1.0],
                                begin: const AlignmentDirectional(0.0, -1.0),
                                end: const AlignmentDirectional(0, 1.0),
                              ),
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                width: 1.0,
                              ),
                            ),
                            child: Stack(
                              children: [
                                Container(
                                  width: 200.0,
                                  height: 200.0,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.asset(
                                    'assets/images/Baby_Boy.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          'ทดลอง ทดสอบ',
                          textAlign: TextAlign.center,
                          maxLines: 1,
                          style: GoogleFonts.sarabun(
                            color: valueOrDefault<Color>(
                              FFAppState().parents == 5
                                  ? FlutterFlowTheme.of(context).primary
                                  : FlutterFlowTheme.of(context).primaryText,
                              FlutterFlowTheme.of(context).primaryText,
                            ),
                            fontWeight: FontWeight.normal,
                            fontSize: 12.0,
                            height: 1.7,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ].divide(const SizedBox(width: 12.0)),
          ),
        ),
        Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            if (FFAppState().parents == 1)
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed(PatientinfoWidget.routeName);
                  },
                  child: wrapWithModel(
                    model: _model.itemHouseHoldMembersModel1,
                    updateCallback: () => safeSetState(() {}),
                    child: ItemHouseHoldMembersWidget(
                      fullname: 'นายทดลอง ทดสอบ',
                      age: '48',
                      residencestatus: 'ในเขตและอยู่จริง',
                      date: '9 เม.ษ 2568',
                      time: '10:35',
                      diabetesstatus: 'ปกติ',
                      pressurestatus: 'ปกติ',
                      strokestatus: 'เสี่ยง',
                      potbellystatus: 'ปกติ',
                      diabetescolor1: const Color(0x324CAF50),
                      diabetescolor2: FlutterFlowTheme.of(context).customColor1,
                      pressurecolor1: const Color(0x324CAF50),
                      pressurecolor2: FlutterFlowTheme.of(context).customColor1,
                      strokecolor1: const Color(0x32F44336),
                      strokecolor2: FlutterFlowTheme.of(context).customColor3,
                      potbellycolor1: const Color(0x324CAF50),
                      potbellycolor2: FlutterFlowTheme.of(context).customColor1,
                      img:
                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/healflow-1ya11l/assets/jsj3wzutwz6p/man1.png',
                    ),
                  ),
                ),
              ),
            if (FFAppState().parents == 2)
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                child: wrapWithModel(
                  model: _model.itemHouseHoldMembersModel2,
                  updateCallback: () => safeSetState(() {}),
                  child: ItemHouseHoldMembersWidget(
                    fullname: 'นางทดลอง ทดสอบ',
                    age: '40',
                    residencestatus: 'ในเขตและอยู่จริง',
                    date: '9 เม.ษ 2568',
                    time: '10:35',
                    diabetesstatus: 'ไม่มีข้อมูล',
                    pressurestatus: 'ไม่มีข้อมูล',
                    strokestatus: 'ไม่มีข้อมูล',
                    potbellystatus: 'ไม่มีข้อมูล',
                    diabetescolor1:
                        FlutterFlowTheme.of(context).primaryBackground,
                    diabetescolor2: FlutterFlowTheme.of(context).secondaryText,
                    pressurecolor1:
                        FlutterFlowTheme.of(context).primaryBackground,
                    pressurecolor2: FlutterFlowTheme.of(context).secondaryText,
                    strokecolor1:
                        FlutterFlowTheme.of(context).primaryBackground,
                    strokecolor2: FlutterFlowTheme.of(context).secondaryText,
                    potbellycolor1:
                        FlutterFlowTheme.of(context).primaryBackground,
                    potbellycolor2: FlutterFlowTheme.of(context).secondaryText,
                    img:
                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/healflow-1ya11l/assets/m7xdpmwhlgki/girl1.png',
                  ),
                ),
              ),
            if (FFAppState().parents == 3)
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                child: wrapWithModel(
                  model: _model.itemHouseHoldMembersModel3,
                  updateCallback: () => safeSetState(() {}),
                  child: ItemHouseHoldMembersWidget(
                    fullname: 'นางทดลอง ทดสอบ',
                    age: '87',
                    residencestatus: 'ในเขตและอยู่จริง',
                    date: '9 เม.ษ 2568',
                    time: '10:35',
                    diabetesstatus: 'ไม่มีข้อมูล',
                    pressurestatus: 'ไม่มีข้อมูล',
                    strokestatus: 'ไม่มีข้อมูล',
                    potbellystatus: 'ไม่มีข้อมูล',
                    diabetescolor1:
                        FlutterFlowTheme.of(context).primaryBackground,
                    diabetescolor2: FlutterFlowTheme.of(context).secondaryText,
                    pressurecolor1:
                        FlutterFlowTheme.of(context).primaryBackground,
                    pressurecolor2: FlutterFlowTheme.of(context).secondaryText,
                    strokecolor1:
                        FlutterFlowTheme.of(context).primaryBackground,
                    strokecolor2: FlutterFlowTheme.of(context).secondaryText,
                    potbellycolor1:
                        FlutterFlowTheme.of(context).primaryBackground,
                    potbellycolor2: FlutterFlowTheme.of(context).secondaryText,
                    img:
                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/healflow-1ya11l/assets/9e97rkkhahtb/oldgirl1.png',
                  ),
                ),
              ),
          ],
        ),
      ].divide(const SizedBox(height: 16.0)),
    );
  }
}
