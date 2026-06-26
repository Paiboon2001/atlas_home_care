import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'contract_visit_model.dart';
export 'contract_visit_model.dart';

class ContractVisitWidget extends StatefulWidget {
  const ContractVisitWidget({super.key});

  @override
  State<ContractVisitWidget> createState() => _ContractVisitWidgetState();
}

class _ContractVisitWidgetState extends State<ContractVisitWidget> {
  late ContractVisitModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ContractVisitModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () async {
        if (_model.checkboxValue!) {
          safeSetState(() {
            _model.checkboxValue = false;
          });
        } else {
          safeSetState(() {
            _model.checkboxValue = true;
          });
        }
      },
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Theme(
            data: ThemeData(
              checkboxTheme: CheckboxThemeData(
                visualDensity: VisualDensity.compact,
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.0),
                ),
              ),
              unselectedWidgetColor: FlutterFlowTheme.of(context).secondaryText,
            ),
            child: Checkbox(
              value: _model.checkboxValue ??= false,
              onChanged: (newValue) async {
                safeSetState(() => _model.checkboxValue = newValue!);
              },
              side: (FlutterFlowTheme.of(context).secondaryText != null)
                  ? BorderSide(
                      width: 2,
                      color: FlutterFlowTheme.of(context).secondaryText!,
                    )
                  : null,
              activeColor: FlutterFlowTheme.of(context).primary,
              checkColor: FlutterFlowTheme.of(context).secondaryBackground,
            ),
          ),
          Expanded(
            child: Align(
              alignment: AlignmentDirectional(-1.0, 0.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                child: Text(
                  'fact that a reader will be distracted',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodyMediumFamily,
                        color: _model.checkboxValue == true
                            ? FlutterFlowTheme.of(context).primaryText
                            : FlutterFlowTheme.of(context).secondaryText,
                        letterSpacing: 0.0,
                        useGoogleFonts:
                            !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                      ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
