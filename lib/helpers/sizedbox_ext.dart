import 'package:flutter/material.dart';

import 'size_config.dart';

extension SizedBoxExtension on num {
  SizedBox get height => SizedBox(
        height: h.toDouble(),
      );
  SizedBox get width => SizedBox(
        width: w.toDouble(),
      );
}
