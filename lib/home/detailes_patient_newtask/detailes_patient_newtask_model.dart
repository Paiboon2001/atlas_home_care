import '/flutter_flow/flutter_flow_util.dart';
import '/poeple_community/widget/haealth/haealth_widget.dart';
import '/index.dart';
import 'detailes_patient_newtask_widget.dart' show DetailesPatientNewtaskWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class DetailesPatientNewtaskModel
    extends FlutterFlowModel<DetailesPatientNewtaskWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController;

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // Model for haealth component.
  late HaealthModel haealthModel;

  @override
  void initState(BuildContext context) {
    haealthModel = createModel(context, () => HaealthModel());
  }

  @override
  void dispose() {
    expandableExpandableController.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    haealthModel.dispose();
  }
}
