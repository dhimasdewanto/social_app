import 'package:flutter/material.dart';

ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showSnackbar({
  @required BuildContext context,
  @required String message,
}) {
  final snackbar = SnackBar(content: Text(message));
  return Scaffold.of(context).showSnackBar(snackbar);
}
