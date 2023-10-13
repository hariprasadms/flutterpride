import '/backend/backend.dart';
import '/components/dropdown_loading_placeholder_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'web_search_pannel_model.dart';
export 'web_search_pannel_model.dart';

class WebSearchPannelWidget extends StatefulWidget {
  const WebSearchPannelWidget({Key? key}) : super(key: key);

  @override
  _WebSearchPannelWidgetState createState() => _WebSearchPannelWidgetState();
}

class _WebSearchPannelWidgetState extends State<WebSearchPannelWidget> {
  late WebSearchPannelModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WebSearchPannelModel());

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
      height: 70.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Wrap(
        spacing: 10.0,
        runSpacing: 0.0,
        alignment: WrapAlignment.center,
        crossAxisAlignment: WrapCrossAlignment.center,
        direction: Axis.horizontal,
        runAlignment: WrapAlignment.center,
        verticalDirection: VerticalDirection.down,
        clipBehavior: Clip.none,
        children: [
          StreamBuilder<List<CategoriesRecord>>(
            stream: queryCategoriesRecord(),
            builder: (context, snapshot) {
              // Customize what your widget looks like when it's loading.
              if (!snapshot.hasData) {
                return Center(
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 0.3,
                    child: DropdownLoadingPlaceholderWidget(),
                  ),
                );
              }
              List<CategoriesRecord> dropDownTopicCategoryCategoriesRecordList =
                  snapshot.data!;
              return FlutterFlowDropDown<String>(
                controller: _model.dropDownTopicCategoryValueController ??=
                    FormFieldController<String>(null),
                options: dropDownTopicCategoryCategoriesRecordList
                    .map((e) => e.categoryName)
                    .toList(),
                onChanged: (val) =>
                    setState(() => _model.dropDownTopicCategoryValue = val),
                width: MediaQuery.sizeOf(context).width * 0.3,
                height: 45.0,
                searchHintTextStyle:
                    FlutterFlowTheme.of(context).bodyLarge.override(
                          fontFamily: 'Outfit',
                          color: FlutterFlowTheme.of(context).secondaryText,
                        ),
                textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Outfit',
                      fontSize: 14.0,
                    ),
                hintText: 'Choose a topic category...',
                searchHintText: 'Search for an item...',
                icon: Icon(
                  Icons.arrow_drop_down,
                  color: FlutterFlowTheme.of(context).tertiary,
                  size: 15.0,
                ),
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
            },
          ),
          StreamBuilder<List<TopicsRecord>>(
            stream: queryTopicsRecord(
              queryBuilder: (topicsRecord) => topicsRecord.where(
                'full_category',
                isEqualTo: _model.dropDownTopicCategoryValue != ''
                    ? _model.dropDownTopicCategoryValue
                    : null,
              ),
            ),
            builder: (context, snapshot) {
              // Customize what your widget looks like when it's loading.
              if (!snapshot.hasData) {
                return Center(
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 0.3,
                    child: DropdownLoadingPlaceholderWidget(),
                  ),
                );
              }
              List<TopicsRecord> dropDownTopicNameTopicsRecordList =
                  snapshot.data!;
              return FlutterFlowDropDown<String>(
                controller: _model.dropDownTopicNameValueController ??=
                    FormFieldController<String>(null),
                options: dropDownTopicNameTopicsRecordList
                    .map((e) => e.title)
                    .toList(),
                onChanged: (val) =>
                    setState(() => _model.dropDownTopicNameValue = val),
                width: MediaQuery.sizeOf(context).width * 0.3,
                height: 45.0,
                searchHintTextStyle:
                    FlutterFlowTheme.of(context).bodyLarge.override(
                          fontFamily: 'Outfit',
                          color: FlutterFlowTheme.of(context).secondaryText,
                        ),
                textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Outfit',
                      fontSize: 14.0,
                    ),
                hintText: dropDownTopicNameTopicsRecordList.length == 0
                    ? 'No records in the selected category'
                    : 'Choose a topic name (${dropDownTopicNameTopicsRecordList.length.toString()})',
                searchHintText: 'Search for a topic...',
                icon: Icon(
                  Icons.search,
                  color: FlutterFlowTheme.of(context).tertiary,
                  size: 18.0,
                ),
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
            },
          ),
          InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              setState(() {
                _model.dropDownTopicCategoryValueController?.reset();
                _model.dropDownTopicNameValueController?.reset();
              });
            },
            child: Text(
              'Clear Filters',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Outfit',
                    color: FlutterFlowTheme.of(context).tertiary,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
