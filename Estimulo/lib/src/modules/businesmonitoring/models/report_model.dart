import 'package:Estimulo/src/shared/models/model.dart';
import 'package:flutter/material.dart';

class ReportModel extends Model {
  final DateTime dateReport;
  final String userName;
  final String status;

  ReportModel(
      {@required this.dateReport,
      @required this.userName,
      @required this.status});
}
