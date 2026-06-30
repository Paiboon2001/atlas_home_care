import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/poeple_community/bottonsheet/upload_pic/upload_pic_widget.dart';
import '/poeple_community/widget/pic/pic_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:provider/provider.dart';
import 'process_up_pic_model.dart';
export 'process_up_pic_model.dart';

class ProcessUpPicWidget extends StatefulWidget {
  const ProcessUpPicWidget({super.key});

  @override
  State<ProcessUpPicWidget> createState() => _ProcessUpPicWidgetState();
}

class _ProcessUpPicWidgetState extends State<ProcessUpPicWidget> {
  late ProcessUpPicModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProcessUpPicModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (FFAppState().picture == true)
          MasonryGridView.builder(
            gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: () {
                if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                  return 3;
                } else if (MediaQuery.sizeOf(context).width <
                    kBreakpointMedium) {
                  return 3;
                } else if (MediaQuery.sizeOf(context).width <
                    kBreakpointLarge) {
                  return 5;
                } else {
                  return 6;
                }
              }(),
            ),
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
            itemCount: 6,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return [
                () => Container(
                      width: double.infinity,
                      height: 120.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all(
                          color: FlutterFlowTheme.of(context).alternate,
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.add_photo_alternate_outlined,
                            color: FlutterFlowTheme.of(context).primary,
                            size: 24.0,
                          ),
                          Text(
                            'เพิ่มรูปภาพ',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .labelSmall
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .labelSmallFamily,
                                  fontSize: 12.0,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .labelSmallIsCustom,
                                ),
                          ),
                        ].divide(const SizedBox(height: 8.0)),
                      ),
                    ),
                () => InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        FFAppState().picture = false;
                        safeSetState(() {});
                      },
                      child: wrapWithModel(
                        model: _model.picModel1,
                        updateCallback: () => safeSetState(() {}),
                        child: const PicWidget(),
                      ),
                    ),
                () => wrapWithModel(
                      model: _model.picModel2,
                      updateCallback: () => safeSetState(() {}),
                      child: const PicWidget(),
                    ),
                () => wrapWithModel(
                      model: _model.picModel3,
                      updateCallback: () => safeSetState(() {}),
                      child: const PicWidget(),
                    ),
                () => wrapWithModel(
                      model: _model.picModel4,
                      updateCallback: () => safeSetState(() {}),
                      child: const PicWidget(),
                    ),
                () => wrapWithModel(
                      model: _model.picModel5,
                      updateCallback: () => safeSetState(() {}),
                      child: const PicWidget(),
                    ),
              ][index]();
            },
          ),
        if (FFAppState().picture == false)
          InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              await showModalBottomSheet(
                isScrollControlled: true,
                backgroundColor: Colors.transparent,
                enableDrag: false,
                context: context,
                builder: (context) {
                  return Padding(
                    padding: MediaQuery.viewInsetsOf(context),
                    child: const UploadPicWidget(),
                  );
                },
              ).then((value) => safeSetState(() {}));
            },
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).primaryBackground,
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(
                  color: FlutterFlowTheme.of(context).alternate,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Icon(
                      Icons.add_photo_alternate_outlined,
                      color: FlutterFlowTheme.of(context).primary,
                      size: 24.0,
                    ),
                    Text(
                      'อัปโหลดรูปภาพ',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).labelSmall.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).labelSmallFamily,
                            letterSpacing: 0.0,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .labelSmallIsCustom,
                          ),
                    ),
                  ].divide(const SizedBox(height: 8.0)),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
