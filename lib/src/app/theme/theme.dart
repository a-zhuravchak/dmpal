import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  ThemeData light() {
    return theme(lightScheme());
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme().toColorScheme());
  }

  static MaterialScheme darkScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xffd0bcfe),
      surfaceTint: Color(0xffd0bcff),
      onPrimary: Color(0xff381e72),
      primaryContainer: Color(0xff4f378b),
      onPrimaryContainer: Color(0xffeaddff),
      secondary: Color(0xffccc2dc),
      onSecondary: Color(0xff332d41),
      secondaryContainer: Color(0xff4a4458),
      onSecondaryContainer: Color(0xffe8def8),
      tertiary: Color(0xffefb8c8),
      onTertiary: Color(0xff492532),
      tertiaryContainer: Color(0xff633b48),
      onTertiaryContainer: Color(0xffffd8e4),
      error: Color(0xfff2b8b5),
      onError: Color(0xff601410),
      errorContainer: Color(0xff8c1d18),
      onErrorContainer: Color(0xfff9dedc),
      background: Color(0xff141218),
      onBackground: Color(0xffe6e0e9),
      surface: Color(0xff141218),
      onSurface: Color(0xffe6e0e9),
      surfaceVariant: Color(0xff49454f),
      onSurfaceVariant: Color(0xffcac4d0),
      outline: Color(0xff938f99),
      outlineVariant: Color(0xff49454f),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe6e0e9),
      inverseOnSurface: Color(0xff322f35),
      inversePrimary: Color(0xff6750a4),
      primaryFixed: Color(0xffeaddff),
      onPrimaryFixed: Color(0xff21005d),
      primaryFixedDim: Color(0xffd0bcff),
      onPrimaryFixedVariant: Color(0xff4f378b),
      secondaryFixed: Color(0xffe8def8),
      onSecondaryFixed: Color(0xff1d192b),
      secondaryFixedDim: Color(0xffccc2dc),
      onSecondaryFixedVariant: Color(0xff4a4458),
      tertiaryFixed: Color(0xffffd8e4),
      onTertiaryFixed: Color(0xff31111d),
      tertiaryFixedDim: Color(0xffefb8c8),
      onTertiaryFixedVariant: Color(0xff633b48),
      surfaceDim: Color(0xff141218),
      surfaceBright: Color(0xff3b383e),
      surfaceContainerLowest: Color(0xff0f0d13),
      surfaceContainerLow: Color(0xff1d1b20),
      surfaceContainer: Color(0xff211f26),
      surfaceContainerHigh: Color(0xff2b2930),
      surfaceContainerHighest: Color(0xff36343b),
    );
  }

  ThemeData dark() {
    return theme(darkScheme().toColorScheme());
  }

  static MaterialScheme darkMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xffd3c1ff),
      surfaceTint: Color(0xffcfbdfe),
      onPrimary: Color(0xff1b0942),
      primaryContainer: Color(0xff9887c5),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffd3c1ff),
      onSecondary: Color(0xff1b0942),
      secondaryContainer: Color(0xff9887c5),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffffb7cd),
      onTertiary: Color(0xff330218),
      tertiaryContainer: Color(0xffc57b93),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffb9b3),
      onError: Color(0xff330405),
      errorContainer: Color(0xffcc7b74),
      onErrorContainer: Color(0xff000000),
      background: Color(0xff141218),
      onBackground: Color(0xffe6e0e9),
      surface: Color(0xff141318),
      onSurface: Color(0xfffff9ff),
      surfaceVariant: Color(0xff48454e),
      onSurfaceVariant: Color(0xffcec9d4),
      outline: Color(0xffa5a1ac),
      outlineVariant: Color(0xff85818c),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe6e1e9),
      inverseOnSurface: Color(0xff2b292f),
      inversePrimary: Color(0xff4e3f77),
      primaryFixed: Color(0xffe9ddff),
      onPrimaryFixed: Color(0xff16033d),
      primaryFixedDim: Color(0xffcfbdfe),
      onPrimaryFixedVariant: Color(0xff3c2d63),
      secondaryFixed: Color(0xffe9ddff),
      onSecondaryFixed: Color(0xff16033d),
      secondaryFixedDim: Color(0xffcfbdfe),
      onSecondaryFixedVariant: Color(0xff3c2d63),
      tertiaryFixed: Color(0xffffd9e3),
      onTertiaryFixed: Color(0xff2b0013),
      tertiaryFixedDim: Color(0xffffb0c9),
      onTertiaryFixedVariant: Color(0xff5b2238),
      surfaceDim: Color(0xff141318),
      surfaceBright: Color(0xff3a383e),
      surfaceContainerLowest: Color(0xff0f0d13),
      surfaceContainerLow: Color(0xff1c1b20),
      surfaceContainer: Color(0xff211f24),
      surfaceContainerHigh: Color(0xff2b292f),
      surfaceContainerHighest: Color(0xff36343a),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme darkHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xfffff9ff),
      surfaceTint: Color(0xffcfbdfe),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffd3c1ff),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xfffff9ff),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffd3c1ff),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfffff9f9),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffffb7cd),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xfffff9f9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffb9b3),
      onErrorContainer: Color(0xff000000),
      background: Color(0xff141218),
      onBackground: Color(0xffe6e0e9),
      surface: Color(0xff141318),
      onSurface: Color(0xffffffff),
      surfaceVariant: Color(0xff48454e),
      onSurfaceVariant: Color(0xfffef9ff),
      outline: Color(0xffcec9d4),
      outlineVariant: Color(0xffcec9d4),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe6e1e9),
      inverseOnSurface: Color(0xff000000),
      inversePrimary: Color(0xff2f2056),
      primaryFixed: Color(0xffede2ff),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffd3c1ff),
      onPrimaryFixedVariant: Color(0xff1b0942),
      secondaryFixed: Color(0xffede2ff),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffd3c1ff),
      onSecondaryFixedVariant: Color(0xff1b0942),
      tertiaryFixed: Color(0xffffdfe7),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffffb7cd),
      onTertiaryFixedVariant: Color(0xff330218),
      surfaceDim: Color(0xff141318),
      surfaceBright: Color(0xff3a383e),
      surfaceContainerLowest: Color(0xff0f0d13),
      surfaceContainerLow: Color(0xff1c1b20),
      surfaceContainer: Color(0xff211f24),
      surfaceContainerHigh: Color(0xff2b292f),
      surfaceContainerHighest: Color(0xff36343a),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme().toColorScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
        useMaterial3: true,
        brightness: colorScheme.brightness,
        colorScheme: colorScheme,
        textTheme: textTheme.apply(
          bodyColor: colorScheme.onSurface,
          displayColor: colorScheme.onSurface,
        ),
        scaffoldBackgroundColor: colorScheme.surface,
        canvasColor: colorScheme.surface,
      );

  /// Custom Color
  static const customColor = ExtendedColor(
    seed: Color(0xffab6d49),
    value: Color(0xffae6a58),
    light: ColorFamily(
      color: Color(0xff8f4b39),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xffffdbd1),
      onColorContainer: Color(0xff3a0a01),
    ),
    lightMediumContrast: ColorFamily(
      color: Color(0xff8f4b39),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xffffdbd1),
      onColorContainer: Color(0xff3a0a01),
    ),
    lightHighContrast: ColorFamily(
      color: Color(0xff8f4b39),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xffffdbd1),
      onColorContainer: Color(0xff3a0a01),
    ),
    dark: ColorFamily(
      color: Color(0xffffb4a1),
      onColor: Color(0xff561f10),
      colorContainer: Color(0xff723524),
      onColorContainer: Color(0xffffdbd1),
    ),
    darkMediumContrast: ColorFamily(
      color: Color(0xffffb4a1),
      onColor: Color(0xff561f10),
      colorContainer: Color(0xff723524),
      onColorContainer: Color(0xffffdbd1),
    ),
    darkHighContrast: ColorFamily(
      color: Color(0xffffb4a1),
      onColor: Color(0xff561f10),
      colorContainer: Color(0xff723524),
      onColorContainer: Color(0xffffdbd1),
    ),
  );

  List<ExtendedColor> get extendedColors => [
        customColor,
      ];
}

