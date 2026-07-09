import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/planvisit_home/widget/resoncc/resoncc_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'option2_model.dart';
export 'option2_model.dart';

class Option2Widget extends StatefulWidget {
  const Option2Widget({super.key});

  @override
  State<Option2Widget> createState() => _Option2WidgetState();
}

class _Option2WidgetState extends State<Option2Widget> {
  late Option2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Option2Model());

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
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(24.0),
          topRight: Radius.circular(24.0),
        ),
      ),
      child: SafeArea(
        top: false,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 20.0),
              child: Center(
                child: Container(
                  width: 40.0,
                  height: 4.0,
                  decoration: BoxDecoration(
                    color: const Color(0xFFD0D8E0),
                    borderRadius: BorderRadius.circular(100.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  Navigator.pop(context);
                  await showModalBottomSheet(
                    isScrollControlled: true,
                    backgroundColor: Colors.transparent,
                    enableDrag: false,
                    context: context,
                    builder: (context) {
                      return Padding(
                        padding: MediaQuery.viewInsetsOf(context),
                        child: const ResonccWidget(),
                      );
                    },
                  ).then((value) => safeSetState(() {}));
                },
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    FaIcon(
                      FontAwesomeIcons.solidTrashAlt,
                      color: FlutterFlowTheme.of(context).customColor3,
                      size: 16.0,
                    ),
                    Text(
                      'ลบรายการวางแผน',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyMediumFamily,
                            letterSpacing: 0.0,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .bodyMediumIsCustom,
                          ),
                    ),
                  ]
                      .divide(const SizedBox(width: 16.0))
                      .addToStart(const SizedBox(width: 8.0)),
                ),
              ),
            ),
            Divider(
              height: 1.0,
              thickness: 1.0,
              indent: 16.0,
              endIndent: 16.0,
              color: FlutterFlowTheme.of(context).alternate,
            ),
            const SizedBox(height: 56.0),
          ],
        ),
      ),
    );
  }
}
