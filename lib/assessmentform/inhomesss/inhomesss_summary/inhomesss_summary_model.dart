import '/assessmentform/thirtytree/widget/start_as_bottom/start_as_bottom_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'inhomesss_summary_widget.dart' show InhomesssSummaryWidget;
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class InhomesssSummaryModel extends FlutterFlowModel<InhomesssSummaryWidget> {
  ///  State fields for stateful widgets in this page.

  DateTime? datePicked;
  // Model for Start_as_Bottom component.
  late StartAsBottomModel startAsBottomModel;

  @override
  void initState(BuildContext context) {
    startAsBottomModel = createModel(context, () => StartAsBottomModel());
  }

  @override
  void dispose() {
    startAsBottomModel.dispose();
  }
}
