import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'details_lab_model.dart';
export 'details_lab_model.dart';

class DetailsLabWidget extends StatefulWidget {
  const DetailsLabWidget({
    super.key,
    required this.namelab,
  });

  /// namelab
  final String? namelab;

  @override
  State<DetailsLabWidget> createState() => _DetailsLabWidgetState();
}

class _DetailsLabWidgetState extends State<DetailsLabWidget> {
  late DetailsLabModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DetailsLabModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(24.0, 16.0, 24.0, 16.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                valueOrDefault<String>(
                  widget.namelab,
                  'name_lab',
                ),
                textAlign: TextAlign.start,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                      color: FlutterFlowTheme.of(context).primaryText,
                      letterSpacing: 0.0,
                      useGoogleFonts:
                          !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                    ),
              ),
            ].divide(const SizedBox(width: 8.0)),
          ),
        ),
        Divider(
          height: 1.0,
          thickness: 1.0,
          indent: 24.0,
          endIndent: 24.0,
          color: FlutterFlowTheme.of(context).alternate,
        ),
      ],
    );
  }
}
