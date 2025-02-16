// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
// ignore: unused_import
import 'package:mobx/mobx.dart';
import 'package:utils/utils_dart.dart';
import 'package:utils/utils_flutter.dart';

import 'template_wm.dart';

TemplateWm _wmFactory(BuildContext context) => TemplateWm();

class TemplateWidget extends ElementaryWidget<TemplateWm> with LoggerMixin {
  const TemplateWidget({
    super.key,
    WidgetModelFactory wmFactory = _wmFactory,
  }) : super(wmFactory);

  @override
  Widget build(wm, context) {
    return Observer(
      builder: (context) {
        return const Center(child: Text('Template'));
      },
    );
  }
}
