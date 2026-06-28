import '/assessmentform/inhomesss/widget/result_i_n_h_o_m_e_s_s_s/result_i_n_h_o_m_e_s_s_s_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'inhomess_result_widget.dart' show InhomessResultWidget;
import 'package:flutter/material.dart';

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
