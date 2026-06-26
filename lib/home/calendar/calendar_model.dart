import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/home/widget/number/number_widget.dart';
import 'dart:ui';
import 'calendar_widget.dart' show CalendarWidget;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CalendarModel extends FlutterFlowModel<CalendarWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  DateTime? datePicked;
  // Model for number component.
  late NumberModel numberModel1;
  // Model for number component.
  late NumberModel numberModel2;
  // Model for number component.
  late NumberModel numberModel3;
  // Model for number component.
  late NumberModel numberModel4;
  // Model for number component.
  late NumberModel numberModel5;
  // Model for number component.
  late NumberModel numberModel6;
  // Model for number component.
  late NumberModel numberModel7;

  @override
  void initState(BuildContext context) {
    numberModel1 = createModel(context, () => NumberModel());
    numberModel2 = createModel(context, () => NumberModel());
    numberModel3 = createModel(context, () => NumberModel());
    numberModel4 = createModel(context, () => NumberModel());
    numberModel5 = createModel(context, () => NumberModel());
    numberModel6 = createModel(context, () => NumberModel());
    numberModel7 = createModel(context, () => NumberModel());
  }

  @override
  void dispose() {
    numberModel1.dispose();
    numberModel2.dispose();
    numberModel3.dispose();
    numberModel4.dispose();
    numberModel5.dispose();
    numberModel6.dispose();
    numberModel7.dispose();
  }
}
