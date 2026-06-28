import '/flutter_flow/flutter_flow_util.dart';
import '/map/widget/item_clinic/item_clinic_widget.dart';
import '/utils/close/close_widget.dart';
import 'selecclinic_widget.dart' show SelecclinicWidget;
import 'package:flutter/material.dart';

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
