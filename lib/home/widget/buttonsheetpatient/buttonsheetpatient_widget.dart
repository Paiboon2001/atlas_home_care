import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/homevisitlist/widget/botton_way/botton_way_widget.dart';
import '/homevisitlist/widget/total_parents/total_parents_widget.dart';
import '/map/widget/item_homepatient/item_homepatient_widget.dart';
import 'package:flutter/material.dart';
import 'buttonsheetpatient_model.dart';
export 'buttonsheetpatient_model.dart';

class ButtonsheetpatientWidget extends StatefulWidget {
  const ButtonsheetpatientWidget({super.key, this.scrollController});

  /// Supplied when the sheet is hosted in a DraggableScrollableSheet: the
  /// content scrolls with it, so the sheet fills its parent instead of using a
  /// fixed height fraction.
  final ScrollController? scrollController;

  @override
  State<ButtonsheetpatientWidget> createState() =>
      _ButtonsheetpatientWidgetState();
}

class _ButtonsheetpatientWidgetState extends State<ButtonsheetpatientWidget> {
  late ButtonsheetpatientModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ButtonsheetpatientModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(0.0, 1.0),
      child: Container(
        width: double.infinity,
        height: widget.scrollController != null
            ? double.infinity
            : MediaQuery.sizeOf(context).height * 0.9,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primaryBackground,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(24.0),
            topRight: Radius.circular(24.0),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
              child: Container(
                width: 40.0,
                height: 4.0,
                decoration: BoxDecoration(
                  color: const Color(0xFFD0D8E0),
                  borderRadius: BorderRadius.circular(100.0),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          textScaler: MediaQuery.of(context).textScaler,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'บ้านเลขที่ ',
                                style: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .titleSmallFamily,
                                      color: FlutterFlowTheme.of(context)
                                          .customColor1,
                                      letterSpacing: 0.0,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .titleSmallIsCustom,
                                    ),
                              ),
                              TextSpan(
                                text: '1',
                                style: FlutterFlowTheme.of(context)
                                    .titleLarge
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .titleLargeFamily,
                                      color: FlutterFlowTheme.of(context)
                                          .customColor1,
                                      letterSpacing: 0.0,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .titleLargeIsCustom,
                                    ),
                              )
                            ],
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .bodyMediumIsCustom,
                                ),
                          ),
                        ),
                        RichText(
                          textScaler: MediaQuery.of(context).textScaler,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'เลขทะเบียนบ้าน : ',
                                style: FlutterFlowTheme.of(context)
                                    .labelSmall
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .labelSmallFamily,
                                      letterSpacing: 0.0,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .labelSmallIsCustom,
                                    ),
                              ),
                              TextSpan(
                                text: '4657-546345-9',
                                style: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodySmallFamily,
                                      letterSpacing: 1.0,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .bodySmallIsCustom,
                                    ),
                              )
                            ],
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .bodyMediumIsCustom,
                                ),
                          ),
                        ),
                      ].divide(const SizedBox(height: 2.0)),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: () {
                        if (MediaQuery.sizeOf(context).width <
                            kBreakpointSmall) {
                          return 32.0;
                        } else if (MediaQuery.sizeOf(context).width <
                            kBreakpointMedium) {
                          return 32.0;
                        } else if (MediaQuery.sizeOf(context).width <
                            kBreakpointLarge) {
                          return 40.0;
                        } else {
                          return 40.0;
                        }
                      }(),
                      height: () {
                        if (MediaQuery.sizeOf(context).width <
                            kBreakpointSmall) {
                          return 32.0;
                        } else if (MediaQuery.sizeOf(context).width <
                            kBreakpointMedium) {
                          return 32.0;
                        } else if (MediaQuery.sizeOf(context).width <
                            kBreakpointLarge) {
                          return 40.0;
                        } else {
                          return 40.0;
                        }
                      }(),
                      decoration: const BoxDecoration(
                        color: Color(0x266C6C6C),
                        shape: BoxShape.circle,
                      ),
                      child: Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Icon(
                          Icons.close_rounded,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: () {
                            if (MediaQuery.sizeOf(context).width <
                                kBreakpointSmall) {
                              return 16.0;
                            } else if (MediaQuery.sizeOf(context).width <
                                kBreakpointMedium) {
                              return 16.0;
                            } else if (MediaQuery.sizeOf(context).width <
                                kBreakpointLarge) {
                              return 20.0;
                            } else {
                              return 20.0;
                            }
                          }(),
                        ),
                      ),
                    ),
                  ),
                ].divide(const SizedBox(width: 12.0)),
              ),
            ),
            const Divider(
              height: 1.0,
              thickness: 1.0,
              color: Color(0xFFDCE0EA),
            ),
            Expanded(
              child: SingleChildScrollView(
                controller: widget.scrollController,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      child: wrapWithModel(
                        model: _model.itemHomepatientModel,
                        updateCallback: () => safeSetState(() {}),
                        child: const ItemHomepatientWidget(
                          homenumber: '1',
                          location:
                              'หมู่บ้านกฤษดานคร หมู่ 6  บ้านเลขที่ 1 แขวงราษฎร์บูรณะ เขตราษฎร์บูรณะ กรุงเทพมหานคร 10140',
                        ),
                      ),
                    ),
                    wrapWithModel(
                      model: _model.totalParentsModel,
                      updateCallback: () => safeSetState(() {}),
                      child: const TotalParentsWidget(),
                    ),
                  ]
                      .divide(const SizedBox(height: 16.0))
                      .around(const SizedBox(height: 16.0)),
                ),
              ),
            ),
            const Divider(
              height: 1.0,
              thickness: 1.0,
              color: Color(0xFFDCE0EA),
            ),
            wrapWithModel(
              model: _model.bottonWayModel,
              updateCallback: () => safeSetState(() {}),
              child: const BottonWayWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
