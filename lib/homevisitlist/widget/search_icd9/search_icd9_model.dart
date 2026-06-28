import '/flutter_flow/flutter_flow_util.dart';
import '/homevisitlist/other/item_selecid9/item_selecid9_widget.dart';
import '/utils/close/close_widget.dart';
import 'search_icd9_widget.dart' show SearchIcd9Widget;
import 'package:flutter/material.dart';

class SearchIcd9Model extends FlutterFlowModel<SearchIcd9Widget> {
  ///  State fields for stateful widgets in this component.

  // Model for close component.
  late CloseModel closeModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for item_Selecid9 component.
  late ItemSelecid9Model itemSelecid9Model1;
  // Model for item_Selecid9 component.
  late ItemSelecid9Model itemSelecid9Model2;
  // Model for item_Selecid9 component.
  late ItemSelecid9Model itemSelecid9Model3;

  @override
  void initState(BuildContext context) {
    closeModel = createModel(context, () => CloseModel());
    itemSelecid9Model1 = createModel(context, () => ItemSelecid9Model());
    itemSelecid9Model2 = createModel(context, () => ItemSelecid9Model());
    itemSelecid9Model3 = createModel(context, () => ItemSelecid9Model());
  }

  @override
  void dispose() {
    closeModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    itemSelecid9Model1.dispose();
    itemSelecid9Model2.dispose();
    itemSelecid9Model3.dispose();
  }
}
