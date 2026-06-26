import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/homevisitlist/widget/buttonsheetfamily/buttonsheetfamily_widget.dart';
import '/homevisitlist/widget/item_home/item_home_widget.dart';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'homevisitlist_model.dart';
export 'homevisitlist_model.dart';

class HomevisitlistWidget extends StatefulWidget {
  const HomevisitlistWidget({super.key});

  static String routeName = 'homevisitlist';
  static String routePath = '/homevisitlist';

  @override
  State<HomevisitlistWidget> createState() => _HomevisitlistWidgetState();
}

class _HomevisitlistWidgetState extends State<HomevisitlistWidget> {
  late HomevisitlistModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomevisitlistModel());

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
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.white,
            size: 18.0,
          ),
          onPressed: () async {
            context.pop();
          },
        ),
        title: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Text(
                'หมู่บ้านกฤษดานคร',
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
              alignment: AlignmentDirectional(-0.63, 0.0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.pushNamed(AddHomeWidget.routeName);
                },
                child: Container(
                  width: 40.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                    color: Color(0x93164874),
                    shape: BoxShape.circle,
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Icon(
                      Icons.add_home,
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      size: 24.0,
                    ),
                  ),
                ),
              ),
            ),
          ],
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
                      showModalBottomSheet(
                        isScrollControlled: true,
                        backgroundColor: Colors.transparent,
                        isDismissible: false,
                        context: context,
                        builder: (context) {
                          return Padding(
                            padding: MediaQuery.viewInsetsOf(context),
                            child: ButtonsheetfamilyWidget(),
                          );
                        },
                      ).then((value) => safeSetState(() {}));
                    },
                    child: wrapWithModel(
                      model: _model.itemHomeModel1,
                      updateCallback: () => safeSetState(() {}),
                      child: ItemHomeWidget(
                        homenumber: '1',
                        location:
                            'หมู่บ้านกฤษดานคร หมู่ 6  บ้านเลขที่ 1 แขวงราษฎร์บูรณะ เขตราษฎร์บูรณะ กรุงเทพมหานคร 10140',
                        peoplinhouse: '6',
                        colorarrow: FlutterFlowTheme.of(context).secondaryText,
                      ),
                    ),
                  ),
                  wrapWithModel(
                    model: _model.itemHomeModel2,
                    updateCallback: () => safeSetState(() {}),
                    child: ItemHomeWidget(
                      homenumber: '2',
                      location:
                          'หมู่บ้านกฤษดานคร หมู่ 6  บ้านเลขที่ 2 แขวงราษฎร์บูรณะ เขตราษฎร์บูรณะ กรุงเทพมหานคร 10140',
                      peoplinhouse: '10',
                      colorarrow: FlutterFlowTheme.of(context).secondaryText,
                    ),
                  ),
                  wrapWithModel(
                    model: _model.itemHomeModel3,
                    updateCallback: () => safeSetState(() {}),
                    child: ItemHomeWidget(
                      homenumber: '3',
                      location:
                          'หมู่บ้านกฤษดานคร หมู่ 6  บ้านเลขที่ 3 แขวงราษฎร์บูรณะ เขตราษฎร์บูรณะ กรุงเทพมหานคร 10140',
                      peoplinhouse: '4',
                      colorarrow: FlutterFlowTheme.of(context).secondaryText,
                    ),
                  ),
                  wrapWithModel(
                    model: _model.itemHomeModel4,
                    updateCallback: () => safeSetState(() {}),
                    child: ItemHomeWidget(
                      homenumber: '4',
                      location:
                          'หมู่บ้านกฤษดานคร หมู่ 6  บ้านเลขที่ 4 แขวงราษฎร์บูรณะ เขตราษฎร์บูรณะ กรุงเทพมหานคร 10140',
                      peoplinhouse: '8',
                      colorarrow: FlutterFlowTheme.of(context).secondaryText,
                    ),
                  ),
                  wrapWithModel(
                    model: _model.itemHomeModel5,
                    updateCallback: () => safeSetState(() {}),
                    child: ItemHomeWidget(
                      homenumber: '15',
                      location:
                          'หมู่บ้านกฤษดานคร หมู่ 6  บ้านเลขที่ 15 แขวงราษฎร์บูรณะ เขตราษฎร์บูรณะ กรุงเทพมหานคร 10140',
                      peoplinhouse: '5',
                      colorarrow: FlutterFlowTheme.of(context).secondaryText,
                    ),
                  ),
                  wrapWithModel(
                    model: _model.itemHomeModel6,
                    updateCallback: () => safeSetState(() {}),
                    child: ItemHomeWidget(
                      homenumber: '16',
                      location:
                          'หมู่บ้านกฤษดานคร หมู่ 6  บ้านเลขที่ 16 แขวงราษฎร์บูรณะ เขตราษฎร์บูรณะ กรุงเทพมหานคร 10140',
                      peoplinhouse: '6',
                      colorarrow: FlutterFlowTheme.of(context).secondaryText,
                    ),
                  ),
                  wrapWithModel(
                    model: _model.itemHomeModel7,
                    updateCallback: () => safeSetState(() {}),
                    child: ItemHomeWidget(
                      homenumber: '36',
                      location:
                          'หมู่บ้านกฤษดานคร หมู่ 6  บ้านเลขที่ 36 แขวงราษฎร์บูรณะ เขตราษฎร์บูรณะ กรุงเทพมหานคร 10140',
                      peoplinhouse: '7',
                      colorarrow: FlutterFlowTheme.of(context).secondaryText,
                    ),
                  ),
                ].divide(SizedBox(height: 8.0)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
