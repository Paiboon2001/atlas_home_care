import '/components/search_header_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/homevisitlist/other/item_selecid10/item_selecid10_widget.dart';
import 'package:flutter/material.dart';
import 'search_order_model.dart';
export 'search_order_model.dart';

class SearchOrderWidget extends StatefulWidget {
  const SearchOrderWidget({super.key, this.topInset = 0.0});

  /// Status-bar inset passed from the caller (MediaQuery strips the top
  /// padding inside a `useSafeArea: false` modal, so the caller supplies it).
  final double topInset;

  @override
  State<SearchOrderWidget> createState() => _SearchOrderWidgetState();
}

class _SearchOrderWidgetState extends State<SearchOrderWidget> {
  late SearchOrderModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SearchOrderModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: EdgeInsets.only(top: widget.topInset),
      color: FlutterFlowTheme.of(context).secondaryBackground,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          SearchHeaderBar(
            controller: _model.textController!,
            focusNode: _model.textFieldFocusNode,
            hintText: 'ค้นหางาน...',
            onBack: () => Navigator.pop(context),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 32.0),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: [
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    Navigator.pop(context);
                  },
                  child: wrapWithModel(
                    model: _model.itemSelecid10Model,
                    updateCallback: () => safeSetState(() {}),
                    child: const ItemSelecid10Widget(
                      cid10code: 'AHC8736',
                      decription: 'นายกรกนก กนกวัน',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
