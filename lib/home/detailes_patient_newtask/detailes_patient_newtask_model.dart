import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/home/widget/change_datetime/change_datetime_widget.dart';
import '/home/widget/reson_cancel/reson_cancel_widget.dart';
import '/poeple_community/widget/haealth/haealth_widget.dart';
import 'dart:ui';
import '/index.dart';
import 'detailes_patient_newtask_widget.dart' show DetailesPatientNewtaskWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

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
