import '/components/real_map_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/map/widget/navigatebutton/navigatebutton_widget.dart';
import '/map/widget/pin/pin_widget.dart';
import '/map/widget/selecclinic/selecclinic_widget.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart' as ll;
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
  }

  @override
  void dispose() {
    _model.maybeDispose();
    super.dispose();
  }

  Future<void> _openClinicSheet() async {
    await showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      context: context,
      builder: (context) => Padding(
        padding: MediaQuery.viewInsetsOf(context),
        child: const SelecclinicWidget(),
      ),
    );
    if (mounted) safeSetState(() {});
  }

  /// Visit pins anchored to real coordinates, so they pan and zoom with the
  /// map. Colours follow the job status (yellow = new, green = done,
  /// blue = in progress, red = overdue).
  List<Marker> _pins(BuildContext context) {
    final pins = <List<Object>>[
      [13.7563, 100.5018, '2', const Color(0xFFFFBD00), const Color(0xFFFFE7A2)],
      [
        13.7700,
        100.5230,
        '1',
        const Color(0xFF0761B8),
        FlutterFlowTheme.of(context).accent1
      ],
      [
        13.7420,
        100.4820,
        '1',
        const Color(0xFF1D8B6B),
        FlutterFlowTheme.of(context).success
      ],
      [
        13.7880,
        100.4640,
        '1',
        FlutterFlowTheme.of(context).error,
        FlutterFlowTheme.of(context).customColor4
      ],
      [13.7650, 100.4760, '1', const Color(0xFFFFBD00), const Color(0xFFFFE7A2)],
      [13.7340, 100.5350, '1', const Color(0xFFFFBD00), const Color(0xFFFFE7A2)],
      [
        13.7180,
        100.5100,
        '1',
        const Color(0xFF1D8B6B),
        FlutterFlowTheme.of(context).success
      ],
      [13.7520, 100.5520, '1', const Color(0xFFFFBD00), const Color(0xFFFFE7A2)],
    ];

    return pins
        .map(
          (pin) => Marker(
            point: ll.LatLng(pin[0] as double, pin[1] as double),
            width: 48.0,
            height: 67.0,
            alignment: Alignment.topCenter,
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
              child: PinWidget(
                num: pin[2] as String,
                color2: pin[3] as Color,
                color1: pin[4] as Color,
              ),
            ),
          ),
        )
        .toList();
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
          'แผนที่',
          style: FlutterFlowTheme.of(context).titleMedium.override(
                fontFamily: FlutterFlowTheme.of(context).titleMediumFamily,
                color: FlutterFlowTheme.of(context).secondaryBackground,
                letterSpacing: 0.0,
                useGoogleFonts:
                    !FlutterFlowTheme.of(context).titleMediumIsCustom,
              ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
            child: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30.0,
              borderWidth: 1.0,
              buttonSize: 44.0,
              icon: const Icon(
                Icons.filter_list,
                color: Colors.white,
                size: 22.0,
              ),
              onPressed: _openClinicSheet,
            ),
          ),
        ],
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Stack(
        children: [
          SizedBox.expand(
            child: RealMap(
              showCenterPin: false,
              markers: _pins(context),
            ),
          ),
          Positioned(
            right: 16.0,
            bottom: 24.0,
            child: wrapWithModel(
              model: _model.navigatebuttonModel,
              updateCallback: () => safeSetState(() {}),
              child: const NavigatebuttonWidget(),
            ),
          ),
        ],
      ),
    );
  }
}
