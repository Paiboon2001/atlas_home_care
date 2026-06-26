import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/poeple_community/widget/item_lab/item_lab_widget.dart';
import 'dart:ui';
import 'choose_option_widget.dart' show ChooseOptionWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ChooseOptionModel extends FlutterFlowModel<ChooseOptionWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue1;
  // Model for item_Lab component.
  late ItemLabModel itemLabModel1;
  // Model for item_Lab component.
  late ItemLabModel itemLabModel2;
  // Model for item_Lab component.
  late ItemLabModel itemLabModel3;
  // Model for item_Lab component.
  late ItemLabModel itemLabModel4;
  // Model for item_Lab component.
  late ItemLabModel itemLabModel5;
  // Model for item_Lab component.
  late ItemLabModel itemLabModel6;
  // State field(s) for Checkbox widget.
  bool? checkboxValue2;
  // Model for item_Lab component.
  late ItemLabModel itemLabModel7;
  // Model for item_Lab component.
  late ItemLabModel itemLabModel8;
  // Model for item_Lab component.
  late ItemLabModel itemLabModel9;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // Model for item_Lab component.
  late ItemLabModel itemLabModel10;
  // Model for item_Lab component.
  late ItemLabModel itemLabModel11;
  // Model for item_Lab component.
  late ItemLabModel itemLabModel12;

  @override
  void initState(BuildContext context) {
    itemLabModel1 = createModel(context, () => ItemLabModel());
    itemLabModel2 = createModel(context, () => ItemLabModel());
    itemLabModel3 = createModel(context, () => ItemLabModel());
    itemLabModel4 = createModel(context, () => ItemLabModel());
    itemLabModel5 = createModel(context, () => ItemLabModel());
    itemLabModel6 = createModel(context, () => ItemLabModel());
    itemLabModel7 = createModel(context, () => ItemLabModel());
    itemLabModel8 = createModel(context, () => ItemLabModel());
    itemLabModel9 = createModel(context, () => ItemLabModel());
    itemLabModel10 = createModel(context, () => ItemLabModel());
    itemLabModel11 = createModel(context, () => ItemLabModel());
    itemLabModel12 = createModel(context, () => ItemLabModel());
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    itemLabModel1.dispose();
    itemLabModel2.dispose();
    itemLabModel3.dispose();
    itemLabModel4.dispose();
    itemLabModel5.dispose();
    itemLabModel6.dispose();
    itemLabModel7.dispose();
    itemLabModel8.dispose();
    itemLabModel9.dispose();
    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    itemLabModel10.dispose();
    itemLabModel11.dispose();
    itemLabModel12.dispose();
  }
}
