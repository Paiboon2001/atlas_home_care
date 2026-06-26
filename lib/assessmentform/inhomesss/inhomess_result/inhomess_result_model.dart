import '/assessmentform/inhomesss/widget/result_i_n_h_o_m_e_s_s_s/result_i_n_h_o_m_e_s_s_s_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'inhomess_result_widget.dart' show InhomessResultWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class InhomessResultModel extends FlutterFlowModel<InhomessResultWidget> {
  ///  Local state fields for this page.

  int? pagepalliative = 1;

  ///  State fields for stateful widgets in this page.

  // Model for result_INHOMESSS component.
  late ResultINHOMESSSModel resultINHOMESSSModel;

  @override
  void initState(BuildContext context) {
    resultINHOMESSSModel = createModel(context, () => ResultINHOMESSSModel());
  }

  @override
  void dispose() {
    resultINHOMESSSModel.dispose();
  }
}
