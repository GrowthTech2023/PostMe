import '/components/profilepic_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PostModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  bool uploadedvideo = true;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for profilepic component.
  late ProfilepicModel profilepicModel1;
  // Model for profilepic component.
  late ProfilepicModel profilepicModel2;
  // Model for profilepic component.
  late ProfilepicModel profilepicModel3;
  // Model for profilepic component.
  late ProfilepicModel profilepicModel4;
  // Model for profilepic component.
  late ProfilepicModel profilepicModel5;
  // Model for profilepic component.
  late ProfilepicModel profilepicModel6;
  // State field(s) for TextField widget.
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    profilepicModel1 = createModel(context, () => ProfilepicModel());
    profilepicModel2 = createModel(context, () => ProfilepicModel());
    profilepicModel3 = createModel(context, () => ProfilepicModel());
    profilepicModel4 = createModel(context, () => ProfilepicModel());
    profilepicModel5 = createModel(context, () => ProfilepicModel());
    profilepicModel6 = createModel(context, () => ProfilepicModel());
  }

  void dispose() {
    unfocusNode.dispose();
    profilepicModel1.dispose();
    profilepicModel2.dispose();
    profilepicModel3.dispose();
    profilepicModel4.dispose();
    profilepicModel5.dispose();
    profilepicModel6.dispose();
    textController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