class MaterialScheme {
  const MaterialScheme({
    required this.brightness,
    required this.primary,
    required this.surfaceTint,
    required this.onPrimary,
    required this.primaryContainer,
    required this.onPrimaryContainer,
    required this.secondary,
    required this.onSecondary,
    required this.secondaryContainer,
    required this.onSecondaryContainer,
    required this.tertiary,
    required this.onTertiary,
    required this.tertiaryContainer,
    required this.onTertiaryContainer,
    required this.error,
    required this.onError,
    required this.errorContainer,
    required this.onErrorContainer,
    required this.background,
    required this.onBackground,
    required this.surface,
    required this.onSurface,
    required this.surfaceVariant,
    required this.onSurfaceVariant,
    required this.outline,
    required this.outlineVariant,
    required this.shadow,
    required this.scrim,
    required this.inverseSurface,
    required this.inverseOnSurface,
    required this.inversePrimary,
    required this.primaryFixed,
    required this.onPrimaryFixed,
    required this.primaryFixedDim,
    required this.onPrimaryFixedVariant,
    required this.secondaryFixed,
    required this.onSecondaryFixed,
    required this.secondaryFixedDim,
    required this.onSecondaryFixedVariant,
    required this.tertiaryFixed,
    required this.onTertiaryFixed,
    required this.tertiaryFixedDim,
    required this.onTertiaryFixedVariant,
    required this.surfaceDim,
    required this.surfaceBright,
    required this.surfaceContainerLowest,
    required this.surfaceContainerLow,
    required this.surfaceContainer,
    required this.surfaceContainerHigh,
    required this.surfaceContainerHighest,
  });

