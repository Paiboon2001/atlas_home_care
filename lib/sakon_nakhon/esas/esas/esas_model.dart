import '/assessmentform/highbloodpressure/widget/bloodpage/bloodpage_widget.dart';
import '/assessmentform/thirtytree/widget/start_as_bottom/start_as_bottom_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/sakon_nakhon/esas/ratepiont/ratepiont_widget.dart';
import '/index.dart';
import 'esas_widget.dart' show EsasWidget;
import 'package:flutter/material.dart';
import 'package:signature/signature.dart';

class EsasModel extends FlutterFlowModel<EsasWidget> {
  ///  Local state fields for this page.

  int? esas = 1;

  ///  State fields for stateful widgets in this page.

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
  // Model for bloodpage component.
  late BloodpageModel bloodpageModel1;
  // Model for bloodpage component.
  late BloodpageModel bloodpageModel2;
  // Model for bloodpage component.
  late BloodpageModel bloodpageModel3;
  // Model for ratepiont component.
  late RatepiontModel ratepiontModel1;
  // Model for ratepiont component.
  late RatepiontModel ratepiontModel2;
  // Model for ratepiont component.
  late RatepiontModel ratepiontModel3;
  // Model for ratepiont component.
  late RatepiontModel ratepiontModel4;
  // Model for ratepiont component.
  late RatepiontModel ratepiontModel5;
  // Model for ratepiont component.
  late RatepiontModel ratepiontModel6;
  // Model for ratepiont component.
  late RatepiontModel ratepiontModel7;
  // Model for ratepiont component.
  late RatepiontModel ratepiontModel8;
  // Model for ratepiont component.
  late RatepiontModel ratepiontModel9;
  // Model for ratepiont component.
  late RatepiontModel ratepiontModel10;
  // Model for Start_as_Bottom component.
  late StartAsBottomModel startAsBottomModel1;
  // State field(s) for Signature widget.
  SignatureController? signatureController1;
  // State field(s) for Signature widget.
  SignatureController? signatureController2;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  // Model for Start_as_Bottom component.
  late StartAsBottomModel startAsBottomModel2;

  @override
  void initState(BuildContext context) {
    bloodpageModel1 = createModel(context, () => BloodpageModel());
    bloodpageModel2 = createModel(context, () => BloodpageModel());
    bloodpageModel3 = createModel(context, () => BloodpageModel());
    ratepiontModel1 = createModel(context, () => RatepiontModel());
    ratepiontModel2 = createModel(context, () => RatepiontModel());
    ratepiontModel3 = createModel(context, () => RatepiontModel());
    ratepiontModel4 = createModel(context, () => RatepiontModel());
    ratepiontModel5 = createModel(context, () => RatepiontModel());
    ratepiontModel6 = createModel(context, () => RatepiontModel());
    ratepiontModel7 = createModel(context, () => RatepiontModel());
    ratepiontModel8 = createModel(context, () => RatepiontModel());
    ratepiontModel9 = createModel(context, () => RatepiontModel());
    ratepiontModel10 = createModel(context, () => RatepiontModel());
    startAsBottomModel1 = createModel(context, () => StartAsBottomModel());
    startAsBottomModel2 = createModel(context, () => StartAsBottomModel());
  }

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();

    bloodpageModel1.dispose();
    bloodpageModel2.dispose();
    bloodpageModel3.dispose();
    ratepiontModel1.dispose();
    ratepiontModel2.dispose();
    ratepiontModel3.dispose();
    ratepiontModel4.dispose();
    ratepiontModel5.dispose();
    ratepiontModel6.dispose();
    ratepiontModel7.dispose();
    ratepiontModel8.dispose();
    ratepiontModel9.dispose();
    ratepiontModel10.dispose();
    startAsBottomModel1.dispose();
    signatureController1?.dispose();
    signatureController2?.dispose();
    textFieldFocusNode4?.dispose();
    textController4?.dispose();

    startAsBottomModel2.dispose();
  }
}
