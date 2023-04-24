library ifarms_theme;

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
export 'package:flutter_svg/flutter_svg.dart';
export 'package:flutter_screenutil/flutter_screenutil.dart';
part 'src/ifarms_textstyles.dart';
part 'src/ifarms_colors.dart';
part 'src/ifarms_buttons.dart';
part 'src/ifarms_dialogs.dart';
part 'src/ifarms_chip.dart';
part 'src/ifarms_input.dart';
part 'src/ifarms_utils.dart';

enum ButtonType {
  primary,
  warning,
  danger,
  success,
  outline,
  outlineGreen,
  outlineRed,
  disabled,
}

enum ButtonMode {
  common,
  circle,
  rounded,
  iconLabel,
}

enum ButtonIconPosition {
  left,
  right,
}

enum DialogType {
  primary,
  info,
  warning,
  danger,
}

class IFTheme {
  static IFTextStyles textStyle = IFTextStyles();
  static IFColor color = IFColor();
  static String fontName = 'DM Sans';
  static IFButton button = IFButton();
  static IFDialog dialog = IFDialog();
  static IFChip chip = IFChip();
  static IFInput input = IFInput();
  static IFFormValidator validator = IFFormValidator();
  static IFUtils utils = IFUtils();
}

class IFFormValidator {
  dynamic nikValidator(String s) {
    if (s.isEmpty) {
      return 'NIK harus diisi';
    }
    if (!IFTheme.utils.isNumericOnly(s)) {
      return 'NIk hanya boleh berisi angka';
    }
    if (!IFTheme.utils.isLengthEqualTo(s, 16)) {
      return 'NIK harus 16 angka';
    }
    return null;
  }
}
