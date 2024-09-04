import '/backend/backend.dart';
import '/components/post_details_component/post_details_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'post_details_page_model.dart';
export 'post_details_page_model.dart';

class PostDetailsPageWidget extends StatefulWidget {
  const PostDetailsPageWidget({
    super.key,
    this.postReference,
    this.userRecord,
  });

  final UserPostsRecord? postReference;
  final UsersRecord? userRecord;

  @override
  State<PostDetailsPageWidget> createState() => _PostDetailsPageWidgetState();
}

class _PostDetailsPageWidgetState extends State<PostDetailsPageWidget> {
  late PostDetailsPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PostDetailsPageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: wrapWithModel(
                  model: _model.postDetailsComponentModel,
                  updateCallback: () => safeSetState(() {}),
                  child: PostDetailsComponentWidget(
                    postRef: widget.postReference!.reference,
                    userRef: widget.userRecord!,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
