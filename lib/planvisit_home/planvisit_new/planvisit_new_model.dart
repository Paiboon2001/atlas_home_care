import '/assessmentform/thirtytree/widget/checkfive/checkfive_widget.dart';
import '/assessmentform/thirtytree/widget/checkfore/checkfore_widget.dart';
import '/assessmentform/thirtytree/widget/checkone/checkone_widget.dart';
import '/assessmentform/thirtytree/widget/checkseven/checkseven_widget.dart';
import '/assessmentform/thirtytree/widget/checkthree/checkthree_widget.dart';
import '/assessmentform/thirtytree/widget/checktwo/checktwo_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/planvisit_home/widget/checkit/checkit_widget.dart';
import '/planvisit_home/widget/contract_visit/contract_visit_widget.dart';
import '/index.dart';
import 'planvisit_new_widget.dart' show PlanvisitNewWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlanvisitNewModel extends FlutterFlowModel<PlanvisitNewWidget> {
  ///  Local state fields for this page.

  int? pagevisit = 1;

  ///  State fields for stateful widgets in this page.

  DateTime? datePicked1;
  DateTime? datePicked2;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController1;

  // Model for contract_visit component.
  late ContractVisitModel contractVisitModel1;
  // Model for contract_visit component.
  late ContractVisitModel contractVisitModel2;
  // Model for contract_visit component.
  late ContractVisitModel contractVisitModel3;
  // Model for contract_visit component.
  late ContractVisitModel contractVisitModel4;
  // Model for contract_visit component.
  late ContractVisitModel contractVisitModel5;
  // Model for contract_visit component.
  late ContractVisitModel contractVisitModel6;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController2;

  // Model for contract_visit component.
  late ContractVisitModel contractVisitModel7;
  // Model for contract_visit component.
  late ContractVisitModel contractVisitModel8;
  // Model for contract_visit component.
  late ContractVisitModel contractVisitModel9;
  // Model for contract_visit component.
  late ContractVisitModel contractVisitModel10;
  // Model for contract_visit component.
  late ContractVisitModel contractVisitModel11;
  // Model for contract_visit component.
  late ContractVisitModel contractVisitModel12;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController3;

  // Model for contract_visit component.
  late ContractVisitModel contractVisitModel13;
  // Model for contract_visit component.
  late ContractVisitModel contractVisitModel14;
  // Model for contract_visit component.
  late ContractVisitModel contractVisitModel15;
  // Model for contract_visit component.
  late ContractVisitModel contractVisitModel16;
  // Model for contract_visit component.
  late ContractVisitModel contractVisitModel17;
  // Model for contract_visit component.
  late ContractVisitModel contractVisitModel18;
  // Model for contract_visit component.
  late ContractVisitModel contractVisitModel19;
  // Model for contract_visit component.
  late ContractVisitModel contractVisitModel20;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // Model for checkone component.
  late CheckoneModel checkoneModel1;
  // Model for checkone component.
  late CheckoneModel checkoneModel2;
  // Model for checktwo component.
  late ChecktwoModel checktwoModel1;
  // Model for checktwo component.
  late ChecktwoModel checktwoModel2;
  // Model for checkthree component.
  late CheckthreeModel checkthreeModel1;
  // Model for checkthree component.
  late CheckthreeModel checkthreeModel2;
  // Model for checkfore component.
  late CheckforeModel checkforeModel1;
  // Model for checkfore component.
  late CheckforeModel checkforeModel2;
  // Model for checkfore component.
  late CheckforeModel checkforeModel3;
  // Model for checkfive component.
  late CheckfiveModel checkfiveModel1;
  // Model for checkfive component.
  late CheckfiveModel checkfiveModel2;
  // Model for checkfive component.
  late CheckfiveModel checkfiveModel3;
  // Model for checkit component.
  late CheckitModel checkitModel1;
  // Model for checkit component.
  late CheckitModel checkitModel2;
  // Model for checkit component.
  late CheckitModel checkitModel3;
  // Model for checkit component.
  late CheckitModel checkitModel4;
  // Model for checkseven component.
  late ChecksevenModel checksevenModel1;
  // Model for checkseven component.
  late ChecksevenModel checksevenModel2;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  // Model for checktwo component.
  late ChecktwoModel checktwoModel3;
  // Model for checktwo component.
  late ChecktwoModel checktwoModel4;
  // Model for checktwo component.
  late ChecktwoModel checktwoModel5;
  // Model for checktwo component.
  late ChecktwoModel checktwoModel6;
  // Model for checktwo component.
  late ChecktwoModel checktwoModel7;
  // Model for checktwo component.
  late ChecktwoModel checktwoModel8;
  // Model for checkit component.
  late CheckitModel checkitModel5;
  // Model for checkit component.
  late CheckitModel checkitModel6;
  // Model for checkit component.
  late CheckitModel checkitModel7;
  // Model for checkit component.
  late CheckitModel checkitModel8;
  // Model for checkit component.
  late CheckitModel checkitModel9;
  // Model for checktwo component.
  late ChecktwoModel checktwoModel9;
  // Model for checktwo component.
  late ChecktwoModel checktwoModel10;

  @override
  void initState(BuildContext context) {
    contractVisitModel1 = createModel(context, () => ContractVisitModel());
    contractVisitModel2 = createModel(context, () => ContractVisitModel());
    contractVisitModel3 = createModel(context, () => ContractVisitModel());
    contractVisitModel4 = createModel(context, () => ContractVisitModel());
    contractVisitModel5 = createModel(context, () => ContractVisitModel());
    contractVisitModel6 = createModel(context, () => ContractVisitModel());
    contractVisitModel7 = createModel(context, () => ContractVisitModel());
    contractVisitModel8 = createModel(context, () => ContractVisitModel());
    contractVisitModel9 = createModel(context, () => ContractVisitModel());
    contractVisitModel10 = createModel(context, () => ContractVisitModel());
    contractVisitModel11 = createModel(context, () => ContractVisitModel());
    contractVisitModel12 = createModel(context, () => ContractVisitModel());
    contractVisitModel13 = createModel(context, () => ContractVisitModel());
    contractVisitModel14 = createModel(context, () => ContractVisitModel());
    contractVisitModel15 = createModel(context, () => ContractVisitModel());
    contractVisitModel16 = createModel(context, () => ContractVisitModel());
    contractVisitModel17 = createModel(context, () => ContractVisitModel());
    contractVisitModel18 = createModel(context, () => ContractVisitModel());
    contractVisitModel19 = createModel(context, () => ContractVisitModel());
    contractVisitModel20 = createModel(context, () => ContractVisitModel());
    checkoneModel1 = createModel(context, () => CheckoneModel());
    checkoneModel2 = createModel(context, () => CheckoneModel());
    checktwoModel1 = createModel(context, () => ChecktwoModel());
    checktwoModel2 = createModel(context, () => ChecktwoModel());
    checkthreeModel1 = createModel(context, () => CheckthreeModel());
    checkthreeModel2 = createModel(context, () => CheckthreeModel());
    checkforeModel1 = createModel(context, () => CheckforeModel());
    checkforeModel2 = createModel(context, () => CheckforeModel());
    checkforeModel3 = createModel(context, () => CheckforeModel());
    checkfiveModel1 = createModel(context, () => CheckfiveModel());
    checkfiveModel2 = createModel(context, () => CheckfiveModel());
    checkfiveModel3 = createModel(context, () => CheckfiveModel());
    checkitModel1 = createModel(context, () => CheckitModel());
    checkitModel2 = createModel(context, () => CheckitModel());
    checkitModel3 = createModel(context, () => CheckitModel());
    checkitModel4 = createModel(context, () => CheckitModel());
    checksevenModel1 = createModel(context, () => ChecksevenModel());
    checksevenModel2 = createModel(context, () => ChecksevenModel());
    checktwoModel3 = createModel(context, () => ChecktwoModel());
    checktwoModel4 = createModel(context, () => ChecktwoModel());
    checktwoModel5 = createModel(context, () => ChecktwoModel());
    checktwoModel6 = createModel(context, () => ChecktwoModel());
    checktwoModel7 = createModel(context, () => ChecktwoModel());
    checktwoModel8 = createModel(context, () => ChecktwoModel());
    checkitModel5 = createModel(context, () => CheckitModel());
    checkitModel6 = createModel(context, () => CheckitModel());
    checkitModel7 = createModel(context, () => CheckitModel());
    checkitModel8 = createModel(context, () => CheckitModel());
    checkitModel9 = createModel(context, () => CheckitModel());
    checktwoModel9 = createModel(context, () => ChecktwoModel());
    checktwoModel10 = createModel(context, () => ChecktwoModel());
  }

  @override
  void dispose() {
    expandableExpandableController1.dispose();
    contractVisitModel1.dispose();
    contractVisitModel2.dispose();
    contractVisitModel3.dispose();
    contractVisitModel4.dispose();
    contractVisitModel5.dispose();
    contractVisitModel6.dispose();
    expandableExpandableController2.dispose();
    contractVisitModel7.dispose();
    contractVisitModel8.dispose();
    contractVisitModel9.dispose();
    contractVisitModel10.dispose();
    contractVisitModel11.dispose();
    contractVisitModel12.dispose();
    expandableExpandableController3.dispose();
    contractVisitModel13.dispose();
    contractVisitModel14.dispose();
    contractVisitModel15.dispose();
    contractVisitModel16.dispose();
    contractVisitModel17.dispose();
    contractVisitModel18.dispose();
    contractVisitModel19.dispose();
    contractVisitModel20.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    checkoneModel1.dispose();
    checkoneModel2.dispose();
    checktwoModel1.dispose();
    checktwoModel2.dispose();
    checkthreeModel1.dispose();
    checkthreeModel2.dispose();
    checkforeModel1.dispose();
    checkforeModel2.dispose();
    checkforeModel3.dispose();
    checkfiveModel1.dispose();
    checkfiveModel2.dispose();
    checkfiveModel3.dispose();
    checkitModel1.dispose();
    checkitModel2.dispose();
    checkitModel3.dispose();
    checkitModel4.dispose();
    checksevenModel1.dispose();
    checksevenModel2.dispose();
    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();

    textFieldFocusNode4?.dispose();
    textController4?.dispose();

    checktwoModel3.dispose();
    checktwoModel4.dispose();
    checktwoModel5.dispose();
    checktwoModel6.dispose();
    checktwoModel7.dispose();
    checktwoModel8.dispose();
    checkitModel5.dispose();
    checkitModel6.dispose();
    checkitModel7.dispose();
    checkitModel8.dispose();
    checkitModel9.dispose();
    checktwoModel9.dispose();
    checktwoModel10.dispose();
  }
}
