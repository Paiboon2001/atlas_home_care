import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/map/widget/item_clinic/item_clinic_widget.dart';
import '/utils/close/close_widget.dart';
import 'dart:ui';
import 'selecclinic_widget.dart' show SelecclinicWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SelecclinicModel extends FlutterFlowModel<SelecclinicWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for close component.
  late CloseModel closeModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for item_clinic component.
  late ItemClinicModel itemClinicModel;

  @override
  void initState(BuildContext context) {
    closeModel = createModel(context, () => CloseModel());
    itemClinicModel = createModel(context, () => ItemClinicModel());
  }

  @override
  void dispose() {
    closeModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    itemClinicModel.dispose();
  }
}
