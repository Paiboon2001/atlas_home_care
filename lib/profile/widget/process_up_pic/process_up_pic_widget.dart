import 'dart:io';

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/poeple_community/bottonsheet/upload_pic/upload_pic_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:image_picker/image_picker.dart';
import 'process_up_pic_model.dart';
export 'process_up_pic_model.dart';

class ProcessUpPicWidget extends StatefulWidget {
  const ProcessUpPicWidget({super.key});

  @override
  State<ProcessUpPicWidget> createState() => _ProcessUpPicWidgetState();
}

class _ProcessUpPicWidgetState extends State<ProcessUpPicWidget> {
  late ProcessUpPicModel _model;
  final ImagePicker _picker = ImagePicker();

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProcessUpPicModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  int get _crossAxisCount {
    final width = MediaQuery.sizeOf(context).width;
    if (width < kBreakpointMedium) return 3;
    if (width < kBreakpointLarge) return 5;
    return 6;
  }

  // Ask the user for a source, then pick image(s) and append them.
  Future<void> _handleAdd() async {
    final source = await showModalBottomSheet<String>(
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      enableDrag: true,
      isDismissible: true,
      context: context,
      builder: (context) => Padding(
        padding: MediaQuery.viewInsetsOf(context),
        child: const UploadPicWidget(),
      ),
    );
    if (source == null) return;

    try {
      if (source == 'camera') {
        final XFile? shot = await _picker.pickImage(
          source: ImageSource.camera,
          imageQuality: 80,
        );
        if (shot != null) _model.images.add(shot.path);
      } else {
        // 'gallery' and 'file' both pull from the photo library (multi-select).
        final List<XFile> picked =
            await _picker.pickMultiImage(imageQuality: 80);
        _model.images.addAll(picked.map((e) => e.path));
      }
      safeSetState(() {});
    } catch (_) {
      // Swallow picker errors (permission denied, user cancel, etc.).
    }
  }

  void _removeAt(int index) {
    _model.images.removeAt(index);
    safeSetState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final images = _model.images;

    // Empty state: the full-width upload prompt.
    if (images.isEmpty) {
      return InkWell(
        splashColor: Colors.transparent,
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: _handleAdd,
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).primaryBackground,
            borderRadius: BorderRadius.circular(8.0),
            border: Border.all(
              color: FlutterFlowTheme.of(context).alternate,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Icon(
                  Icons.add_photo_alternate_outlined,
                  color: FlutterFlowTheme.of(context).primary,
                  size: 24.0,
                ),
                Text(
                  'อัปโหลดรูปภาพ',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).labelSmall.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).labelSmallFamily,
                        letterSpacing: 0.0,
                        useGoogleFonts: !FlutterFlowTheme.of(context)
                            .labelSmallIsCustom,
                      ),
                ),
              ].divide(const SizedBox(height: 8.0)),
            ),
          ),
        ),
      );
    }

    // Grid of picked images with a trailing "add" tile.
    return MasonryGridView.count(
      crossAxisCount: _crossAxisCount,
      crossAxisSpacing: 10.0,
      mainAxisSpacing: 10.0,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: images.length + 1,
      itemBuilder: (context, index) {
        if (index == images.length) {
          return InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: _handleAdd,
            child: Container(
              width: double.infinity,
              height: 120.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).primaryBackground,
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(
                  color: FlutterFlowTheme.of(context).alternate,
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.add_photo_alternate_outlined,
                    color: FlutterFlowTheme.of(context).primary,
                    size: 24.0,
                  ),
                  Text(
                    'เพิ่มรูปภาพ',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).labelSmall.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).labelSmallFamily,
                          fontSize: 12.0,
                          letterSpacing: 0.0,
                          useGoogleFonts: !FlutterFlowTheme.of(context)
                              .labelSmallIsCustom,
                        ),
                  ),
                ].divide(const SizedBox(height: 8.0)),
              ),
            ),
          );
        }

        return Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.file(
                File(images[index]),
                width: double.infinity,
                height: 120.0,
                fit: BoxFit.cover,
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(1.0, -1.0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 8.0, 0.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () => _removeAt(index),
                  child: Container(
                    width: 24.0,
                    height: 24.0,
                    decoration: const BoxDecoration(
                      color: Color(0x99000000),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.close_rounded,
                      color: Colors.white,
                      size: 16.0,
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
