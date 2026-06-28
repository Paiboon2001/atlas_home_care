import '/flutter_flow/flutter_flow_util.dart';
import '/profile/widget/authens/authens_widget.dart';
import '/index.dart';
import 'authen_code_widget.dart' show AuthenCodeWidget;
import 'package:flutter/material.dart';

class AuthenCodeModel extends FlutterFlowModel<AuthenCodeWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for authens component.
  late AuthensModel authensModel1;
  // Model for authens component.
  late AuthensModel authensModel2;
  // Model for authens component.
  late AuthensModel authensModel3;

  @override
  void initState(BuildContext context) {
    authensModel1 = createModel(context, () => AuthensModel());
    authensModel2 = createModel(context, () => AuthensModel());
    authensModel3 = createModel(context, () => AuthensModel());
  }

  @override
  void dispose() {
    authensModel1.dispose();
    authensModel2.dispose();
    authensModel3.dispose();
  }
}
