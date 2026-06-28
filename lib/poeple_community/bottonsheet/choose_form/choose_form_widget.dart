import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/map/widget/item_clinic/item_clinic_widget.dart';
import '/utils/close/close_widget.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'choose_form_model.dart';
export 'choose_form_model.dart';

class ChooseFormWidget extends StatefulWidget {
  const ChooseFormWidget({super.key});

  @override
  State<ChooseFormWidget> createState() => _ChooseFormWidgetState();
}

class _ChooseFormWidgetState extends State<ChooseFormWidget> {
  late ChooseFormModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChooseFormModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

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
        height: MediaQuery.sizeOf(context).height * 0.95,
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
                    width: () {
                      if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
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
                      if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
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
                      shape: BoxShape.circle,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'เลือกแบบฟอร์ม',
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
                  wrapWithModel(
                    model: _model.closeModel,
                    updateCallback: () => safeSetState(() {}),
                    child: const CloseWidget(),
                  ),
                ].divide(const SizedBox(width: 8.0)),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
              child: SizedBox(
                width: double.infinity,
                child: TextFormField(
                  controller: _model.textController,
                  focusNode: _model.textFieldFocusNode,
                  autofocus: false,
                  obscureText: false,
                  decoration: InputDecoration(
                    isDense: true,
                    hintText: 'ค้นหา...',
                    hintStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).bodyMediumFamily,
                          letterSpacing: 0.0,
                          useGoogleFonts:
                              !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                        ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0x00000000),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(100.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0x00000000),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(100.0),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(100.0),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(100.0),
                    ),
                    filled: true,
                    fillColor: FlutterFlowTheme.of(context).alternate,
                    prefixIcon: const Icon(
                      Icons.search_rounded,
                      size: 20.0,
                    ),
                  ),
                  style: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).titleSmallFamily,
                        letterSpacing: 0.0,
                        useGoogleFonts:
                            !FlutterFlowTheme.of(context).titleSmallIsCustom,
                      ),
                  cursorColor: FlutterFlowTheme.of(context).primaryText,
                  validator:
                      _model.textControllerValidator.asValidator(context),
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
                      wrapWithModel(
                        model: _model.itemClinicModel1,
                        updateCallback: () => safeSetState(() {}),
                        child: const ItemClinicWidget(
                          nameclinic: 'BloodBank',
                        ),
                      ),
                      Expanded(
                        child: wrapWithModel(
                          model: _model.itemClinicModel2,
                          updateCallback: () => safeSetState(() {}),
                          child: const ItemClinicWidget(
                            nameclinic: 'CYTOLOGY',
                          ),
                        ),
                      ),
                      Expanded(
                        child: wrapWithModel(
                          model: _model.itemClinicModel3,
                          updateCallback: () => safeSetState(() {}),
                          child: const ItemClinicWidget(
                            nameclinic: 'Chemistry',
                          ),
                        ),
                      ),
                      Expanded(
                        child: wrapWithModel(
                          model: _model.itemClinicModel4,
                          updateCallback: () => safeSetState(() {}),
                          child: const ItemClinicWidget(
                            nameclinic: 'FNA & CYTOLOGY',
                          ),
                        ),
                      ),
                      Expanded(
                        child: wrapWithModel(
                          model: _model.itemClinicModel5,
                          updateCallback: () => safeSetState(() {}),
                          child: const ItemClinicWidget(
                            nameclinic: 'Hematology',
                          ),
                        ),
                      ),
                      Expanded(
                        child: wrapWithModel(
                          model: _model.itemClinicModel6,
                          updateCallback: () => safeSetState(() {}),
                          child: const ItemClinicWidget(
                            nameclinic: 'Immunology',
                          ),
                        ),
                      ),
                      Expanded(
                        child: wrapWithModel(
                          model: _model.itemClinicModel7,
                          updateCallback: () => safeSetState(() {}),
                          child: const ItemClinicWidget(
                            nameclinic: 'NON-GYN',
                          ),
                        ),
                      ),
                      Expanded(
                        child: wrapWithModel(
                          model: _model.itemClinicModel8,
                          updateCallback: () => safeSetState(() {}),
                          child: const ItemClinicWidget(
                            nameclinic: 'Microbiology',
                          ),
                        ),
                      ),
                    ]
                        .divide(const SizedBox(height: 8.0))
                        .addToEnd(const SizedBox(height: 48.0)),
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
