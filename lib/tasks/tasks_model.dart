import '/backend/api_requests/api_calls.dart';
import '/components/task_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'tasks_widget.dart' show TasksWidget;
import 'package:flutter/material.dart';

class TasksModel extends FlutterFlowModel<TasksWidget> {
  ///  Local state fields for this page.

  String apiCall = 'Test';

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (inspirationalQuote)] action in tasks widget.
  ApiCallResponse? apiResultndb;
  // Models for taskWidget.
  late FlutterFlowDynamicModels<TaskModel> taskWidgetModels;

  @override
  void initState(BuildContext context) {
    taskWidgetModels = FlutterFlowDynamicModels(() => TaskModel());
  }

  @override
  void dispose() {
    taskWidgetModels.dispose();
  }
}
