import 'dart:async';

// ignore: unused_import
import 'package:flutter/material.dart' hide Action;
// ignore: unused_import
import 'package:collection/collection.dart';
// ignore: unused_import
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';
import 'package:utils/utils_dart.dart';
import 'package:utils/utils_flutter.dart';

import 'template.dart';

part 'template_wm.g.dart';

class TemplateWm = TemplateWmBase with _$TemplateWm;

abstract class TemplateWmBase extends MobxWM<TemplateWidget> with Store, LoggerMixin {
  // INIT ---------------------------------------------------------------------

  @override
  // ignore: unnecessary_overrides
  void initWidgetModel() {
    super.initWidgetModel();
  }

  // DI DEPENDENCIES ----------------------------------------------------------

  // FIELDS -------------------------------------------------------------------

  // PROXY --------------------------------------------------------------------

  // OBSERVABLES --------------------------------------------------------------

  // COMPUTED -----------------------------------------------------------------

  // STREAM REACTION ----------------------------------------------------------

  // ACTIONS ------------------------------------------------------------------

  // UI -----------------------------------------------------------------------

  // UTIL METHODS -------------------------------------------------------------

  @override
  void setupLoggers() {
    setupObservableLoggers(
      [
        () => '',
      ],
      logger,
    );
  }
}
