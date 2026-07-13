import 'dart:math' as math;

import '/components/card_shadow.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'new_job_model.dart';
export 'new_job_model.dart';

class NewJobWidget extends StatefulWidget {
  const NewJobWidget({
    super.key,
    required this.img,
    required this.mainname,
    required this.year,
    required this.month,
    required this.day,
    required this.date,
    required this.time,
    required this.details,
  });

  final String? img;
  final String? mainname;
  final String? year;
  final String? month;
  final String? day;
  final String? date;
  final String? time;
  final String? details;

  @override
  State<NewJobWidget> createState() => _NewJobWidgetState();
}

class _NewJobWidgetState extends State<NewJobWidget> {
  late NewJobModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NewJobModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () async {
        context.pushNamed(DetailesPatientNewtaskWidget.routeName);
      },
      child: Container(
        width: 180.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(16.0),
          boxShadow: kCardShadow,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(4.0, 4.0, 4.0, 0.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12.0),
                  child: Container(
                    height: 140.0,
                    width: double.infinity,
                    color: const Color(0x40FF8600),
                    child: Stack(
                      children: [
                        Positioned.fill(
                          // Asset paths render on web too; remote hosts without
                          // CORS headers (e.g. randomuser.me) are blocked there.
                          child: widget.img!.startsWith('http')
                              ? Image.network(
                                  widget.img!,
                                  fit: BoxFit.cover,
                                )
                              : Image.asset(
                                  widget.img!,
                                  fit: BoxFit.cover,
                                ),
                        ),
                        const Positioned(
                          top: 8.0,
                          right: -80.0,
                          child: _NewJobRibbon(),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(
                        12.0, 8.0, 12.0, 0.0),
                    child: Text(
                      widget.mainname!,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyMediumFamily,
                            color: FlutterFlowTheme.of(context).primaryText,
                            fontSize: 16.0,
                            letterSpacing: -0.3,
                            fontWeight: FontWeight.w500,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .bodyMediumIsCustom,
                          ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(
                        12.0, 4.0, 12.0, 12.0),
                    child: Text(
                      'อายุ ${widget.year} ปี ${widget.month} เดือน ${widget.day} วัน',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: FlutterFlowTheme.of(context).bodySmall.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodySmallFamily,
                            color: const Color(0xFF8A8F97),
                            fontSize: 12.0,
                            letterSpacing: -0.3,
                            fontWeight: FontWeight.normal,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .bodySmallIsCustom,
                          ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsetsDirectional.fromSTEB(
                        12.0, 8.0, 12.0, 8.0),
                    decoration: const BoxDecoration(
                      border: Border(
                        top: BorderSide(color: Color(0xFFEAEFFB)),
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Icon(
                          Icons.medical_services_outlined,
                          color: FlutterFlowTheme.of(context).primary,
                          size: 16.0,
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                4.0, 0.0, 0.0, 0.0),
                            child: Text(
                              '${widget.date} ${widget.time}',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodySmallFamily,
                                    color:
                                        FlutterFlowTheme.of(context).primaryText,
                                    fontSize: 14.0,
                                    letterSpacing: -0.3,
                                    fontWeight: FontWeight.w500,
                                    useGoogleFonts: !FlutterFlowTheme.of(context)
                                        .bodySmallIsCustom,
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// The orange "งานใหม่" banner rotated 45° across the top-right corner of the
/// image tile.
class _NewJobRibbon extends StatelessWidget {
  const _NewJobRibbon();

  @override
  Widget build(BuildContext context) {
    // Wider than the corner it crosses so both ends are cut off by the image
    // tile's clip, leaving a banner flush with the top and right edges.
    return SizedBox(
      width: 200.0,
      height: 24.0,
      child: Transform.rotate(
        angle: math.pi / 4,
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFFFED26D), Color(0xFFFF8600)],
              begin: AlignmentDirectional(0.0, -1.0),
              end: AlignmentDirectional(0.0, 1.0),
            ),
          ),
          alignment: Alignment.center,
          child: Text(
              'งานใหม่',
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: FlutterFlowTheme.of(context).bodySmall.override(
                    fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                    color: Colors.white,
                    fontSize: 12.0,
                    letterSpacing: -0.3,
                    fontWeight: FontWeight.bold,
                    useGoogleFonts:
                        !FlutterFlowTheme.of(context).bodySmallIsCustom,
                  ),
          ),
        ),
      ),
    );
  }
}
