import 'package:flutter/material.dart';

enum BalanceType {
  airtime,
  data,
  sms,
  broadband;

  IconData get icon {
    switch (this) {
      case BalanceType.airtime:
        return Icons.phone_in_talk_rounded;

      case BalanceType.data:
        return Icons.data_usage_outlined;

      case BalanceType.broadband:
        return Icons.wifi_rounded;

      case BalanceType.sms:
        return Icons.email_outlined;
      default:
        return Icons.no_encryption;
    }
  }

  @override
  String toString() => switch (this) {
        BalanceType.airtime => 'AIRTIME',
        BalanceType.data => 'DATA',
        BalanceType.broadband => 'BROADBAND',
        BalanceType.sms => 'SMS'
      };
}
