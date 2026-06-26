import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/poeple_community/widget/item_diabetes/item_diabetes_widget.dart';
import 'dart:ui';
import '/index.dart';
import 'l_a_b_bloodfat_widget.dart' show LABBloodfatWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LABBloodfatModel extends FlutterFlowModel<LABBloodfatWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Checkbox widget.
  bool? checkboxValue1;
  // Model for item_diabetes component.
  late ItemDiabetesModel itemDiabetesModel1;
  // Model for item_diabetes component.
  late ItemDiabetesModel itemDiabetesModel2;
  // State field(s) for Checkbox widget.
  bool? checkboxValue2;
  // Model for item_diabetes component.
  late ItemDiabetesModel itemDiabetesModel3;
  // Model for item_diabetes component.
  late ItemDiabetesModel itemDiabetesModel4;
  // Model for item_diabetes component.
  late ItemDiabetesModel itemDiabetesModel5;

  @override
  void initState(BuildContext context) {
    itemDiabetesModel1 = createModel(context, () => ItemDiabetesModel());
    itemDiabetesModel2 = createModel(context, () => ItemDiabetesModel());
    itemDiabetesModel3 = createModel(context, () => ItemDiabetesModel());
    itemDiabetesModel4 = createModel(context, () => ItemDiabetesModel());
    itemDiabetesModel5 = createModel(context, () => ItemDiabetesModel());
  }

  @override
  void dispose() {
    itemDiabetesModel1.dispose();
    itemDiabetesModel2.dispose();
    itemDiabetesModel3.dispose();
    itemDiabetesModel4.dispose();
    itemDiabetesModel5.dispose();
  }
}
