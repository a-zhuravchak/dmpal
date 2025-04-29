import 'package:bgg_flutter_client/bgg_flutter_client.dart';
import 'package:flutter/material.dart';

import '../widgets/in_app_notification_provider.dart';

/// Extension to handle exceptions in user friendly way
extension InAppNotificationBgg on BggException {
  void display(BuildContext context) {
    switch (this) {
      case BggRequestPendingException():
        showWarning(context, message);
        break;
      default:
        showError(context, message);
    }
  }
}

extension InAppNotificationHelper on Exception {
  void display(BuildContext context) {
    showError(context, 'Oops, something went wrong');
  }
}

void showWarning(BuildContext context, String message) {
  InAppNotificationProvider.showWarning(title: message);
}

void showError(BuildContext context, String message) {
  InAppNotificationProvider.showError(title: message);
}
