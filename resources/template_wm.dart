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

class TemplateWm extends MobxWM<TemplateWidget> with Store, LoggerMixin {
// ====================================================== INIT ====================================================== //

  @override
  // ignore: unnecessary_overrides
  void initWidgetModel() {
    super.initWidgetModel();
  }

// ===================================================== DISPOSE ==================================================== //

// ================================================= DI DEPENDENCIES ================================================ //

// ================================================= PROXY DI FIELDS ================================================ //

// ===================================================== FIELDS ===================================================== //

// ================================================ OBSERVABLE STATE ================================================ //

// ================================================= COMPUTED STATE ================================================= //

// ================================================== STREAM STATE ================================================== //

// =================================================== UI HANDLERS ================================================== //

// ======================================================= UI ======================================================= //

// ================================================== UTIL METHODS ================================================== //

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
