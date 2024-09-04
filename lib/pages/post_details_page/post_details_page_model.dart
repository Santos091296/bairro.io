import '/components/post_details_component/post_details_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'post_details_page_widget.dart' show PostDetailsPageWidget;
import 'package:flutter/material.dart';

class PostDetailsPageModel extends FlutterFlowModel<PostDetailsPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for post_details_component component.
  late PostDetailsComponentModel postDetailsComponentModel;

  @override
  void initState(BuildContext context) {
    postDetailsComponentModel =
        createModel(context, () => PostDetailsComponentModel());
  }

  @override
  void dispose() {
    postDetailsComponentModel.dispose();
  }
}
