import '/flutter_flow/flutter_flow_util.dart';
import '/homevisitlist/other/item_selecid10/item_selecid10_widget.dart';
import '/utils/close/close_widget.dart';
import 'search_staff_widget.dart' show SearchStaffWidget;
import 'package:flutter/material.dart';

class SearchStaffModel extends FlutterFlowModel<SearchStaffWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for close component.
  late CloseModel closeModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for item_Selecid10 component.
  late ItemSelecid10Model itemSelecid10Model1;
  // Model for item_Selecid10 component.
  late ItemSelecid10Model itemSelecid10Model2;
  // Model for item_Selecid10 component.
  late ItemSelecid10Model itemSelecid10Model3;

  @override
  void initState(BuildContext context) {
    closeModel = createModel(context, () => CloseModel());
    itemSelecid10Model1 = createModel(context, () => ItemSelecid10Model());
    itemSelecid10Model2 = createModel(context, () => ItemSelecid10Model());
    itemSelecid10Model3 = createModel(context, () => ItemSelecid10Model());
  }

  @override
  void dispose() {
    closeModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    itemSelecid10Model1.dispose();
    itemSelecid10Model2.dispose();
    itemSelecid10Model3.dispose();
  }
}
