import '/flutter_flow/flutter_flow_util.dart';
import '/homevisitlist/widget/visit_h_o_m_e_s/visit_h_o_m_e_s_widget.dart';
import '/poeple_community/widget/haealth/haealth_widget.dart';
import '/utils/vital_sign/vital_sign_widget.dart';
import '/index.dart';
import 'add_visitinginformation_widget.dart' show AddVisitinginformationWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class AddVisitinginformationModel
    extends FlutterFlowModel<AddVisitinginformationWidget> {
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
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // Model for haealth component.
  late HaealthModel haealthModel;
  // Model for Vital_sign component.
  late VitalSignModel vitalSignModel;
  // Model for Visit_HOMES component.
  late VisitHOMESModel visitHOMESModel;
  // State field(s) for Switch widget.
  bool? switchValue;

  @override
  void initState(BuildContext context) {
    haealthModel = createModel(context, () => HaealthModel());
    vitalSignModel = createModel(context, () => VitalSignModel());
    visitHOMESModel = createModel(context, () => VisitHOMESModel());
  }

  @override
  void dispose() {
    expandableExpandableController.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();

    haealthModel.dispose();
    vitalSignModel.dispose();
    visitHOMESModel.dispose();
  }
}
