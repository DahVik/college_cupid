import 'package:college_cupid/main.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

void showSnackBar(String message) {
  rootScaffoldMessengerKey.currentState
      ?.showSnackBar(SnackBar(content: Text(message)));
}

void showErrorSnackBar(DioException err) {
  rootScaffoldMessengerKey.currentState?.showSnackBar(SnackBar(
    content: Text((err.response != null)
        ? err.response!.data['message']
        : 'Some error occurred, please try again.'),
    duration: const Duration(seconds: 5),
  ));
}
