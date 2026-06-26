import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/planvisit_home/widget/resoncc/resoncc_widget.dart';
import '/utils/close/close_widget.dart';
import 'dart:ui';
import 'option2_widget.dart' show Option2Widget;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Option2Model extends FlutterFlowModel<Option2Widget> {
  ///  State fields for stateful widgets in this component.

  // Model for close component.
  late CloseModel closeModel;

  @override
  void initState(BuildContext context) {
    closeModel = createModel(context, () => CloseModel());
  }

  @override
  void dispose() {
    closeModel.dispose();
  }
}
