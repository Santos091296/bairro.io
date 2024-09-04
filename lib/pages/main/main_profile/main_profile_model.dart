import '/flutter_flow/flutter_flow_util.dart';
import 'main_profile_widget.dart' show MainProfileWidget;
import 'package:flutter/material.dart';

class MainProfileModel extends FlutterFlowModel<MainProfileWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
  }
}
