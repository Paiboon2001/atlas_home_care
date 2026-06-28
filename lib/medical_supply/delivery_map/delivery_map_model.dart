import '/flutter_flow/flutter_flow_util.dart';
import '/map/widget/navigatebutton/navigatebutton_widget.dart';
import 'delivery_map_widget.dart' show DeliveryMapWidget;
import 'package:flutter/material.dart';

class DeliveryMapModel extends FlutterFlowModel<DeliveryMapWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for navigatebutton component.
  late NavigatebuttonModel navigatebuttonModel;

  @override
  void initState(BuildContext context) {
    navigatebuttonModel = createModel(context, () => NavigatebuttonModel());
  }

  @override
  void dispose() {
    navigatebuttonModel.dispose();
  }
}
