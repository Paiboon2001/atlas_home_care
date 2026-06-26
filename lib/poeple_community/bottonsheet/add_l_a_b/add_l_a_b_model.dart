import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/utils/close/close_widget.dart';
import 'dart:ui';
import '/index.dart';
import 'add_l_a_b_widget.dart' show AddLABWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddLABModel extends FlutterFlowModel<AddLABWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for close component.
  late CloseModel closeModel;
  // State field(s) for Checkbox widget.
  bool? checkboxValue1;
  // State field(s) for Checkbox widget.
  bool? checkboxValue2;
  // State field(s) for Checkbox widget.
  bool? checkboxValue3;
  // State field(s) for Checkbox widget.
  bool? checkboxValue4;

  @override
  void initState(BuildContext context) {
    closeModel = createModel(context, () => CloseModel());
  }

  @override
  void dispose() {
    closeModel.dispose();
  }
}
