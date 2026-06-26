import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/map/widget/item_clinic/item_clinic_widget.dart';
import '/utils/close/close_widget.dart';
import 'dart:ui';
import 'rpt_widget.dart' show RptWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RptModel extends FlutterFlowModel<RptWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for close component.
  late CloseModel closeModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for item_clinic component.
  late ItemClinicModel itemClinicModel1;
  // Model for item_clinic component.
  late ItemClinicModel itemClinicModel2;
  // Model for item_clinic component.
  late ItemClinicModel itemClinicModel3;
  // Model for item_clinic component.
  late ItemClinicModel itemClinicModel4;
  // Model for item_clinic component.
  late ItemClinicModel itemClinicModel5;
  // Model for item_clinic component.
  late ItemClinicModel itemClinicModel6;
  // Model for item_clinic component.
  late ItemClinicModel itemClinicModel7;
  // Model for item_clinic component.
  late ItemClinicModel itemClinicModel8;
  // Model for item_clinic component.
  late ItemClinicModel itemClinicModel9;

  @override
  void initState(BuildContext context) {
    closeModel = createModel(context, () => CloseModel());
    itemClinicModel1 = createModel(context, () => ItemClinicModel());
    itemClinicModel2 = createModel(context, () => ItemClinicModel());
    itemClinicModel3 = createModel(context, () => ItemClinicModel());
    itemClinicModel4 = createModel(context, () => ItemClinicModel());
    itemClinicModel5 = createModel(context, () => ItemClinicModel());
    itemClinicModel6 = createModel(context, () => ItemClinicModel());
    itemClinicModel7 = createModel(context, () => ItemClinicModel());
    itemClinicModel8 = createModel(context, () => ItemClinicModel());
    itemClinicModel9 = createModel(context, () => ItemClinicModel());
  }

  @override
  void dispose() {
    closeModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    itemClinicModel1.dispose();
    itemClinicModel2.dispose();
    itemClinicModel3.dispose();
    itemClinicModel4.dispose();
    itemClinicModel5.dispose();
    itemClinicModel6.dispose();
    itemClinicModel7.dispose();
    itemClinicModel8.dispose();
    itemClinicModel9.dispose();
  }
}
