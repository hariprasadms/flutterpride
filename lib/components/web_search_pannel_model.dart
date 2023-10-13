import '/backend/backend.dart';
import '/components/dropdown_loading_placeholder_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'web_search_pannel_widget.dart' show WebSearchPannelWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class WebSearchPannelModel extends FlutterFlowModel<WebSearchPannelWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for DropDown_topic_category widget.
  String? dropDownTopicCategoryValue;
  FormFieldController<String>? dropDownTopicCategoryValueController;
  // State field(s) for DropDown_topic_name widget.
  String? dropDownTopicNameValue;
  FormFieldController<String>? dropDownTopicNameValueController;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {}

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
