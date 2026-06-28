import '/flutter_flow/flutter_flow_util.dart';
import '/utils/navbar/navbar_widget.dart';
import 'save_menu_widget.dart' show SaveMenuWidget;
import 'package:flutter/material.dart';

class SaveMenuModel extends FlutterFlowModel<SaveMenuWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for Navbar component.
  late NavbarModel navbarModel;

  @override
  void initState(BuildContext context) {
    navbarModel = createModel(context, () => NavbarModel());
  }

  @override
  void dispose() {
    navbarModel.dispose();
  }
}
