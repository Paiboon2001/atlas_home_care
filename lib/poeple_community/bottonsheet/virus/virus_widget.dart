import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/poeple_community/widget/cln/cln_widget.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'virus_model.dart';
export 'virus_model.dart';

class VirusWidget extends StatefulWidget {
  const VirusWidget({super.key});

  @override
  State<VirusWidget> createState() => _VirusWidgetState();
}

class _VirusWidgetState extends State<VirusWidget> {
  late VirusModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VirusModel());

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
        height: MediaQuery.sizeOf(context).height * 0.7,
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 50.0,
                    decoration: const BoxDecoration(),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        FFAppState().cln = !(FFAppState().cln ?? true);
                        safeSetState(() {});
                        Navigator.pop(context);
                      },
                      child: Text(
                        'ยกเลิก',
                        textAlign: TextAlign.start,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                              color: FlutterFlowTheme.of(context).error,
                              letterSpacing: 0.0,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .bodyMediumIsCustom,
                            ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'เลือกประเภทปัญหา',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).titleSmall.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).titleSmallFamily,
                            letterSpacing: 0.0,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .titleSmallIsCustom,
                          ),
                    ),
                  ),
                  Container(
                    width: 50.0,
                    decoration: const BoxDecoration(),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'ตกลง',
                        textAlign: TextAlign.end,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                              color: FlutterFlowTheme.of(context).info,
                              letterSpacing: 0.0,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .bodyMediumIsCustom,
                            ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
              child: Container(
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).alternate,
                  borderRadius: BorderRadius.circular(100.0),
                ),
                child: FlutterFlowDropDown<String>(
                  controller: _model.dropDownValueController ??=
                      FormFieldController<String>(null),
                  options: const ['โรคเบาหวาน', 'โรคความดันโลหิต'],
                  onChanged: (val) =>
                      safeSetState(() => _model.dropDownValue = val),
                  width: double.infinity,
                  textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodyMediumFamily,
                        letterSpacing: 0.0,
                        useGoogleFonts:
                            !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                      ),
                  hintText: 'กรุณาเลือกโรค',
                  icon: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: FlutterFlowTheme.of(context).secondaryText,
                    size: 24.0,
                  ),
                  elevation: 2.0,
                  borderColor: Colors.transparent,
                  borderWidth: 0.0,
                  borderRadius: 100.0,
                  margin: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  hidesUnderline: true,
                  isOverButton: false,
                  isSearchable: false,
                  isMultiSelect: false,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 0.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: wrapWithModel(
                          model: _model.clnModel1,
                          updateCallback: () => safeSetState(() {}),
                          child: const ClnWidget(
                            namelab: 'ตรวจเช็กอาการ',
                          ),
                        ),
                      ),
                      Expanded(
                        child: wrapWithModel(
                          model: _model.clnModel2,
                          updateCallback: () => safeSetState(() {}),
                          child: const ClnWidget(
                            namelab: 'ตรวจเช็กอาการ',
                          ),
                        ),
                      ),
                      Expanded(
                        child: wrapWithModel(
                          model: _model.clnModel3,
                          updateCallback: () => safeSetState(() {}),
                          child: const ClnWidget(
                            namelab: 'ตรวจเช็กอาการ',
                          ),
                        ),
                      ),
                      Expanded(
                        child: wrapWithModel(
                          model: _model.clnModel4,
                          updateCallback: () => safeSetState(() {}),
                          child: const ClnWidget(
                            namelab: 'ตรวจเช็กอาการ',
                          ),
                        ),
                      ),
                      Expanded(
                        child: wrapWithModel(
                          model: _model.clnModel5,
                          updateCallback: () => safeSetState(() {}),
                          child: const ClnWidget(
                            namelab: 'ตรวจเช็กอาการ',
                          ),
                        ),
                      ),
                      Expanded(
                        child: wrapWithModel(
                          model: _model.clnModel6,
                          updateCallback: () => safeSetState(() {}),
                          child: const ClnWidget(
                            namelab: 'ตรวจเช็กอาการ',
                          ),
                        ),
                      ),
                      Expanded(
                        child: wrapWithModel(
                          model: _model.clnModel7,
                          updateCallback: () => safeSetState(() {}),
                          child: const ClnWidget(
                            namelab: 'ตรวจเช็กอาการ',
                          ),
                        ),
                      ),
                    ].addToEnd(const SizedBox(height: 48.0)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
