import '/flutter_flow/flutter_flow_util.dart';
import '/map/widget/pin/pin_widget.dart';
import 'item_homepatient_widget.dart' show ItemHomepatientWidget;
import 'package:flutter/material.dart';

class ItemHomepatientModel extends FlutterFlowModel<ItemHomepatientWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for pin component.
  late PinModel pinModel;

  @override
  void initState(BuildContext context) {
    pinModel = createModel(context, () => PinModel());
  }

  @override
  void dispose() {
    pinModel.dispose();
  }
}
