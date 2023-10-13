import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'feedback_feature_request_comp_model.dart';
export 'feedback_feature_request_comp_model.dart';

class FeedbackFeatureRequestCompWidget extends StatefulWidget {
  const FeedbackFeatureRequestCompWidget({Key? key}) : super(key: key);

  @override
  _FeedbackFeatureRequestCompWidgetState createState() =>
      _FeedbackFeatureRequestCompWidgetState();
}

class _FeedbackFeatureRequestCompWidgetState
    extends State<FeedbackFeatureRequestCompWidget> {
  late FeedbackFeatureRequestCompModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FeedbackFeatureRequestCompModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.8,
      height: MediaQuery.sizeOf(context).height * 0.6,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
            child: Image.asset(
              'assets/images/undraw_Feedback.png',
              width: 275.0,
              height: 275.0,
              fit: BoxFit.cover,
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Send us your',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Outfit',
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                    ),
              ),
              FFButtonWidget(
                onPressed: () async {
                  await launchURL(
                      'https://flutterpride.canny.io/feature-requests');
                },
                text: 'Feature request',
                options: FFButtonOptions(
                  width: 150.0,
                  height: 35.0,
                  padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).primary,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Outfit',
                        color: Colors.white,
                      ),
                  elevation: 3.0,
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              Text(
                'here.',
                style: FlutterFlowTheme.of(context).bodyMedium,
              ),
            ].divide(SizedBox(width: 5.0)).around(SizedBox(width: 5.0)),
          ),
        ],
      ),
    );
  }
}
