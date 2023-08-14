// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
// ignore: unused_import
import 'package:mobx/mobx.dart';
import 'package:utils/utils.dart';

import 'template_wm.dart';

class TemplateWidget extends ElementaryWidget<TemplateWm> with LoggerMixin {
  TemplateWidget({super.key}) : super((context) => TemplateWm());

  @override
  Widget build(wm, context) {
    return Observer(
      builder: (context) {
        return const Center(child: Text('Template'));
      },
    );
  }
}