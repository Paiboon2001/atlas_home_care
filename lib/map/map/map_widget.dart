import '/components/real_map_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/map/widget/navigatebutton/navigatebutton_widget.dart';
import '/map/widget/pin/pin_widget.dart';
import '/map/widget/selecclinic/selecclinic_widget.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'map_model.dart';
export 'map_model.dart';

class MapWidget extends StatefulWidget {
  const MapWidget({super.key});

  static String routeName = 'map';
  static String routePath = '/map';

  @override
  State<MapWidget> createState() => _MapWidgetState();
}

class _MapWidgetState extends State<MapWidget> {
  late MapModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MapModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Stack(
          children: [
            const SizedBox.expand(
              child: RealMap(),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 4.0,
                          color: Color(0x33000000),
                          offset: Offset(
                            0.0,
                            2.0,
                          ),
                        )
                      ],
                      shape: BoxShape.circle,
                    ),
                    child: FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30.0,
                      borderWidth: 1.0,
                      buttonSize: 48.0,
                      fillColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      icon: Icon(
                        Icons.arrow_back_ios_new_rounded,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 18.0,
                      ),
                      onPressed: () async {
                        context.pop();
                      },
                    ),
                  ),
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
                        enableDrag: false,
                        context: context,
                        builder: (context) {
                          return GestureDetector(
                            onTap: () {
                              FocusScope.of(context).unfocus();
                              FocusManager.instance.primaryFocus?.unfocus();
                            },
                            child: Padding(
                              padding: MediaQuery.viewInsetsOf(context),
                              child: const SelecclinicWidget(),
                            ),
                          );
                        },
                      ).then((value) => safeSetState(() {}));
                    },
                    child: Container(
                      width: () {
                        if (MediaQuery.sizeOf(context).width <
                            kBreakpointSmall) {
                          return 300.0;
                        } else if (MediaQuery.sizeOf(context).width <
                            kBreakpointMedium) {
                          return 300.0;
                        } else if (MediaQuery.sizeOf(context).width <
                            kBreakpointLarge) {
                          return 500.0;
                        } else {
                          return 500.0;
                        }
                      }(),
                      height: 48.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 4.0,
                            color: Color(0x33000000),
                            offset: Offset(
                              0.0,
                              2.0,
                            ),
                          )
                        ],
                        borderRadius: BorderRadius.circular(100.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: Icon(
                                Icons.filter_list,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 24.0,
                              ),
                            ),
                            Text(
                              'คลินิก',
                              maxLines: 1,
                              style: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .titleSmallFamily,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .titleSmallIsCustom,
                                  ),
                            ),
                          ].divide(const SizedBox(width: 12.0)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0.15, -0.41),
              child: wrapWithModel(
                model: _model.pinModel1,
                updateCallback: () => safeSetState(() {}),
                child: const PinWidget(
                  num: '2',
                  color2: Color(0xFFFFBD00),
                  color1: Color(0xFFFFE7A2),
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(1.0, 1.0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 24.0),
                child: wrapWithModel(
                  model: _model.navigatebuttonModel,
                  updateCallback: () => safeSetState(() {}),
                  child: const NavigatebuttonWidget(),
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0.64, -0.28),
              child: wrapWithModel(
                model: _model.pinModel2,
                updateCallback: () => safeSetState(() {}),
                child: PinWidget(
                  num: '1',
                  color2: const Color(0xFF0761B8),
                  color1: FlutterFlowTheme.of(context).accent1,
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(-0.39, 0.25),
              child: wrapWithModel(
                model: _model.pinModel3,
                updateCallback: () => safeSetState(() {}),
                child: PinWidget(
                  num: '1',
                  color2: const Color(0xFF1D8B6B),
                  color1: FlutterFlowTheme.of(context).success,
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(-0.79, -0.59),
              child: wrapWithModel(
                model: _model.pinModel4,
                updateCallback: () => safeSetState(() {}),
                child: PinWidget(
                  num: '1',
                  color2: FlutterFlowTheme.of(context).error,
                  color1: FlutterFlowTheme.of(context).customColor4,
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(-0.49, -0.23),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.pushNamed(
                    MapHomeWidget.routeName,
                    extra: <String, dynamic>{
                      '__transition_info__': const TransitionInfo(
                        hasTransition: true,
                        transitionType: PageTransitionType.fade,
                      ),
                    },
                  );
                },
                child: wrapWithModel(
                  model: _model.pinModel5,
                  updateCallback: () => safeSetState(() {}),
                  child: const PinWidget(
                    num: '1',
                    color2: Color(0xFFFFBD00),
                    color1: Color(0xFFFFE7A2),
                  ),
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0.34, -0.11),
              child: wrapWithModel(
                model: _model.pinModel6,
                updateCallback: () => safeSetState(() {}),
                child: const PinWidget(
                  num: '1',
                  color2: Color(0xFFFFBD00),
                  color1: Color(0xFFFFE7A2),
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0.11, 0.27),
              child: wrapWithModel(
                model: _model.pinModel7,
                updateCallback: () => safeSetState(() {}),
                child: PinWidget(
                  num: '1',
                  color2: const Color(0xFF1D8B6B),
                  color1: FlutterFlowTheme.of(context).success,
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0.73, -0.03),
              child: wrapWithModel(
                model: _model.pinModel8,
                updateCallback: () => safeSetState(() {}),
                child: const PinWidget(
                  num: '1',
                  color2: Color(0xFFFFBD00),
                  color1: Color(0xFFFFE7A2),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
