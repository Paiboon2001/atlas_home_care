import '/components/search_header_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/homevisitlist/other/item_selecid10/item_selecid10_widget.dart';
import 'package:flutter/material.dart';
import 'search_village_model.dart';
export 'search_village_model.dart';

class SearchVillageWidget extends StatefulWidget {
  const SearchVillageWidget({super.key, this.topInset = 0.0});

  /// Status-bar inset passed from the caller (MediaQuery strips the top
  /// padding inside a `useSafeArea: false` modal, so the caller supplies it).
  final double topInset;

  @override
  State<SearchVillageWidget> createState() => _SearchVillageWidgetState();
}

class _SearchVillageWidgetState extends State<SearchVillageWidget> {
  late SearchVillageModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SearchVillageModel());

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
            hintText: 'ค้นหาหมู่บ้าน...',
            onBack: () => Navigator.pop(context),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 24.0),
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
                    model: _model.itemSelecid10Model1,
                    updateCallback: () => safeSetState(() {}),
                    child: const ItemSelecid10Widget(
                      cid10code: 'บ้านกฤษดานคร',
                      decription: 'หมู่ที่ 6',
                    ),
                  ),
                ),
                wrapWithModel(
                  model: _model.itemSelecid10Model2,
                  updateCallback: () => safeSetState(() {}),
                  child: const ItemSelecid10Widget(
                    cid10code: 'บ้านหทัยราช',
                    decription: 'หมู่ที่ 8',
                  ),
                ),
                wrapWithModel(
                  model: _model.itemSelecid10Model3,
                  updateCallback: () => safeSetState(() {}),
                  child: const ItemSelecid10Widget(
                    cid10code: 'บ้านเด่นชัย',
                    decription: 'หมู่ที่ 12',
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
