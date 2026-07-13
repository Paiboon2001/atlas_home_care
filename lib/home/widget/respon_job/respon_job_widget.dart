import '/flutter_flow/flutter_flow_util.dart';
import '/home/widget/job_card.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'respon_job_model.dart';
export 'respon_job_model.dart';

class ResponJobWidget extends StatefulWidget {
  const ResponJobWidget({
    super.key,
    required this.img,
    required this.mainname,
  });

  final String? img;
  final String? mainname;

  @override
  State<ResponJobWidget> createState() => _ResponJobWidgetState();
}

class _ResponJobWidgetState extends State<ResponJobWidget> {
  late ResponJobModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ResponJobModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return JobCard(
      img: widget.img!,
      mainname: valueOrDefault<String>(widget.mainname, 'na'),
      age: '48 ปี 2 เดือน 15 วัน',
      date: '14 ธันวาคม 2568',
      time: '11:45 น.',
      assignee: 'นางสาวกมลวรรณ ศรีนาบดี',
      nameColor: const Color(0xFF944D04),
      avatarColor: const Color(0xFFFEE47A),
      onTap: () => context.pushNamed(AddVisitinginformationWidget.routeName),
    );
  }
}
