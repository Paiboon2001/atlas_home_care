import '/flutter_flow/flutter_flow_util.dart';
import '/map/widget/navigatebutton/navigatebutton_widget.dart';
import '/map/widget/pin/pin_widget.dart';
import '/index.dart';
import 'map_widget.dart' show MapWidget;
import 'package:flutter/material.dart';

class MapModel extends FlutterFlowModel<MapWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for pin component.
  late PinModel pinModel1;
  // Model for navigatebutton component.
  late NavigatebuttonModel navigatebuttonModel;
  // Model for pin component.
  late PinModel pinModel2;
  // Model for pin component.
  late PinModel pinModel3;
  // Model for pin component.
  late PinModel pinModel4;
  // Model for pin component.
  late PinModel pinModel5;
  // Model for pin component.
  late PinModel pinModel6;
  // Model for pin component.
  late PinModel pinModel7;
  // Model for pin component.
  late PinModel pinModel8;

  @override
  void initState(BuildContext context) {
    pinModel1 = createModel(context, () => PinModel());
    navigatebuttonModel = createModel(context, () => NavigatebuttonModel());
    pinModel2 = createModel(context, () => PinModel());
    pinModel3 = createModel(context, () => PinModel());
    pinModel4 = createModel(context, () => PinModel());
    pinModel5 = createModel(context, () => PinModel());
    pinModel6 = createModel(context, () => PinModel());
    pinModel7 = createModel(context, () => PinModel());
    pinModel8 = createModel(context, () => PinModel());
  }

  @override
  void dispose() {
    pinModel1.dispose();
    navigatebuttonModel.dispose();
    pinModel2.dispose();
    pinModel3.dispose();
    pinModel4.dispose();
    pinModel5.dispose();
    pinModel6.dispose();
    pinModel7.dispose();
    pinModel8.dispose();
  }
}
