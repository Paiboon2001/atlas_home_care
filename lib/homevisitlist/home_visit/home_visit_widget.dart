import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/homevisitlist/widget/home_care/home_care_widget.dart';
import '/homevisitlist/widget/search_village/search_village_widget.dart';
import '/utils/navbar/navbar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'home_visit_model.dart';
export 'home_visit_model.dart';

class HomeVisitWidget extends StatefulWidget {
  const HomeVisitWidget({super.key});

  static String routeName = 'home_visit';
  static String routePath = '/homeVisit';

  @override
  State<HomeVisitWidget> createState() => _HomeVisitWidgetState();
}

class _HomeVisitWidgetState extends State<HomeVisitWidget> {
  late HomeVisitModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeVisitModel());

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
        title: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: 40.0,
              height: 40.0,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
            ),
            Expanded(
              child: Text(
                'หมู่บ้านที่ดูแล',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).titleMedium.override(
                      fontFamily:
                          FlutterFlowTheme.of(context).titleMediumFamily,
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      letterSpacing: 0.0,
                      useGoogleFonts:
                          !FlutterFlowTheme.of(context).titleMediumIsCustom,
                    ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(-0.63, 0.0),
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
                      return SearchVillageWidget(topInset: topInset);
                    },
                  ).then((value) => safeSetState(() {}));
                },
                child: SizedBox(
                  width: 40.0,
                  height: 40.0,
                  child: Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Icon(
                      Icons.search_rounded,
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      size: 24.0,
                    ),
                  ),
                ),
              ),
            ),
          ].divide(const SizedBox(width: 8.0)),
        ),
        actions: const [],
        centerTitle: true,
        elevation: 0.0,
      ),
      body: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(32.0),
          topRight: Radius.circular(32.0),
        ),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            color: Color(0xFFF5F7FA),
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
              topLeft: Radius.circular(32.0),
              topRight: Radius.circular(32.0),
            ),
          ),
          child: Stack(
            children: [
              ListView(
                padding: const EdgeInsets.fromLTRB(
                  0,
                  0,
                  0,
                  72.0,
                ),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 8.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 4.0),
                          child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'ตำบลพระประแดง',
                              style: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .titleSmallFamily,
                                    fontSize: 20.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .titleSmallIsCustom,
                                  ),
                            ),
                            Text(
                              'จำนวน 4 หมู่บ้าน',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyMediumFamily,
                                    color: FlutterFlowTheme.of(context).primaryText,
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .bodyMediumIsCustom,
                                  ),
                            ),
                          ],
                          ),
                        ),
                        MasonryGridView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate:
                              SliverSimpleGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: () {
                              if (MediaQuery.sizeOf(context).width <
                                  kBreakpointSmall) {
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
                          crossAxisSpacing: 12.0,
                          mainAxisSpacing: 12.0,
                          itemCount: 4,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return [
                              () => wrapWithModel(
                                    model: _model.homeCareModel1,
                                    updateCallback: () => safeSetState(() {}),
                                    child: const HomeCareWidget(
                                      homename: 'บ้านกฤษดานคร',
                                      numhome: 'หมู่ที่ 6',
                                      manyhome: '450',
                                      manypoeple: '3,569',
                                    ),
                                  ),
                              () => wrapWithModel(
                                    model: _model.homeCareModel2,
                                    updateCallback: () => safeSetState(() {}),
                                    child: const HomeCareWidget(
                                      homename: 'บ้านหทัยราช',
                                      numhome: 'หมู่ที่ 8',
                                      manyhome: '348',
                                      manypoeple: '2,456',
                                    ),
                                  ),
                              () => wrapWithModel(
                                    model: _model.homeCareModel3,
                                    updateCallback: () => safeSetState(() {}),
                                    child: const HomeCareWidget(
                                      homename: 'บ้านเด่นชัย',
                                      numhome: 'หมู่ที่ 12',
                                      manyhome: '345',
                                      manypoeple: '1,657',
                                    ),
                                  ),
                              () => wrapWithModel(
                                    model: _model.homeCareModel4,
                                    updateCallback: () => safeSetState(() {}),
                                    child: const HomeCareWidget(
                                      homename: 'บ้านกูรูณาหนองห่าน',
                                      numhome: 'หมู่ที่ 15',
                                      manyhome: '345',
                                      manypoeple: '1,657',
                                    ),
                                  ),
                            ][index]();
                          },
                        ),
                      ].divide(const SizedBox(height: 8.0)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 4.0),
                          child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'ตำบลศาลาแดง',
                              style: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .titleSmallFamily,
                                    fontSize: 20.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .titleSmallIsCustom,
                                  ),
                            ),
                            Text(
                              'จำนวน 6 หมู่บ้าน',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyMediumFamily,
                                    color: FlutterFlowTheme.of(context).primaryText,
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .bodyMediumIsCustom,
                                  ),
                            ),
                          ],
                          ),
                        ),
                        MasonryGridView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate:
                              SliverSimpleGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: () {
                              if (MediaQuery.sizeOf(context).width <
                                  kBreakpointSmall) {
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
                          crossAxisSpacing: 12.0,
                          mainAxisSpacing: 12.0,
                          itemCount: 6,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return [
                              () => wrapWithModel(
                                    model: _model.homeCareModel5,
                                    updateCallback: () => safeSetState(() {}),
                                    child: const HomeCareWidget(
                                      homename: 'บ้านนกยูง',
                                      numhome: 'หมู่ที่ 1',
                                      manyhome: '390',
                                      manypoeple: '990',
                                    ),
                                  ),
                              () => wrapWithModel(
                                    model: _model.homeCareModel6,
                                    updateCallback: () => safeSetState(() {}),
                                    child: const HomeCareWidget(
                                      homename: 'บ้านกระจาน',
                                      numhome: 'หมู่ที่ 3',
                                      manyhome: '456',
                                      manypoeple: '2,390',
                                    ),
                                  ),
                              () => wrapWithModel(
                                    model: _model.homeCareModel7,
                                    updateCallback: () => safeSetState(() {}),
                                    child: const HomeCareWidget(
                                      homename: 'บ้านกระโนน',
                                      numhome: 'หมู่ที่ 13',
                                      manyhome: '567',
                                      manypoeple: '2,567',
                                    ),
                                  ),
                              () => wrapWithModel(
                                    model: _model.homeCareModel8,
                                    updateCallback: () => safeSetState(() {}),
                                    child: const HomeCareWidget(
                                      homename: 'บ้านณัฏยา',
                                      numhome: 'หมู่ที่ 13',
                                      manyhome: '367',
                                      manypoeple: '2,267',
                                    ),
                                  ),
                              () => wrapWithModel(
                                    model: _model.homeCareModel9,
                                    updateCallback: () => safeSetState(() {}),
                                    child: const HomeCareWidget(
                                      homename: 'บ้านหนองกาดน้อย',
                                      numhome: 'หมู่ที่ 6',
                                      manyhome: '356',
                                      manypoeple: '2,167',
                                    ),
                                  ),
                              () => wrapWithModel(
                                    model: _model.homeCareModel10,
                                    updateCallback: () => safeSetState(() {}),
                                    child: const HomeCareWidget(
                                      homename: 'บ้านแกร็บ',
                                      numhome: 'หมู่ที่ 9',
                                      manyhome: '467',
                                      manypoeple: '1,567',
                                    ),
                                  ),
                            ][index]();
                          },
                        ),
                      ].divide(const SizedBox(height: 8.0)),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 1.0),
                child: wrapWithModel(
                  model: _model.navbarModel,
                  updateCallback: () => safeSetState(() {}),
                  child: const NavbarWidget(
                    navbar: 3,
                    hide: false,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
