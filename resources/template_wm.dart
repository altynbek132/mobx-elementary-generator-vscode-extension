import 'dart:async';

// ignore: unused_import
import 'package:flutter/material.dart' hide Action;
// ignore: unused_import
import 'package:collection/collection.dart';
// ignore: unused_import
import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';
import 'package:utils/utils_dart.dart';
import 'package:utils/utils_flutter.dart';

import 'template.dart';

class TemplateWm extends MobxWM<Template> with Store, LoggerMixin {
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
