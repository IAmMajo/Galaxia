import 'package:flutter/material.dart';

const lightColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xFFB72200),
  onPrimary: Color(0xFFFFFFFF),
  primaryContainer: Color(0xFFFFDAD3),
  onPrimaryContainer: Color(0xFF3E0500),
  secondary: Color(0xFF77574F),
  onSecondary: Color(0xFFFFFFFF),
  secondaryContainer: Color(0xFFFFDAD3),
  onSecondaryContainer: Color(0xFF2C1510),
  tertiary: Color(0xFF6E5D2E),
  onTertiary: Color(0xFFFFFFFF),
  tertiaryContainer: Color(0xFFF8E0A6),
  onTertiaryContainer: Color(0xFF241A00),
  error: Color(0xFFBA1A1A),
  errorContainer: Color(0xFFFFDAD6),
  onError: Color(0xFFFFFFFF),
  onErrorContainer: Color(0xFF410002),
  background: Color(0xFFFFFBFF),
  onBackground: Color(0xFF201A19),
  surface: Color(0xFFFFFBFF),
  onSurface: Color(0xFF201A19),
  surfaceVariant: Color(0xFFF5DDD9),
  onSurfaceVariant: Color(0xFF534340),
  outline: Color(0xFF85736F),
  onInverseSurface: Color(0xFFFBEEEB),
  inverseSurface: Color(0xFF362F2D),
  inversePrimary: Color(0xFFFFB4A4),
  shadow: Color(0xFF000000),
  surfaceTint: Color(0xFFB72200),
  outlineVariant: Color(0xFFD8C2BD),
  scrim: Color(0xFF000000),
);

const darkColorScheme = ColorScheme(
  brightness: Brightness.dark,
  primary: Color(0xFFFFB4A4),
  onPrimary: Color(0xFF630E00),
  primaryContainer: Color(0xFF8C1800),
  onPrimaryContainer: Color(0xFFFFDAD3),
  secondary: Color(0xFFE7BDB4),
  onSecondary: Color(0xFF442A24),
  secondaryContainer: Color.fromARGB(130, 65, 65, 65),
  onSecondaryContainer: Color.fromARGB(255, 196, 196, 196),
  tertiary: Color(0xFFDBC48C),
  onTertiary: Color(0xFF3C2F04),
  tertiaryContainer: Color(0xFF544519),
  onTertiaryContainer: Color(0xFFF8E0A6),
  error: Color(0xFFFFB4AB),
  errorContainer: Color(0xFF93000A),
  onError: Color(0xFF690005),
  onErrorContainer: Color(0xFFFFDAD6),
  background: Color.fromARGB(255, 29, 29, 29),
  onBackground: Color(0xFFEDE0DD),

  //Das hier ist die Farbe der Navbar
  surface: Colors.transparent,

  //Das ist übrigens die Textfarbe, da ich die ja auch dynamisch mit einem neuen Highlight ändern
  //würde
  onSurface: Color(0xFFEDE0DD),

  surfaceVariant: Color(0xFF534340),
  onSurfaceVariant: Color(0xFFD8C2BD),
  outline: Color(0xFFA08C88),
  onInverseSurface: Color(0xFF201A19),
  inverseSurface: Color(0xFFEDE0DD),
  inversePrimary: Color(0xFFB72200),
  shadow: Color(0xFF000000),

  surfaceTint: Color.fromARGB(255, 11, 11, 11),

  outlineVariant: Color(0xFF534340),
  scrim: Color(0xFF000000),
);
