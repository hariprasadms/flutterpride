import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'content_owner_login_widget.dart' show ContentOwnerLoginWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ContentOwnerLoginModel extends FlutterFlowModel<ContentOwnerLoginWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for TextField_un widget.
  TextEditingController? textFieldUnController;
  String? Function(BuildContext, String?)? textFieldUnControllerValidator;
  String? _textFieldUnControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for TextField_pwd widget.
  TextEditingController? textFieldPwdController;
  late bool textFieldPwdVisibility;
  String? Function(BuildContext, String?)? textFieldPwdControllerValidator;
  String? _textFieldPwdControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    textFieldUnControllerValidator = _textFieldUnControllerValidator;
    textFieldPwdVisibility = false;
    textFieldPwdControllerValidator = _textFieldPwdControllerValidator;
  }

  void dispose() {
    unfocusNode.dispose();
    textFieldUnController?.dispose();
    textFieldPwdController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
