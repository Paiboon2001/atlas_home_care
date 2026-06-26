import '/assessmentform/highbloodpressure/widget/bloodpage/bloodpage_widget.dart';
import '/assessmentform/inhomesss/widget/allgo/allgo_widget.dart';
import '/assessmentform/inhomesss/widget/fam/fam_widget.dart';
import '/assessmentform/inhomesss/widget/fromfood/fromfood_widget.dart';
import '/assessmentform/inhomesss/widget/homes/homes_widget.dart';
import '/assessmentform/inhomesss/widget/sssk/sssk_widget.dart';
import '/assessmentform/inhomesss/widget/tem/tem_widget.dart';
import '/assessmentform/thirtytree/widget/start_as_bottom/start_as_bottom_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import '/index.dart';
import 'form_i_n_h_o_m_e_s_s_s_widget.dart' show FormINHOMESSSWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FormINHOMESSSModel extends FlutterFlowModel<FormINHOMESSSWidget> {
  ///  Local state fields for this page.

  int? pagepalliative = 1;

  ///  State fields for stateful widgets in this page.

  // Model for bloodpage component.
  late BloodpageModel bloodpageModel1;
  // Model for bloodpage component.
  late BloodpageModel bloodpageModel2;
  // Model for bloodpage component.
  late BloodpageModel bloodpageModel3;
  // Model for bloodpage component.
  late BloodpageModel bloodpageModel4;
  // Model for bloodpage component.
  late BloodpageModel bloodpageModel5;
  // Model for bloodpage component.
  late BloodpageModel bloodpageModel6;
  // State field(s) for Checkbox widget.
  bool? checkboxValue1;
  // State field(s) for Checkbox widget.
  bool? checkboxValue2;
  // State field(s) for Checkbox widget.
  bool? checkboxValue3;
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
  // State field(s) for Checkbox widget.
  bool? checkboxValue4;
  // State field(s) for Checkbox widget.
  bool? checkboxValue5;
  // State field(s) for Checkbox widget.
  bool? checkboxValue6;
  // State field(s) for Checkbox widget.
  bool? checkboxValue7;
  // State field(s) for Checkbox widget.
  bool? checkboxValue8;
  // State field(s) for Checkbox widget.
  bool? checkboxValue9;
  // Model for bloodpage component.
  late BloodpageModel bloodpageModel7;
  // Model for bloodpage component.
  late BloodpageModel bloodpageModel8;
  // Model for bloodpage component.
  late BloodpageModel bloodpageModel9;
  // Model for bloodpage component.
  late BloodpageModel bloodpageModel10;
  // Model for bloodpage component.
  late BloodpageModel bloodpageModel11;
  // Model for bloodpage component.
  late BloodpageModel bloodpageModel12;
  // Model for bloodpage component.
  late BloodpageModel bloodpageModel13;
  // Model for bloodpage component.
  late BloodpageModel bloodpageModel14;
  // Model for Start_as_Bottom component.
  late StartAsBottomModel startAsBottomModel1;
  // Model for bloodpage component.
  late BloodpageModel bloodpageModel15;
  // Model for bloodpage component.
  late BloodpageModel bloodpageModel16;
  // Model for bloodpage component.
  late BloodpageModel bloodpageModel17;
  // Model for bloodpage component.
  late BloodpageModel bloodpageModel18;
  // Model for bloodpage component.
  late BloodpageModel bloodpageModel19;
  // Model for bloodpage component.
  late BloodpageModel bloodpageModel20;
  // Model for Start_as_Bottom component.
  late StartAsBottomModel startAsBottomModel2;
  // Model for bloodpage component.
  late BloodpageModel bloodpageModel21;
  // Model for bloodpage component.
  late BloodpageModel bloodpageModel22;
  // Model for bloodpage component.
  late BloodpageModel bloodpageModel23;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode5;
  TextEditingController? textController5;
  String? Function(BuildContext, String?)? textController5Validator;
  // Model for bloodpage component.
  late BloodpageModel bloodpageModel24;
  // Model for bloodpage component.
  late BloodpageModel bloodpageModel25;
  // Model for Start_as_Bottom component.
  late StartAsBottomModel startAsBottomModel3;
  // Model for bloodpage component.
  late BloodpageModel bloodpageModel26;
  // Model for bloodpage component.
  late BloodpageModel bloodpageModel27;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode6;
  TextEditingController? textController6;
  String? Function(BuildContext, String?)? textController6Validator;
  // Model for bloodpage component.
  late BloodpageModel bloodpageModel28;
  // Model for bloodpage component.
  late BloodpageModel bloodpageModel29;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode7;
  TextEditingController? textController7;
  String? Function(BuildContext, String?)? textController7Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode8;
  TextEditingController? textController8;
  String? Function(BuildContext, String?)? textController8Validator;
  // Model for Start_as_Bottom component.
  late StartAsBottomModel startAsBottomModel4;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode9;
  TextEditingController? textController9;
  String? Function(BuildContext, String?)? textController9Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode10;
  TextEditingController? textController10;
  String? Function(BuildContext, String?)? textController10Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode11;
  TextEditingController? textController11;
  String? Function(BuildContext, String?)? textController11Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode12;
  TextEditingController? textController12;
  String? Function(BuildContext, String?)? textController12Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode13;
  TextEditingController? textController13;
  String? Function(BuildContext, String?)? textController13Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode14;
  TextEditingController? textController14;
  String? Function(BuildContext, String?)? textController14Validator;
  // Model for Start_as_Bottom component.
  late StartAsBottomModel startAsBottomModel5;
  // Model for bloodpage component.
  late BloodpageModel bloodpageModel30;
  // Model for bloodpage component.
  late BloodpageModel bloodpageModel31;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode15;
  TextEditingController? textController15;
  String? Function(BuildContext, String?)? textController15Validator;
  // Model for Start_as_Bottom component.
  late StartAsBottomModel startAsBottomModel6;
  // Model for bloodpage component.
  late BloodpageModel bloodpageModel32;
  // Model for bloodpage component.
  late BloodpageModel bloodpageModel33;
  // Model for bloodpage component.
  late BloodpageModel bloodpageModel34;
  // Model for bloodpage component.
  late BloodpageModel bloodpageModel35;
  // Model for Start_as_Bottom component.
  late StartAsBottomModel startAsBottomModel7;
  // Model for Start_as_Bottom component.
  late StartAsBottomModel startAsBottomModel8;

  @override
  void initState(BuildContext context) {
    bloodpageModel1 = createModel(context, () => BloodpageModel());
    bloodpageModel2 = createModel(context, () => BloodpageModel());
    bloodpageModel3 = createModel(context, () => BloodpageModel());
    bloodpageModel4 = createModel(context, () => BloodpageModel());
    bloodpageModel5 = createModel(context, () => BloodpageModel());
    bloodpageModel6 = createModel(context, () => BloodpageModel());
    bloodpageModel7 = createModel(context, () => BloodpageModel());
    bloodpageModel8 = createModel(context, () => BloodpageModel());
    bloodpageModel9 = createModel(context, () => BloodpageModel());
    bloodpageModel10 = createModel(context, () => BloodpageModel());
    bloodpageModel11 = createModel(context, () => BloodpageModel());
    bloodpageModel12 = createModel(context, () => BloodpageModel());
    bloodpageModel13 = createModel(context, () => BloodpageModel());
    bloodpageModel14 = createModel(context, () => BloodpageModel());
    startAsBottomModel1 = createModel(context, () => StartAsBottomModel());
    bloodpageModel15 = createModel(context, () => BloodpageModel());
    bloodpageModel16 = createModel(context, () => BloodpageModel());
    bloodpageModel17 = createModel(context, () => BloodpageModel());
    bloodpageModel18 = createModel(context, () => BloodpageModel());
    bloodpageModel19 = createModel(context, () => BloodpageModel());
    bloodpageModel20 = createModel(context, () => BloodpageModel());
    startAsBottomModel2 = createModel(context, () => StartAsBottomModel());
    bloodpageModel21 = createModel(context, () => BloodpageModel());
    bloodpageModel22 = createModel(context, () => BloodpageModel());
    bloodpageModel23 = createModel(context, () => BloodpageModel());
    bloodpageModel24 = createModel(context, () => BloodpageModel());
    bloodpageModel25 = createModel(context, () => BloodpageModel());
    startAsBottomModel3 = createModel(context, () => StartAsBottomModel());
    bloodpageModel26 = createModel(context, () => BloodpageModel());
    bloodpageModel27 = createModel(context, () => BloodpageModel());
    bloodpageModel28 = createModel(context, () => BloodpageModel());
    bloodpageModel29 = createModel(context, () => BloodpageModel());
    startAsBottomModel4 = createModel(context, () => StartAsBottomModel());
    startAsBottomModel5 = createModel(context, () => StartAsBottomModel());
    bloodpageModel30 = createModel(context, () => BloodpageModel());
    bloodpageModel31 = createModel(context, () => BloodpageModel());
    startAsBottomModel6 = createModel(context, () => StartAsBottomModel());
    bloodpageModel32 = createModel(context, () => BloodpageModel());
    bloodpageModel33 = createModel(context, () => BloodpageModel());
    bloodpageModel34 = createModel(context, () => BloodpageModel());
    bloodpageModel35 = createModel(context, () => BloodpageModel());
    startAsBottomModel7 = createModel(context, () => StartAsBottomModel());
    startAsBottomModel8 = createModel(context, () => StartAsBottomModel());
  }

  @override
  void dispose() {
    bloodpageModel1.dispose();
    bloodpageModel2.dispose();
    bloodpageModel3.dispose();
    bloodpageModel4.dispose();
    bloodpageModel5.dispose();
    bloodpageModel6.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();

    bloodpageModel7.dispose();
    bloodpageModel8.dispose();
    bloodpageModel9.dispose();
    bloodpageModel10.dispose();
    bloodpageModel11.dispose();
    bloodpageModel12.dispose();
    bloodpageModel13.dispose();
    bloodpageModel14.dispose();
    startAsBottomModel1.dispose();
    bloodpageModel15.dispose();
    bloodpageModel16.dispose();
    bloodpageModel17.dispose();
    bloodpageModel18.dispose();
    bloodpageModel19.dispose();
    bloodpageModel20.dispose();
    startAsBottomModel2.dispose();
    bloodpageModel21.dispose();
    bloodpageModel22.dispose();
    bloodpageModel23.dispose();
    textFieldFocusNode4?.dispose();
    textController4?.dispose();

    textFieldFocusNode5?.dispose();
    textController5?.dispose();

    bloodpageModel24.dispose();
    bloodpageModel25.dispose();
    startAsBottomModel3.dispose();
    bloodpageModel26.dispose();
    bloodpageModel27.dispose();
    textFieldFocusNode6?.dispose();
    textController6?.dispose();

    bloodpageModel28.dispose();
    bloodpageModel29.dispose();
    textFieldFocusNode7?.dispose();
    textController7?.dispose();

    textFieldFocusNode8?.dispose();
    textController8?.dispose();

    startAsBottomModel4.dispose();
    textFieldFocusNode9?.dispose();
    textController9?.dispose();

    textFieldFocusNode10?.dispose();
    textController10?.dispose();

    textFieldFocusNode11?.dispose();
    textController11?.dispose();

    textFieldFocusNode12?.dispose();
    textController12?.dispose();

    textFieldFocusNode13?.dispose();
    textController13?.dispose();

    textFieldFocusNode14?.dispose();
    textController14?.dispose();

    startAsBottomModel5.dispose();
    bloodpageModel30.dispose();
    bloodpageModel31.dispose();
    textFieldFocusNode15?.dispose();
    textController15?.dispose();

    startAsBottomModel6.dispose();
    bloodpageModel32.dispose();
    bloodpageModel33.dispose();
    bloodpageModel34.dispose();
    bloodpageModel35.dispose();
    startAsBottomModel7.dispose();
    startAsBottomModel8.dispose();
  }
}
