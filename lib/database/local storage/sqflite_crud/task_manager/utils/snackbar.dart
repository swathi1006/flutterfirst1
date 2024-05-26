import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';
import'package:flutter/material.dart';

showSuccessSnackBar(context) => showTopSnackBar(
  Overlay.of(context),
  CustomSnackBar.success(message: "Data Added Successfully"),
);

showErrorSnackBar(context) => showTopSnackBar(
    Overlay.of(context),
   CustomSnackBar.error(message: "Something went wrong!!!"),
);