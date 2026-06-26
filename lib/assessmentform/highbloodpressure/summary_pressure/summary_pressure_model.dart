import '/assessmentform/highbloodpressure/widget/sum/sum_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'summary_pressure_widget.dart' show SummaryPressureWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SummaryPressureModel extends FlutterFlowModel<SummaryPressureWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Sum component.
  late SumModel sumModel;

  @override
  void initState(BuildContext context) {
    sumModel = createModel(context, () => SumModel());
  }

  @override
  void dispose() {
    sumModel.dispose();
  }
}
