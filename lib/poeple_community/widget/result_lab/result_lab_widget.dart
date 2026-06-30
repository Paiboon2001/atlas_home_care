import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/poeple_community/confirm/delete_lab/delete_lab_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'result_lab_model.dart';
export 'result_lab_model.dart';

class ResultLabWidget extends StatefulWidget {
  const ResultLabWidget({
    super.key,
    required this.namelab,
    required this.discrib,
  });

  /// namelab
  final String? namelab;

  final String? discrib;

  @override
  State<ResultLabWidget> createState() => _ResultLabWidgetState();
}

class _ResultLabWidgetState extends State<ResultLabWidget> {
  late ResultLabModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ResultLabModel());

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
      width: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(24.0),
        border: Border.all(
          color: FlutterFlowTheme.of(context).alternate,
          width: 1.0,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      valueOrDefault<String>(
                        widget.namelab,
                        'name_lab',
                      ),
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).labelMedium.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).labelMediumFamily,
                            letterSpacing: 0.0,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .labelMediumIsCustom,
                          ),
                    ),
                  ),
                  Text(
                    valueOrDefault<String>(
                      widget.discrib,
                      'dis',
                    ),
                    textAlign: TextAlign.start,
                    style: FlutterFlowTheme.of(context).labelSmall.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).labelSmallFamily,
                          letterSpacing: 0.0,
                          useGoogleFonts:
                              !FlutterFlowTheme.of(context).labelSmallIsCustom,
                        ),
                  ),
                ].divide(const SizedBox(height: 8.0)),
              ),
            ),
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
                      child: const DeleteLabWidget(),
                    );
                  },
                ).then((value) => safeSetState(() {}));
              },
              child: const FaIcon(
                FontAwesomeIcons.solidTrashAlt,
                color: Color(0xFFD5D5D5),
                size: 16.0,
              ),
            ),
          ].divide(const SizedBox(width: 12.0)),
        ),
      ),
    );
  }
}
