import 'dart:async';

// ignore: unused_import
import 'package:flutter/material.dart' hide Action;
// ignore: unused_import
import 'package:collection/collection.dart';
// ignore: unused_import
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';
import 'package:utils/utils.dart';

import 'template.dart';

part 'template_wm.g.dart';

// @LazySingleton(dispose: disposeTemplateWm)
class TemplateWm = _TemplateWmBase with _$TemplateWm;

abstract class _TemplateWmBase extends MobxWM<TemplateWidget> with Store, LoggerMixin {
  /// INIT ---------------------------------------------------------------------

  @override
  void initWidgetModel() {
    super.initWidgetModel();
  }

  /// DEPENDENCIES -------------------------------------------------------------

  /// FIELDS -------------------------------------------------------------------

  /// PROXY --------------------------------------------------------------------

  /// OBSERVABLES --------------------------------------------------------------

  /// COMPUTED -----------------------------------------------------------------

  /// STREAM REACTION ----------------------------------------------------------

  /// ACTIONS ------------------------------------------------------------------

  /// UI -----------------------------------------------------------------------

  /// UTIL METHODS -------------------------------------------------------------

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

Future<void> disposeTemplateWm(TemplateWm instance) async => instance.dispose();
