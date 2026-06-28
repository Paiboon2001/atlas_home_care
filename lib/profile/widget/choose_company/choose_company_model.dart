import '/flutter_flow/flutter_flow_util.dart';
import '/utils/close/close_widget.dart';
import 'choose_company_widget.dart' show ChooseCompanyWidget;
import 'package:flutter/material.dart';

class ChooseCompanyModel extends FlutterFlowModel<ChooseCompanyWidget> {
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