  final Brightness brightness;
  final Color primary;
  final Color surfaceTint;
  final Color onPrimary;
  final Color primaryContainer;
  final Color onPrimaryContainer;
  final Color secondary;
  final Color onSecondary;
  final Color secondaryContainer;
  final Color onSecondaryContainer;
  final Color tertiary;
  final Color onTertiary;
  final Color tertiaryContainer;
  final Color onTertiaryContainer;
  final Color error;
  final Color onError;
  final Color errorContainer;
  final Color onErrorContainer;
  final Color background;
  final Color onBackground;
  final Color surface;
  final Color onSurface;
  final Color surfaceVariant;
  final Color onSurfaceVariant;
  final Color outline;
  final Color outlineVariant;
  final Color shadow;
  final Color scrim;
  final Color inverseSurface;
  final Color inverseOnSurface;
  final Color inversePrimary;
  final Color primaryFixed;
  final Color onPrimaryFixed;
  final Color primaryFixedDim;
  final Color onPrimaryFixedVariant;
  final Color secondaryFixed;
  final Color onSecondaryFixed;
  final Color secondaryFixedDim;
  final Color onSecondaryFixedVariant;
  final Color tertiaryFixed;
  final Color onTertiaryFixed;
  final Color tertiaryFixedDim;
  final Color onTertiaryFixedVariant;
  final Color surfaceDim;
  final Color surfaceBright;
  final Color surfaceContainerLowest;
  final Color surfaceContainerLow;
  final Color surfaceContainer;
  final Color surfaceContainerHigh;
  final Color surfaceContainerHighest;
}

extension MaterialSchemeUtils on MaterialScheme {
  ColorScheme toColorScheme() {
    return ColorScheme(
      brightness: brightness,
      primary: primary,
      onPrimary: onPrimary,
      primaryContainer: primaryContainer,
      onPrimaryContainer: onPrimaryContainer,
      secondary: secondary,
      onSecondary: onSecondary,
      secondaryContainer: secondaryContainer,
      onSecondaryContainer: onSecondaryContainer,
      tertiary: tertiary,
      onTertiary: onTertiary,
      tertiaryContainer: tertiaryContainer,
      onTertiaryContainer: onTertiaryContainer,
      error: error,
      onError: onError,
      errorContainer: errorContainer,
      onErrorContainer: onErrorContainer,
      surface: surface,
      onSurface: onSurface,
      surfaceContainerHighest: surfaceVariant,
      onSurfaceVariant: onSurfaceVariant,
      outline: outline,
      outlineVariant: outlineVariant,
      shadow: shadow,
      scrim: scrim,
      inverseSurface: inverseSurface,
      onInverseSurface: inverseOnSurface,
      inversePrimary: inversePrimary,
    );
  }

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff246a4b),
      surfaceTint: Color(0xff246a4b),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffabf2ca),
      onPrimaryContainer: Color(0xff005235),
      secondary: Color(0xff4d6356),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffd0e8d7),
      onSecondaryContainer: Color(0xff364b3f),
      tertiary: Color(0xff3c6472),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffc0e9fa),
      onTertiaryContainer: Color(0xff234c5a),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff93000a),
      surface: Color(0xfff5fbf4),
      onSurface: Color(0xff171d19),
      onSurfaceVariant: Color(0xff404943),
      outline: Color(0xff707972),
      outlineVariant: Color(0xffc0c9c1),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2c322e),
      inversePrimary: Color(0xff8fd5af),
      primaryFixed: Color(0xffabf2ca),
      onPrimaryFixed: Color(0xff002113),
      primaryFixedDim: Color(0xff8fd5af),
      onPrimaryFixedVariant: Color(0xff005235),
      secondaryFixed: Color(0xffd0e8d7),
      onSecondaryFixed: Color(0xff0b1f15),
      secondaryFixedDim: Color(0xffb4ccbc),
      onSecondaryFixedVariant: Color(0xff364b3f),
      tertiaryFixed: Color(0xffc0e9fa),
      onTertiaryFixed: Color(0xff001f28),
      tertiaryFixedDim: Color(0xffa4cddd),
      onTertiaryFixedVariant: Color(0xff234c5a),
      surfaceDim: Color(0xffd6dbd5),
      surfaceBright: Color(0xfff5fbf4),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff0f5ef),
      surfaceContainer: Color(0xffeaefe9),
      surfaceContainerHigh: Color(0xffe4eae3),
      surfaceContainerHighest: Color(0xffdee4de),
    );
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xff8fd5af),
      surfaceTint: Color(0xff8fd5af),
      onPrimary: Color(0xff003823),
      primaryContainer: Color(0xff005235),
      onPrimaryContainer: Color(0xffabf2ca),
      secondary: Color(0xffb4ccbc),
      onSecondary: Color(0xff203529),
      secondaryContainer: Color(0xff364b3f),
      onSecondaryContainer: Color(0xffd0e8d7),
      tertiary: Color(0xffa4cddd),
      onTertiary: Color(0xff053542),
      tertiaryContainer: Color(0xff234c5a),
      onTertiaryContainer: Color(0xffc0e9fa),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff0f1511),
      onSurface: Color(0xffdee4de),
      onSurfaceVariant: Color(0xffc0c9c1),
      outline: Color(0xff8a938c),
      outlineVariant: Color(0xff404943),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdee4de),
      inversePrimary: Color(0xff246a4b),
      primaryFixed: Color(0xffabf2ca),
      onPrimaryFixed: Color(0xff002113),
      primaryFixedDim: Color(0xff8fd5af),
      onPrimaryFixedVariant: Color(0xff005235),
      secondaryFixed: Color(0xffd0e8d7),
      onSecondaryFixed: Color(0xff0b1f15),
      secondaryFixedDim: Color(0xffb4ccbc),
      onSecondaryFixedVariant: Color(0xff364b3f),
      tertiaryFixed: Color(0xffc0e9fa),
      onTertiaryFixed: Color(0xff001f28),
      tertiaryFixedDim: Color(0xffa4cddd),
      onTertiaryFixedVariant: Color(0xff234c5a),
      surfaceDim: Color(0xff0f1511),
      surfaceBright: Color(0xff353b36),
      surfaceContainerLowest: Color(0xff0a0f0c),
      surfaceContainerLow: Color(0xff171d19),
      surfaceContainer: Color(0xff1b211d),
      surfaceContainerHigh: Color(0xff262b27),
      surfaceContainerHighest: Color(0xff303632),
    );
  }
}

