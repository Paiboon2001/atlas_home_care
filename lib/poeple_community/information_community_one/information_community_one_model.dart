import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/poeple_community/confirm/open_visit/open_visit_widget.dart';
import '/poeple_community/widget/assignments/assignments_widget.dart';
import '/poeple_community/widget/lab/lab_widget.dart';
import '/poeple_community/widget/non_smartcard/non_smartcard_widget.dart';
import '/poeple_community/widget/save_menu/save_menu_widget.dart';
import '/poeple_community/widget/smartcard_cerect/smartcard_cerect_widget.dart';
import '/profile/widget/process_up_pic/process_up_pic_widget.dart';
import '/utils/vital_sign/vital_sign_widget.dart';
import 'dart:ui';
import '/index.dart';
import 'information_community_one_widget.dart'
    show InformationCommunityOneWidget;
import 'package:sticky_headers/sticky_headers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:signature/signature.dart';

class InformationCommunityOneModel
    extends FlutterFlowModel<InformationCommunityOneWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for smartcard_cerect component.
  late SmartcardCerectModel smartcardCerectModel;
  // Model for Non_smartcard component.
  late NonSmartcardModel nonSmartcardModel;
  // Model for Vital_sign component.
  late VitalSignModel vitalSignModel;
  // Model for Assignments component.
  late AssignmentsModel assignmentsModel1;
  // Model for Assignments component.
  late AssignmentsModel assignmentsModel2;
  // Model for Assignments component.
  late AssignmentsModel assignmentsModel3;
  // Model for Assignments component.
  late AssignmentsModel assignmentsModel4;
  // Model for Assignments component.
  late AssignmentsModel assignmentsModel5;
  // Model for Assignments component.
  late AssignmentsModel assignmentsModel6;
  // Model for Assignments component.
  late AssignmentsModel assignmentsModel7;
  // Model for Assignments component.
  late AssignmentsModel assignmentsModel8;
  // Model for Assignments component.
  late AssignmentsModel assignmentsModel9;
  // Model for Assignments component.
  late AssignmentsModel assignmentsModel10;
  // Model for Assignments component.
  late AssignmentsModel assignmentsModel11;
  // Model for Assignments component.
  late AssignmentsModel assignmentsModel12;
  // Model for lab component.
  late LabModel labModel;
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
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode5;
  TextEditingController? textController5;
  String? Function(BuildContext, String?)? textController5Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode6;
  TextEditingController? textController6;
  String? Function(BuildContext, String?)? textController6Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode7;
  TextEditingController? textController7;
  String? Function(BuildContext, String?)? textController7Validator;
  // Model for process_up_pic component.
  late ProcessUpPicModel processUpPicModel;
  // State field(s) for Signature widget.
  SignatureController? signatureController;
  // Model for save_menu component.
  late SaveMenuModel saveMenuModel;

  @override
  void initState(BuildContext context) {
    smartcardCerectModel = createModel(context, () => SmartcardCerectModel());
    nonSmartcardModel = createModel(context, () => NonSmartcardModel());
    vitalSignModel = createModel(context, () => VitalSignModel());
    assignmentsModel1 = createModel(context, () => AssignmentsModel());
    assignmentsModel2 = createModel(context, () => AssignmentsModel());
    assignmentsModel3 = createModel(context, () => AssignmentsModel());
    assignmentsModel4 = createModel(context, () => AssignmentsModel());
    assignmentsModel5 = createModel(context, () => AssignmentsModel());
    assignmentsModel6 = createModel(context, () => AssignmentsModel());
    assignmentsModel7 = createModel(context, () => AssignmentsModel());
    assignmentsModel8 = createModel(context, () => AssignmentsModel());
    assignmentsModel9 = createModel(context, () => AssignmentsModel());
    assignmentsModel10 = createModel(context, () => AssignmentsModel());
    assignmentsModel11 = createModel(context, () => AssignmentsModel());
    assignmentsModel12 = createModel(context, () => AssignmentsModel());
    labModel = createModel(context, () => LabModel());
    processUpPicModel = createModel(context, () => ProcessUpPicModel());
    saveMenuModel = createModel(context, () => SaveMenuModel());
  }

  @override
  void dispose() {
    smartcardCerectModel.dispose();
    nonSmartcardModel.dispose();
    vitalSignModel.dispose();
    assignmentsModel1.dispose();
    assignmentsModel2.dispose();
    assignmentsModel3.dispose();
    assignmentsModel4.dispose();
    assignmentsModel5.dispose();
    assignmentsModel6.dispose();
    assignmentsModel7.dispose();
    assignmentsModel8.dispose();
    assignmentsModel9.dispose();
    assignmentsModel10.dispose();
    assignmentsModel11.dispose();
    assignmentsModel12.dispose();
    labModel.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();

    textFieldFocusNode4?.dispose();
    textController4?.dispose();

    textFieldFocusNode5?.dispose();
    textController5?.dispose();

    textFieldFocusNode6?.dispose();
    textController6?.dispose();

    textFieldFocusNode7?.dispose();
    textController7?.dispose();

    processUpPicModel.dispose();
    signatureController?.dispose();
    saveMenuModel.dispose();
  }
}
