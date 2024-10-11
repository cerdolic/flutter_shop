import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

extension ContextExt on BuildContext {
  AppLocalizations get localizer => AppLocalizations.of(this)!;
  TextTheme get textStyler => Theme.of(this).textTheme;
}
