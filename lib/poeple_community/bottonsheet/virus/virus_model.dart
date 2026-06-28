import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/poeple_community/widget/cln/cln_widget.dart';
import 'virus_widget.dart' show VirusWidget;
import 'package:flutter/material.dart';

class VirusModel extends FlutterFlowModel<VirusWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
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
  // Model for cln component.
  late ClnModel clnModel7;

  @override
  void initState(BuildContext context) {
    clnModel1 = createModel(context, () => ClnModel());
    clnModel2 = createModel(context, () => ClnModel());
    clnModel3 = createModel(context, () => ClnModel());
    clnModel4 = createModel(context, () => ClnModel());
    clnModel5 = createModel(context, () => ClnModel());
    clnModel6 = createModel(context, () => ClnModel());
    clnModel7 = createModel(context, () => ClnModel());
  }

  @override
  void dispose() {
    clnModel1.dispose();
    clnModel2.dispose();
    clnModel3.dispose();
    clnModel4.dispose();
    clnModel5.dispose();
    clnModel6.dispose();
    clnModel7.dispose();
  }
}
