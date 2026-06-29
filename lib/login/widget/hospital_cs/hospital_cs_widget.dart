import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'hospital_cs_model.dart';
export 'hospital_cs_model.dart';

class HospitalCsWidget extends StatefulWidget {
  const HospitalCsWidget({
    super.key,
    required this.text,
    required this.chand,
  });

  final String? text;
  final String? chand;

  @override
  State<HospitalCsWidget> createState() => _HospitalCsWidgetState();
}

class _HospitalCsWidgetState extends State<HospitalCsWidget> {
  late HospitalCsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HospitalCsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    final bool selected = FFAppState().cshospi == widget.chand;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(24.0, 16.0, 16.0, 0.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              // Radio indicator
              Container(
                width: 20.0,
                height: 20.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: selected
                        ? FlutterFlowTheme.of(context).primary
                        : const Color(0xFFC4C9D0),
                    width: 2.0,
                  ),
                ),
                child: selected
                    ? Center(
                        child: Container(
                          width: 10.0,
                          height: 10.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: FlutterFlowTheme.of(context).primary,
                          ),
                        ),
                      )
                    : null,
              ),
              const SizedBox(width: 24.0),
              Expanded(
                child: Text(
                  valueOrDefault<String>(
                    widget.text,
                    'na',
                  ),
                  style: FlutterFlowTheme.of(context).bodyLarge.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodyLargeFamily,
                        color: const Color(0xFF041228),
                        fontSize: 16.0,
                        letterSpacing: -0.16,
                        fontWeight:
                            selected ? FontWeight.w600 : FontWeight.w400,
                        useGoogleFonts:
                            !FlutterFlowTheme.of(context).bodyLargeIsCustom,
                      ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 16.0),
        // Divider line (inset to align under the label)
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(68.0, 0.0, 16.0, 0.0),
          child: Container(
            width: double.infinity,
            height: 1.0,
            color: const Color(0xFFE5E8EB),
          ),
        ),
      ],
    );
  }
}
