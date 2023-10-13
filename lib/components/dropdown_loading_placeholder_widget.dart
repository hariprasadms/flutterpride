import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'dropdown_loading_placeholder_model.dart';
export 'dropdown_loading_placeholder_model.dart';

class DropdownLoadingPlaceholderWidget extends StatefulWidget {
  const DropdownLoadingPlaceholderWidget({Key? key}) : super(key: key);

  @override
  _DropdownLoadingPlaceholderWidgetState createState() =>
      _DropdownLoadingPlaceholderWidgetState();
}

class _DropdownLoadingPlaceholderWidgetState
    extends State<DropdownLoadingPlaceholderWidget> {
  late DropdownLoadingPlaceholderModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DropdownLoadingPlaceholderModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FlutterFlowDropDown<String>(
      controller: _model.dropDownValueController ??=
          FormFieldController<String>(null),
      options: [
        'Custom Code',
        'Custom Widgets',
        'Youtube videos',
        'Medium articles'
      ],
      onChanged: (val) => setState(() => _model.dropDownValue = val),
      width: MediaQuery.sizeOf(context).width * 0.3,
      height: 50.0,
      searchHintTextStyle: FlutterFlowTheme.of(context).bodyLarge.override(
            fontFamily: 'Outfit',
            color: FlutterFlowTheme.of(context).tertiary,
          ),
      textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
            fontFamily: 'Outfit',
            color: FlutterFlowTheme.of(context).tertiary,
            fontSize: 14.0,
          ),
      hintText: 'Choose an option...',
      searchHintText: 'Search for an item...',
      fillColor: FlutterFlowTheme.of(context).secondaryBackground,
      elevation: 2.0,
      borderColor: FlutterFlowTheme.of(context).secondaryText,
      borderWidth: 0.0,
      borderRadius: 4.0,
      margin: EdgeInsetsDirectional.fromSTEB(12.0, 4.0, 12.0, 4.0),
      hidesUnderline: true,
      isSearchable: true,
      isMultiSelect: false,
    );
  }
}
