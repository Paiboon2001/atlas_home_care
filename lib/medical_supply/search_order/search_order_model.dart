import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/homevisitlist/other/item_selecid10/item_selecid10_widget.dart';
import '/utils/close/close_widget.dart';
import 'dart:ui';
import 'search_order_widget.dart' show SearchOrderWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SearchOrderModel extends FlutterFlowModel<SearchOrderWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for close component.
  late CloseModel closeModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for item_Selecid10 component.
  late ItemSelecid10Model itemSelecid10Model;

  @override
  void initState(BuildContext context) {
    closeModel = createModel(context, () => CloseModel());
    itemSelecid10Model = createModel(context, () => ItemSelecid10Model());
  }

  @override
  void dispose() {
    closeModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    itemSelecid10Model.dispose();
  }
}
