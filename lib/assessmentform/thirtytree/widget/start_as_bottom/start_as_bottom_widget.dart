import '/flutter_flow/flutter_flow_util.dart';
import '/components/main_button_widget.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'start_as_bottom_model.dart';
export 'start_as_bottom_model.dart';

class StartAsBottomWidget extends StatefulWidget {
  const StartAsBottomWidget({
    super.key,
    required this.text,
  });

  final String? text;

  @override
  State<StartAsBottomWidget> createState() => _StartAsBottomWidgetState();
}

class _StartAsBottomWidgetState extends State<StartAsBottomWidget> {
  late StartAsBottomModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StartAsBottomModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(24.0),
        topRight: Radius.circular(24.0),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 2.0,
          sigmaY: 2.0,
        ),
        child: Container(
          decoration: const BoxDecoration(
            color: Color(0x4BF5F7FA),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24.0),
              topRight: Radius.circular(24.0),
            ),
          ),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 24.0),
                child: MainButton(
                  text: widget.text!,
                  onPressed: () {
                    print('Button pressed ...');
                  },
                ),
              ),
              Container(
                width: double.infinity,
                height: 88.0,
                decoration: const BoxDecoration(
                  color: Colors.transparent,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
