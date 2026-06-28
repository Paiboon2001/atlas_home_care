import '/flutter_flow/flutter_flow_util.dart';
import '/homevisitlist/other/item_p_p_template/item_p_p_template_widget.dart';
import '/utils/close/close_widget.dart';
import 'search_task_widget.dart' show SearchTaskWidget;
import 'package:flutter/material.dart';

class SearchTaskModel extends FlutterFlowModel<SearchTaskWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for close component.
  late CloseModel closeModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for item_PPTemplate component.
  late ItemPPTemplateModel itemPPTemplateModel1;
  // Model for item_PPTemplate component.
  late ItemPPTemplateModel itemPPTemplateModel2;

  @override
  void initState(BuildContext context) {
    closeModel = createModel(context, () => CloseModel());
    itemPPTemplateModel1 = createModel(context, () => ItemPPTemplateModel());
    itemPPTemplateModel2 = createModel(context, () => ItemPPTemplateModel());
  }

  @override
  void dispose() {
    closeModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    itemPPTemplateModel1.dispose();
    itemPPTemplateModel2.dispose();
  }
}
