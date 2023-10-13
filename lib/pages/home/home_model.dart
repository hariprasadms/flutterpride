import '/backend/backend.dart';
import '/components/no_data_comp_widget.dart';
import '/components/topic_details_dialog_comp_widget.dart';
import '/components/topics_listview_loading_placeholder_widget.dart';
import '/components/web_search_pannel_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'home_widget.dart' show HomeWidget;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for web_search_pannel component.
  late WebSearchPannelModel webSearchPannelModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    webSearchPannelModel = createModel(context, () => WebSearchPannelModel());
  }

  void dispose() {
    unfocusNode.dispose();
    webSearchPannelModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
