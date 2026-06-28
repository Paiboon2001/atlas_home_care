import '/flutter_flow/flutter_flow_util.dart';
import '/poeple_community/widget/cln/cln_widget.dart';
import 'check_cln_widget.dart' show CheckClnWidget;
import 'package:flutter/material.dart';

class CheckClnModel extends FlutterFlowModel<CheckClnWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for cln component.
  late ClnModel clnModel1;
  // Model for cln component.
  late ClnModel clnModel2;
  // Model for cln component.
  late ClnModel clnModel3;
  // Model for cln component.
  late ClnModel clnModel4;
  // Model for cln component.
  late ClnModel clnModel5;
  // Model for cln component.
  late ClnModel clnModel6;

  @override
  void initState(BuildContext context) {
    clnModel1 = createModel(context, () => ClnModel());
    clnModel2 = createModel(context, () => ClnModel());
    clnModel3 = createModel(context, () => ClnModel());
    clnModel4 = createModel(context, () => ClnModel());
    clnModel5 = createModel(context, () => ClnModel());
    clnModel6 = createModel(context, () => ClnModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    clnModel1.dispose();
    clnModel2.dispose();
    clnModel3.dispose();
    clnModel4.dispose();
    clnModel5.dispose();
    clnModel6.dispose();
  }
}