AppBarTheme createAppBarTheme(ColorScheme colorScheme) {
  return AppBarTheme(
    titleTextStyle: TextStyle(
      color: colorScheme.onPrimary,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
    iconTheme: IconThemeData(
      color: colorScheme.onSurface,
    ),
    actionsIconTheme: IconThemeData(
      color: colorScheme.onSurface,
    ),
    centerTitle: true,
  );
}

ChipThemeData createChipTheme(ColorScheme colorScheme) {
  return ChipThemeData(
    backgroundColor: colorScheme.secondaryContainer,
    selectedColor: colorScheme.tertiaryContainer,
    labelStyle: TextStyle(
      color: colorScheme.onSurface,
    ),
    secondaryLabelStyle: TextStyle(
      color: colorScheme.onSurface,
    ),
    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
  );
}

FloatingActionButtonThemeData createFabTheme(ColorScheme colorScheme) {
  return FloatingActionButtonThemeData(
    backgroundColor: colorScheme.tertiaryContainer,
    foregroundColor: colorScheme.onTertiaryContainer,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(16)),
    ),
  );
}

ElevatedButtonThemeData createElevatedButtonTheme(ColorScheme colorScheme) {
  return ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: colorScheme.primary,
      foregroundColor: colorScheme.onPrimary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
  );
}

OutlinedButtonThemeData createOutlinedButtonTheme(ColorScheme colorScheme) {
  return OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: colorScheme.primary,
      side: BorderSide(
        color: colorScheme.primary,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
  );
}

SegmentedButtonThemeData createSegmentedButtonTheme(ColorScheme colorScheme) {
  return SegmentedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return colorScheme.secondary;
        }
        return colorScheme.surfaceContainerHighest;
      }),
      foregroundColor: WidgetStateProperty.all(colorScheme.onSurface),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    ),
  );
}

InputDecorationTheme createTextFieldTheme(ColorScheme colorScheme) {
  return InputDecorationTheme(
    filled: true,
    fillColor: colorScheme.surface,
    contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: colorScheme.outline),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: colorScheme.outline),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: colorScheme.primary, width: 2),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: colorScheme.error),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: colorScheme.error, width: 2),
    ),
    labelStyle: TextStyle(color: colorScheme.onSurface),
    hintStyle: TextStyle(color: colorScheme.onSurface.withOpacity(0.6)),
    errorStyle: TextStyle(color: colorScheme.error),
  );
}
