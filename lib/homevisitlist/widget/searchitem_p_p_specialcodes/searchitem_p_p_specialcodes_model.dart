import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/homevisitlist/other/item_selec_p_p_specialcodes/item_selec_p_p_specialcodes_widget.dart';
import '/utils/close/close_widget.dart';
import 'dart:ui';
import 'searchitem_p_p_specialcodes_widget.dart'
    show SearchitemPPSpecialcodesWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SearchitemPPSpecialcodesModel
    extends FlutterFlowModel<SearchitemPPSpecialcodesWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for close component.
  late CloseModel closeModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for item_SelecPPSpecialcodes component.
  late ItemSelecPPSpecialcodesModel itemSelecPPSpecialcodesModel1;
  // Model for item_SelecPPSpecialcodes component.
  late ItemSelecPPSpecialcodesModel itemSelecPPSpecialcodesModel2;

  @override
  void initState(BuildContext context) {
    closeModel = createModel(context, () => CloseModel());
    itemSelecPPSpecialcodesModel1 =
        createModel(context, () => ItemSelecPPSpecialcodesModel());
    itemSelecPPSpecialcodesModel2 =
        createModel(context, () => ItemSelecPPSpecialcodesModel());
  }

  @override
  void dispose() {
    closeModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    itemSelecPPSpecialcodesModel1.dispose();
    itemSelecPPSpecialcodesModel2.dispose();
  }
}
