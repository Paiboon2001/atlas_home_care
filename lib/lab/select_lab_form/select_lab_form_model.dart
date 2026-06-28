import '/flutter_flow/flutter_flow_util.dart';
import '/poeple_community/widget/choose_lab/choose_lab_widget.dart';
import '/index.dart';
import 'select_lab_form_widget.dart' show SelectLabFormWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class SelectLabFormModel extends FlutterFlowModel<SelectLabFormWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController;

  // State field(s) for Checkbox widget.
  bool? checkboxValue1;
  // Model for choose_lab component.
  late ChooseLabModel chooseLabModel1;
  // Model for choose_lab component.
  late ChooseLabModel chooseLabModel2;
  // State field(s) for Checkbox widget.
  bool? checkboxValue2;
  // Model for choose_lab component.
  late ChooseLabModel chooseLabModel3;
  // Model for choose_lab component.
  late ChooseLabModel chooseLabModel4;
  // Model for choose_lab component.
  late ChooseLabModel chooseLabModel5;

  @override
  void initState(BuildContext context) {
    chooseLabModel1 = createModel(context, () => ChooseLabModel());
    chooseLabModel2 = createModel(context, () => ChooseLabModel());
    chooseLabModel3 = createModel(context, () => ChooseLabModel());
    chooseLabModel4 = createModel(context, () => ChooseLabModel());
    chooseLabModel5 = createModel(context, () => ChooseLabModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    expandableExpandableController.dispose();
    chooseLabModel1.dispose();
    chooseLabModel2.dispose();
    chooseLabModel3.dispose();
    chooseLabModel4.dispose();
    chooseLabModel5.dispose();
  }
}
