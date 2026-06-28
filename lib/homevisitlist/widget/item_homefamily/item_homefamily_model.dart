import '/flutter_flow/flutter_flow_util.dart';
import '/map/widget/pin_locate/pin_locate_widget.dart';
import 'item_homefamily_widget.dart' show ItemHomefamilyWidget;
import 'package:flutter/material.dart';

class ItemHomefamilyModel extends FlutterFlowModel<ItemHomefamilyWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for pin_locate component.
  late PinLocateModel pinLocateModel;

  @override
  void initState(BuildContext context) {
    pinLocateModel = createModel(context, () => PinLocateModel());
  }

  @override
  void dispose() {
    pinLocateModel.dispose();
  }
}
