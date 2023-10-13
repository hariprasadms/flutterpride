import '/components/feedback_feature_request_comp_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'about_widget.dart' show AboutWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AboutModel extends FlutterFlowModel<AboutWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for feedback_feature_request_comp component.
  late FeedbackFeatureRequestCompModel feedbackFeatureRequestCompModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    feedbackFeatureRequestCompModel =
        createModel(context, () => FeedbackFeatureRequestCompModel());
  }

  void dispose() {
    unfocusNode.dispose();
    feedbackFeatureRequestCompModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
