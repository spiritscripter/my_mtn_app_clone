import 'package:flutter/material.dart';

enum ShopList {
  airtime,
  data,
  mashup,
  broadband,
  just4u,
  callAbroad,
  callerTunez,
  smsPlus;

  IconData get icon {
    return switch (this) {
      ShopList.airtime => Icons.phone_in_talk_rounded,
      ShopList.data => Icons.data_usage_outlined,
      ShopList.broadband => Icons.wifi_rounded,
      ShopList.mashup => Icons.storage_rounded,
      ShopList.just4u => Icons.card_giftcard_rounded,
      ShopList.callAbroad => Icons.call_rounded,
      ShopList.callerTunez => Icons.music_note_rounded,
      ShopList.smsPlus => Icons.email_outlined,
    };
  }

  @override
  String toString() => switch (this) {
        ShopList.airtime => 'Airtime',
        ShopList.data => 'Data',
        ShopList.broadband => 'Broadband',
        ShopList.mashup => 'Mashup',
        ShopList.just4u => 'Just4U',
        ShopList.callAbroad => 'Call Abroad',
        ShopList.callerTunez => 'Caller Tunez',
        ShopList.smsPlus => 'SMS Plus',
      };
}

extension ShopListExtension on ShopList {
  IconData get icon {
    switch (this) {
      case ShopList.airtime:
        return Icons.phone_in_talk_rounded;

      case ShopList.data:
        return Icons.data_usage_outlined;

      case ShopList.broadband:
        return Icons.wifi_rounded;

      case ShopList.mashup:
        return Icons.storage_rounded;

      case ShopList.just4u:
        return Icons.card_giftcard_rounded;

      case ShopList.callAbroad:
        return Icons.call_rounded;

      case ShopList.callerTunez:
        return Icons.music_note_rounded;

      case ShopList.smsPlus:
        return Icons.email_outlined;
      default:
        return Icons.no_encryption;
    }
  }

  String get name {
    switch (this) {
      case ShopList.airtime:
        return 'Airtime';

      case ShopList.data:
        return 'Data';

      case ShopList.broadband:
        return 'Broadband';

      case ShopList.mashup:
        return 'Mashup';

      case ShopList.just4u:
        return 'Just4U';

      case ShopList.callAbroad:
        return 'Call Abroad';

      case ShopList.callerTunez:
        return 'Caller Tunez';

      case ShopList.smsPlus:
        return 'SMS Plus';
      default:
        return '';
    }
  }
}
