import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'botton_way_model.dart';
export 'botton_way_model.dart';

class BottonWayWidget extends StatefulWidget {
  const BottonWayWidget({super.key});

  @override
  State<BottonWayWidget> createState() => _BottonWayWidgetState();
}

class _BottonWayWidgetState extends State<BottonWayWidget> {
  late BottonWayModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BottonWayModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Padding(
        // 32px clear of the physical screen edge: the home indicator inset
        // already accounts for part of that gap.
        padding: EdgeInsetsDirectional.fromSTEB(
          16.0,
          12.0,
          16.0,
          (32.0 - MediaQuery.viewPaddingOf(context).bottom).clamp(0.0, 32.0),
        ),
        child: MasonryGridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
          itemCount: 2,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return [
              () => InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.pushNamed(RunWayWidget.routeName);
                    },
                    child: Container(
                      width: 100.0,
                      height: () {
                        if (MediaQuery.sizeOf(context).width <
                            kBreakpointSmall) {
                          return 48.0;
                        } else if (MediaQuery.sizeOf(context).width <
                            kBreakpointMedium) {
                          return 48.0;
                        } else if (MediaQuery.sizeOf(context).width <
                            kBreakpointLarge) {
                          return 56.0;
                        } else {
                          return 56.0;
                        }
                      }(),
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.circular(100.0),
                        border: Border.all(
                          color: const Color(0xFFE0E4F0),
                          width: 1.0,
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.alt_route,
                            color: FlutterFlowTheme.of(context).primary,
                            size: 24.0,
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Text(
                              'ดูเส้นทาง',
                              style: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .labelMediumFamily,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    letterSpacing: 0.0,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .labelMediumIsCustom,
                                  ),
                            ),
                          ),
                        ].divide(const SizedBox(width: 12.0)),
                      ),
                    ),
                  ),
              () => Container(
                    width: 100.0,
                    height: () {
                      if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                        return 48.0;
                      } else if (MediaQuery.sizeOf(context).width <
                          kBreakpointMedium) {
                        return 48.0;
                      } else if (MediaQuery.sizeOf(context).width <
                          kBreakpointLarge) {
                        return 56.0;
                      } else {
                        return 56.0;
                      }
                    }(),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(100.0),
                      border: Border.all(
                        color: const Color(0xFFE0E4F0),
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.location_pin,
                          color: FlutterFlowTheme.of(context).error,
                          size: 24.0,
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Text(
                            'google Map',
                            style: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .labelMediumFamily,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .labelMediumIsCustom,
                                ),
                          ),
                        ),
                      ].divide(const SizedBox(width: 12.0)),
                    ),
                  ),
            ][index]();
          },
        ),
      ),
    );
  }
}
