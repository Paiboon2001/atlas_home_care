import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/login/widget/hospital_cs/hospital_cs_widget.dart';
import 'dart:math';
import 'dart:ui';
import '/index.dart';
import 'choose_hos_widget.dart' show ChooseHosWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ChooseHosModel extends FlutterFlowModel<ChooseHosWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for hospital_cs component.
  late HospitalCsModel hospitalCsModel1;
  // Model for hospital_cs component.
  late HospitalCsModel hospitalCsModel2;
  // Model for hospital_cs component.
  late HospitalCsModel hospitalCsModel3;
  // Model for hospital_cs component.
  late HospitalCsModel hospitalCsModel4;
  // Model for hospital_cs component.
  late HospitalCsModel hospitalCsModel5;
  // Model for hospital_cs component.
  late HospitalCsModel hospitalCsModel6;
  // Model for hospital_cs component.
  late HospitalCsModel hospitalCsModel7;
  // Model for hospital_cs component.
  late HospitalCsModel hospitalCsModel8;
  // Model for hospital_cs component.
  late HospitalCsModel hospitalCsModel9;
  // Model for hospital_cs component.
  late HospitalCsModel hospitalCsModel10;
  // Model for hospital_cs component.
  late HospitalCsModel hospitalCsModel11;
  // Model for hospital_cs component.
  late HospitalCsModel hospitalCsModel12;
  // Model for hospital_cs component.
  late HospitalCsModel hospitalCsModel13;
  // Model for hospital_cs component.
  late HospitalCsModel hospitalCsModel14;

  @override
  void initState(BuildContext context) {
    hospitalCsModel1 = createModel(context, () => HospitalCsModel());
    hospitalCsModel2 = createModel(context, () => HospitalCsModel());
    hospitalCsModel3 = createModel(context, () => HospitalCsModel());
    hospitalCsModel4 = createModel(context, () => HospitalCsModel());
    hospitalCsModel5 = createModel(context, () => HospitalCsModel());
    hospitalCsModel6 = createModel(context, () => HospitalCsModel());
    hospitalCsModel7 = createModel(context, () => HospitalCsModel());
    hospitalCsModel8 = createModel(context, () => HospitalCsModel());
    hospitalCsModel9 = createModel(context, () => HospitalCsModel());
    hospitalCsModel10 = createModel(context, () => HospitalCsModel());
    hospitalCsModel11 = createModel(context, () => HospitalCsModel());
    hospitalCsModel12 = createModel(context, () => HospitalCsModel());
    hospitalCsModel13 = createModel(context, () => HospitalCsModel());
    hospitalCsModel14 = createModel(context, () => HospitalCsModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    hospitalCsModel1.dispose();
    hospitalCsModel2.dispose();
    hospitalCsModel3.dispose();
    hospitalCsModel4.dispose();
    hospitalCsModel5.dispose();
    hospitalCsModel6.dispose();
    hospitalCsModel7.dispose();
    hospitalCsModel8.dispose();
    hospitalCsModel9.dispose();
    hospitalCsModel10.dispose();
    hospitalCsModel11.dispose();
    hospitalCsModel12.dispose();
    hospitalCsModel13.dispose();
    hospitalCsModel14.dispose();
  }
}
