import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/utils/close/close_widget.dart';
import 'dart:ui';
import 'search_templetes_widget.dart' show SearchTempletesWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SearchTempletesModel extends FlutterFlowModel<SearchTempletesWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for close component.
  late CloseModel closeModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {
    closeModel = createModel(context, () => CloseModel());
  }

  @override
  void dispose() {
    closeModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
