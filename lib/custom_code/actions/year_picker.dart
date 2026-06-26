// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:month_picker_dialog/month_picker_dialog.dart' as YearPicker;

Future<DateTime?> yearPicker(
  BuildContext context,
  DateTime? initialDate,
  DateTime? firstDate,
  DateTime? lastDate,
) async {
  return await YearPicker.showMonthPicker(
    context: context,
    initialDate: initialDate ?? DateTime.now(),
    firstDate: firstDate ?? DateTime(DateTime.now().year - 1900),
    lastDate: lastDate ?? DateTime(DateTime.now().year + 2100),
  );
  // Add your function code here!
}
