import '/utils/sucess/sucess_widget.dart';
import 'package:flutter/material.dart';

/// Navigate away via [navigate], then flash the green "บันทึกสำเร็จ" toast
/// (~3s) over the destination page. Uses a non-blocking overlay entry
/// (IgnorePointer) so the page underneath stays fully interactive.
///
/// Every "บันทึก" button in the app goes through this, so saving always looks
/// the same: leave the form first, confirm on the page you land on.
Future<void> saveThenToast(BuildContext context, VoidCallback navigate) async {
  final OverlayState? overlay =
      Navigator.of(context, rootNavigator: true).overlay;
  navigate(); // go to the next page first
  // Let the route transition settle before overlaying the toast.
  await Future.delayed(const Duration(milliseconds: 20));
  if (overlay == null || !overlay.mounted) return;
  final entry = OverlayEntry(
    builder: (_) => const IgnorePointer(
      child: Material(
        type: MaterialType.transparency,
        child: SizedBox.expand(
          child: SucessWidget(),
        ),
      ),
    ),
  );
  overlay.insert(entry);
  await Future.delayed(const Duration(milliseconds: 3000));
  entry.remove();
}
