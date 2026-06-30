import '/components/main_button_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/poeple_community/widget/item_diabetes/item_diabetes_widget.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'l_a_b_bloodpressure_model.dart';
export 'l_a_b_bloodpressure_model.dart';

class LABBloodpressureWidget extends StatefulWidget {
  const LABBloodpressureWidget({super.key});

  static String routeName = 'LAB_bloodpressure';
  static String routePath = '/lABBloodpressure';

  @override
  State<LABBloodpressureWidget> createState() => _LABBloodpressureWidgetState();
}

class _LABBloodpressureWidgetState extends State<LABBloodpressureWidget> {
  late LABBloodpressureModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LABBloodpressureModel());

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
            Navigator.pop(context);
          },
        ),
        title: Text(
          'LAB ความดันโลหิตสูง',
          style: FlutterFlowTheme.of(context).titleMedium.override(
                fontFamily: FlutterFlowTheme.of(context).titleMediumFamily,
                color: FlutterFlowTheme.of(context).secondaryBackground,
                letterSpacing: 0.0,
                useGoogleFonts:
                    !FlutterFlowTheme.of(context).titleMediumIsCustom,
              ),
        ),
        actions: const [],
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(24.0),
                topRight: Radius.circular(24.0),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          'รายการ',
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme.of(context)
                              .titleMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .titleMediumFamily,
                                letterSpacing: 0.0,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .titleMediumIsCustom,
                              ),
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  height: 1.0,
                  thickness: 1.0,
                  color: FlutterFlowTheme.of(context).alternate,
                ),
                Expanded(
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    child: ListView(
                      padding: const EdgeInsets.fromLTRB(
                        0,
                        16.0,
                        0,
                        112.0,
                      ),
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Theme(
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
                                    unselectedWidgetColor:
                                        FlutterFlowTheme.of(context)
                                            .secondaryText,
                                  ),
                                  child: Checkbox(
                                    value: _model.checkboxValue1 ??= true,
                                    onChanged: (newValue) async {
                                      safeSetState(() =>
                                          _model.checkboxValue1 = newValue!);
                                    },
                                    side: (FlutterFlowTheme.of(context)
                                                .secondaryText !=
                                            null)
                                        ? BorderSide(
                                            width: 2,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                          )
                                        : null,
                                    activeColor:
                                        FlutterFlowTheme.of(context).primary,
                                    checkColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                ),
                                Text(
                                  'Profile',
                                  style: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .titleSmallFamily,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        letterSpacing: 0.0,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .titleSmallIsCustom,
                                      ),
                                ),
                              ],
                            ),
                            wrapWithModel(
                              model: _model.itemDiabetesModel1,
                              updateCallback: () => safeSetState(() {}),
                              child: const ItemDiabetesWidget(
                                namelab: 'Creatinine + eGFR',
                              ),
                            ),
                            wrapWithModel(
                              model: _model.itemDiabetesModel2,
                              updateCallback: () => safeSetState(() {}),
                              child: const ItemDiabetesWidget(
                                namelab: 'Lipid Profile',
                              ),
                            ),
                            wrapWithModel(
                              model: _model.itemDiabetesModel3,
                              updateCallback: () => safeSetState(() {}),
                              child: const ItemDiabetesWidget(
                                namelab: 'СВС',
                              ),
                            ),
                            wrapWithModel(
                              model: _model.itemDiabetesModel4,
                              updateCallback: () => safeSetState(() {}),
                              child: const ItemDiabetesWidget(
                                namelab: 'UA',
                              ),
                            ),
                          ].divide(const SizedBox(height: 8.0)),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Theme(
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
                                    unselectedWidgetColor:
                                        FlutterFlowTheme.of(context)
                                            .secondaryText,
                                  ),
                                  child: Checkbox(
                                    value: _model.checkboxValue2 ??= true,
                                    onChanged: (newValue) async {
                                      safeSetState(() =>
                                          _model.checkboxValue2 = newValue!);
                                    },
                                    side: (FlutterFlowTheme.of(context)
                                                .secondaryText !=
                                            null)
                                        ? BorderSide(
                                            width: 2,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                          )
                                        : null,
                                    activeColor:
                                        FlutterFlowTheme.of(context).primary,
                                    checkColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                ),
                                Text(
                                  'Items',
                                  style: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .titleSmallFamily,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        letterSpacing: 0.0,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .titleSmallIsCustom,
                                      ),
                                ),
                              ],
                            ),
                            wrapWithModel(
                              model: _model.itemDiabetesModel5,
                              updateCallback: () => safeSetState(() {}),
                              child: const ItemDiabetesWidget(
                                namelab: 'Fasting Blood Sugar (FBS)',
                              ),
                            ),
                            wrapWithModel(
                              model: _model.itemDiabetesModel6,
                              updateCallback: () => safeSetState(() {}),
                              child: const ItemDiabetesWidget(
                                namelab: 'HbA1c',
                              ),
                            ),
                            wrapWithModel(
                              model: _model.itemDiabetesModel7,
                              updateCallback: () => safeSetState(() {}),
                              child: const ItemDiabetesWidget(
                                namelab: 'Uric Acid',
                              ),
                            ),
                            wrapWithModel(
                              model: _model.itemDiabetesModel8,
                              updateCallback: () => safeSetState(() {}),
                              child: const ItemDiabetesWidget(
                                namelab: 'SGPT (ALT)',
                              ),
                            ),
                            wrapWithModel(
                              model: _model.itemDiabetesModel9,
                              updateCallback: () => safeSetState(() {}),
                              child: const ItemDiabetesWidget(
                                namelab: 'Potassium',
                              ),
                            ),
                          ].divide(const SizedBox(height: 8.0)),
                        ),
                      ].divide(const SizedBox(height: 25.0)),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: const AlignmentDirectional(0.0, 1.0),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 4.0,
                    color: Color(0x33000000),
                    offset: Offset(
                      0.0,
                      0.0,
                    ),
                  )
                ],
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(24.0),
                  topRight: Radius.circular(24.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 24.0),
                child: MainButton(
                  text: 'ดำเนินการสั่ง LAB',
                  onPressed: () async {
                    context.pushNamed(InformationCommunityOneWidget.routeName);
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
