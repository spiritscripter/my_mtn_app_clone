import 'package:flutter/material.dart';

enum QuickAccessType {
  data,
  just4U,
  momo,
  mashup;

// map the quick access type to the corresponding string value
  IconData get icon {
    switch (this) {
      case QuickAccessType.data:
        return Icons.signal_cellular_alt_rounded;

      case QuickAccessType.just4U:
        return Icons.card_giftcard_rounded;

      case QuickAccessType.momo:
        return Icons.money_rounded;

      case QuickAccessType.mashup:
        return Icons.storage_rounded;
      default:
        return Icons.no_encryption;
    }
  }

  String get name {
    switch (this) {
      case QuickAccessType.data:
        return 'Data Bundle';
      case QuickAccessType.just4U:
        return 'Just4U';
      case QuickAccessType.momo:
        return 'Send MoMo';
      case QuickAccessType.mashup:
        return 'Mashup';
      default:
        return '';
    }
  }
}
