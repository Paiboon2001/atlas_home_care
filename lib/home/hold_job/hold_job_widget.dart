import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/home/widget/respon_job/respon_job_widget.dart';
import '/index.dart';
import '/home/widget/job_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:provider/provider.dart';
import 'hold_job_model.dart';
export 'hold_job_model.dart';

class HoldJobWidget extends StatefulWidget {
  const HoldJobWidget({super.key});

  static String routeName = 'hold_job';
  static String routePath = '/holdJob';

  @override
  State<HoldJobWidget> createState() => _HoldJobWidgetState();
}

class _HoldJobWidgetState extends State<HoldJobWidget> {
  late HoldJobModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HoldJobModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

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
          'งานที่รับมอบหมาย',
          style: FlutterFlowTheme.of(context).titleMedium.override(
                fontFamily: FlutterFlowTheme.of(context).titleMediumFamily,
                color: FlutterFlowTheme.of(context).secondaryBackground,
                letterSpacing: 0.0,
                useGoogleFonts:
                    !FlutterFlowTheme.of(context).titleMediumIsCustom,
              ),
        ),
        actions: [
          Container(
            decoration: const BoxDecoration(),
            child: Align(
              alignment: const AlignmentDirectional(-0.63, 0.0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
                child: RichText(
                  textScaler: MediaQuery.of(context).textScaler,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: '5',
                        style: FlutterFlowTheme.of(context)
                            .titleSmall
                            .override(
                              fontFamily: FlutterFlowTheme.of(context)
                                  .titleSmallFamily,
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              letterSpacing: 0.0,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .titleSmallIsCustom,
                            ),
                      ),
                      TextSpan(
                        text: ' งาน',
                        style: FlutterFlowTheme.of(context)
                            .bodySmall
                            .override(
                              fontFamily: FlutterFlowTheme.of(context)
                                  .bodySmallFamily,
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              fontSize: 12.0,
                              letterSpacing: 0.0,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .bodySmallIsCustom,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(8.0),
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
          boxShadow: const [
            BoxShadow(
              blurRadius: 8.0,
              color: Color(0x33000000),
              offset: Offset(
                0.0,
                0.0,
              ),
            )
          ],
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(32.0),
            topRight: Radius.circular(32.0),
          ),
        ),
        child: ListView(
          padding: const EdgeInsets.fromLTRB(
            0,
            16.0,
            0,
            48.0,
          ),
          scrollDirection: Axis.vertical,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
              child: MasonryGridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: () {
                    if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                      return 1;
                    } else if (MediaQuery.sizeOf(context).width <
                        kBreakpointMedium) {
                      return 1;
                    } else if (MediaQuery.sizeOf(context).width <
                        kBreakpointLarge) {
                      return 2;
                    } else {
                      return 2;
                    }
                  }(),
                ),
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
                itemCount: 5,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return [
                    () => JobCard(
                          img:
                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/healflow-1ya11l/assets/4mq6lu0xx1l8/oldman1.png',
                          mainname: 'นายสมรชัย กุลศรีมา',
                          age: '48 ปี 2 เดือน 15 วัน',
                          date: '14 ธันวาคม 2568',
                          time: '11:45 น.',
                          assignee: 'นางสาวกมลวรรณ ศรีนาบดี',
                          nameColor: const Color(0xFF944D04),
                          avatarColor: const Color(0xFFFEE47A),
                          badgeIcon: Icons.edit_document,
                          onTap: () => context
                              .pushNamed(AddVisitinginformationWidget.routeName),
                        ),
                    () => wrapWithModel(
                          model: _model.responJobModel1,
                          updateCallback: () => safeSetState(() {}),
                          child: const ResponJobWidget(
                            img:
                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/healflow-1ya11l/assets/4mq6lu0xx1l8/oldman1.png',
                            mainname: 'นายมังการ มุสยานา',
                          ),
                        ),
                    () => wrapWithModel(
                          model: _model.responJobModel2,
                          updateCallback: () => safeSetState(() {}),
                          child: const ResponJobWidget(
                            img:
                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/healflow-1ya11l/assets/16ztnqju67da/student_girl.png',
                            mainname: 'เด็กหญิงกัญญา มหานคร',
                          ),
                        ),
                    () => wrapWithModel(
                          model: _model.responJobModel3,
                          updateCallback: () => safeSetState(() {}),
                          child: const ResponJobWidget(
                            img:
                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/healflow-1ya11l/assets/m7xdpmwhlgki/girl1.png',
                            mainname: 'นางวิมล สกุลลุนช่อง',
                          ),
                        ),
                    () => wrapWithModel(
                          model: _model.responJobModel4,
                          updateCallback: () => safeSetState(() {}),
                          child: const ResponJobWidget(
                            img:
                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/healflow-1ya11l/assets/9e97rkkhahtb/oldgirl1.png',
                            mainname: 'นางธรณี พันปีหลวง',
                          ),
                        ),
                  ][index]();
                },
              ),
            ),
          ].divide(const SizedBox(height: 16.0)),
        ),
      ),
    );
  }
}
