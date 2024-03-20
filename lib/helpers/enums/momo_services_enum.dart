import 'package:flutter/material.dart';

enum MomoServices {
  send,
  statement,
  cashout,
  approvals;

  IconData get icon {
    return switch (this) {
      MomoServices.send => Icons.stacked_bar_chart,
      MomoServices.statement => Icons.stacked_line_chart,
      MomoServices.cashout => Icons.money_rounded,
      MomoServices.approvals => Icons.approval_rounded,
    };
  }

  @override
  String toString() => switch (this) {
        MomoServices.send => 'Send Momo',
        MomoServices.statement => 'Statement',
        MomoServices.cashout => 'Cashout',
        MomoServices.approvals => 'Approvals',
      };
}
