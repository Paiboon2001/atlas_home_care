import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'cln_model.dart';
export 'cln_model.dart';

class ClnWidget extends StatefulWidget {
  const ClnWidget({
    super.key,
    required this.namelab,
  });

  /// namelab
  final String? namelab;

  @override
  State<ClnWidget> createState() => _ClnWidgetState();
}

class _ClnWidgetState extends State<ClnWidget> {
  late ClnModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ClnModel());

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
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 12.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
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
                    unselectedWidgetColor:
                        FlutterFlowTheme.of(context).secondaryText,
                  ),
                  child: Checkbox(
                    value: _model.checkboxValue ??= false,
                    onChanged: (newValue) async {
                      safeSetState(() => _model.checkboxValue = newValue!);
                    },
                    side: (FlutterFlowTheme.of(context).secondaryText != null)
                        ? BorderSide(
                            width: 2,
                            color: FlutterFlowTheme.of(context).secondaryText,
                          )
                        : null,
                    activeColor: FlutterFlowTheme.of(context).primary,
                    checkColor:
                        FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                ),
                Text(
                  valueOrDefault<String>(
                    widget.namelab,
                    'name_lab',
                  ),
                  textAlign: TextAlign.start,
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
              ].divide(const SizedBox(width: 8.0)),
            ),
          ),
          Divider(
            height: 1.0,
            thickness: 1.0,
            indent: 40.0,
            color: FlutterFlowTheme.of(context).alternate,
          ),
        ],
      ),
    );
  }
}
