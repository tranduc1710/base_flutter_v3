import 'dart:developer';

import 'package:flutter/foundation.dart';

export 'package:flutter_bloc/flutter_bloc.dart';
export 'themes.dart';
export 'extensions.dart';
export 'constant.dart';
export 'styles.dart';
export 'edge_insets.dart';

void kPrint(Object? object) {
  if (kDebugMode) {
    log(
      object.toString(),
      name: 'LOG FLUTTER',
      time: DateTime.now(),
    );
  }
}
