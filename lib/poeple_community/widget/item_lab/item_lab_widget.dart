import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'item_lab_model.dart';
export 'item_lab_model.dart';

class ItemLabWidget extends StatefulWidget {
  const ItemLabWidget({
    super.key,
    required this.namelab,
  });

  /// namelab
  final String? namelab;

  @override
  State<ItemLabWidget> createState() => _ItemLabWidgetState();
}

class _ItemLabWidgetState extends State<ItemLabWidget> {
  late ItemLabModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ItemLabModel());

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
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 12.0),
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
                            color: FlutterFlowTheme.of(context).secondaryText!,
                          )
                        : null,
                    activeColor: FlutterFlowTheme.of(context).primary,
                    checkColor:
                        FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                ),
                Text(
                  valueOrDefault<String>(
                    widget!.namelab,
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
              ].divide(SizedBox(width: 8.0)),
            ),
          ),
          Divider(
            height: 1.0,
            thickness: 1.0,
            indent: 40.0,
            endIndent: 16.0,
            color: FlutterFlowTheme.of(context).alternate,
          ),
        ],
      ),
    );
  }
}
