import '/components/real_map_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/home/widget/buttonsheetpatient/buttonsheetpatient_widget.dart';
import '/map/widget/navigatebutton/navigatebutton_widget.dart';
import 'package:flutter/material.dart';
import 'run_way_model.dart';
export 'run_way_model.dart';

class RunWayWidget extends StatefulWidget {
  const RunWayWidget({super.key});

  static String routeName = 'run_way';
  static String routePath = '/runWay';

  @override
  State<RunWayWidget> createState() => _RunWayWidgetState();
}

class _RunWayWidgetState extends State<RunWayWidget> {
  late RunWayModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RunWayModel());

    // The patient sheet is the whole point of this screen — open it as soon as
    // the map is on screen.
    WidgetsBinding.instance.addPostFrameCallback((_) => _openPatientSheet());
  }

  @override
  void dispose() {
    _model.maybeDispose();
    super.dispose();
  }

  Future<void> _openPatientSheet() async {
    await showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      // No dimmed backdrop: the map stays fully visible behind the sheet.
      barrierColor: Colors.transparent,
      context: context,
      builder: (context) => DraggableScrollableSheet(
        expand: false,
        initialChildSize: 0.5,
        minChildSize: 0.25,
        maxChildSize: 0.9,
        builder: (context, scrollController) => ButtonsheetpatientWidget(
          scrollController: scrollController,
        ),
      ),
    );
    if (mounted) safeSetState(() {});
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
          'เส้นทางไปบ้านผู้ป่วย',
          style: FlutterFlowTheme.of(context).titleMedium.override(
                fontFamily: FlutterFlowTheme.of(context).titleMediumFamily,
                color: FlutterFlowTheme.of(context).secondaryBackground,
                letterSpacing: 0.0,
                useGoogleFonts:
                    !FlutterFlowTheme.of(context).titleMediumIsCustom,
              ),
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Stack(
        children: [
          const SizedBox.expand(child: RealMap()),
          Positioned(
            right: 16.0,
            bottom: 24.0,
            child: wrapWithModel(
              model: _model.navigatebuttonModel,
              updateCallback: () => safeSetState(() {}),
              child: const NavigatebuttonWidget(),
            ),
          ),
          Align(
            alignment: const AlignmentDirectional(0.0, 1.0),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 24.0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: _openPatientSheet,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 24.0, vertical: 12.0),
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    borderRadius: BorderRadius.circular(100.0),
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 8.0,
                        color: Color(0x33000000),
                        offset: Offset(0.0, 2.0),
                      )
                    ],
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.home_rounded,
                        color: FlutterFlowTheme.of(context).primary,
                        size: 20.0,
                      ),
                      const SizedBox(width: 8.0),
                      Text(
                        'ดูข้อมูลบ้านผู้ป่วย',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                              color: FlutterFlowTheme.of(context).primaryText,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .bodyMediumIsCustom,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
