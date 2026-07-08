import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/homevisitlist/widget/buttonsheetfamily/buttonsheetfamily_widget.dart';
import '/homevisitlist/widget/item_home/item_home_widget.dart';
import '/index.dart';
import 'package:flutter/material.dart';
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
          icon: const Icon(
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
              alignment: const AlignmentDirectional(-0.63, 0.0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.pushNamed(AddHomeWidget.routeName);
                },
                child: SizedBox(
                  width: 40.0,
                  height: 40.0,
                  child: Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Icon(
                      Icons.add_home,
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      size: 32.0,
                    ),
                  ),
                ),
              ),
            ),
          ],
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
          color: Color(0xFFF2FAFF),
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
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: ListView(
                padding: const EdgeInsets.fromLTRB(
                  0,
                  16.0,
                  0,
                  32.0,
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
                            child: const ButtonsheetfamilyWidget(),
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
                ].divide(const SizedBox(height: 12.0)),
              ),
            ),
          ],
        ),
      ),
      ),
    );
  }
}
