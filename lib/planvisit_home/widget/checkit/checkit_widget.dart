import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'checkit_model.dart';
export 'checkit_model.dart';

class CheckitWidget extends StatefulWidget {
  const CheckitWidget({
    super.key,
    required this.text,
  });

  final String? text;

  @override
  State<CheckitWidget> createState() => _CheckitWidgetState();
}

class _CheckitWidgetState extends State<CheckitWidget> {
  late CheckitModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CheckitModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        InkWell(
          splashColor: Colors.transparent,
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () async {
            if (_model.ffValue!) {
              safeSetState(() {
                _model.ffValue = false;
              });
            } else {
              safeSetState(() {
                _model.ffValue = true;
              });
            }
          },
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  _model.ffValue == true
                      ? FlutterFlowTheme.of(context).secondary
                      : FlutterFlowTheme.of(context).secondaryBackground,
                  _model.ffValue == true
                      ? FlutterFlowTheme.of(context).primary
                      : FlutterFlowTheme.of(context).secondaryBackground
                ],
                stops: [0.0, 1.0],
                begin: AlignmentDirectional(1.0, 0.34),
                end: AlignmentDirectional(-1.0, -0.34),
              ),
              borderRadius: BorderRadius.circular(16.0),
              border: Border.all(
                color: _model.ffValue == true
                    ? FlutterFlowTheme.of(context).secondaryBackground
                    : Color(0xFFCED4E6),
                width: 1.0,
              ),
            ),
            child: Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(12.0, 16.0, 12.0, 16.0),
                child: Text(
                  valueOrDefault<String>(
                    widget!.text,
                    'na',
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodyMediumFamily,
                        color: _model.ffValue == true
                            ? FlutterFlowTheme.of(context).secondaryBackground
                            : FlutterFlowTheme.of(context).secondaryText,
                        letterSpacing: 0.0,
                        useGoogleFonts:
                            !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                      ),
                ),
              ),
            ),
          ),
        ),
        Theme(
          data: ThemeData(
            checkboxTheme: CheckboxThemeData(
              visualDensity: VisualDensity.compact,
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4.0),
              ),
            ),
            unselectedWidgetColor: Colors.transparent,
          ),
          child: Checkbox(
            value: _model.ffValue ??= false,
            onChanged: (newValue) async {
              safeSetState(() => _model.ffValue = newValue!);
            },
            side: (Colors.transparent != null)
                ? BorderSide(
                    width: 2,
                    color: Colors.transparent!,
                  )
                : null,
            activeColor: Colors.transparent,
            checkColor: Colors.transparent,
          ),
        ),
      ],
    );
  }
}
