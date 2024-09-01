import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static MaterialScheme lightScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(4281887036),
      surfaceTint: Color(4281887036),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4290375864),
      onPrimaryContainer: Color(4278198535),
      secondary: Color(4282804016),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4291292841),
      onSecondaryContainer: Color(4278853888),
      tertiary: Color(4278217321),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4288475631),
      onTertiaryContainer: Color(4278198303),
      error: Color(4287319845),
      onError: Color(4294967295),
      errorContainer: Color(4294958024),
      onErrorContainer: Color(4281406208),
      background: Color(4294441970),
      onBackground: Color(4279770392),
      surface: Color(4294245370),
      onSurface: Color(4279639325),
      surfaceVariant: Color(4293976272),
      onSurfaceVariant: Color(4283385145),
      outline: Color(4286674280),
      outlineVariant: Color(4292068532),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281020977),
      inverseOnSurface: Color(4293718769),
      inversePrimary: Color(4288599197),
      primaryFixed: Color(4290375864),
      onPrimaryFixed: Color(4278198535),
      primaryFixedDim: Color(4288599197),
      onPrimaryFixedVariant: Color(4280242215),
      secondaryFixed: Color(4291292841),
      onSecondaryFixed: Color(4278853888),
      secondaryFixedDim: Color(4289450639),
      onSecondaryFixedVariant: Color(4281290523),
      tertiaryFixed: Color(4288475631),
      onTertiaryFixed: Color(4278198303),
      tertiaryFixedDim: Color(4286633427),
      onTertiaryFixedVariant: Color(4278210639),
      surfaceDim: Color(4292205530),
      surfaceBright: Color(4294245370),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4293916148),
      surfaceContainer: Color(4293521390),
      surfaceContainerHigh: Color(4293126632),
      surfaceContainerHighest: Color(4292732131),
    );
  }

  ThemeData light() {
    return theme(lightScheme().toColorScheme());
  }

  static MaterialScheme lightMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(4279979043),
      surfaceTint: Color(4281887036),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4283334737),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4281027351),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4284251716),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4278209355),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4280516992),
      onTertiaryContainer: Color(4294967295),
      error: Color(4285150476),
      onError: Color(4294967295),
      errorContainer: Color(4289094969),
      onErrorContainer: Color(4294967295),
      background: Color(4294441970),
      onBackground: Color(4279770392),
      surface: Color(4294245370),
      onSurface: Color(4279639325),
      surfaceVariant: Color(4293976272),
      onSurfaceVariant: Color(4283121973),
      outline: Color(4285095248),
      outlineVariant: Color(4286937451),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281020977),
      inverseOnSurface: Color(4293718769),
      inversePrimary: Color(4288599197),
      primaryFixed: Color(4283334737),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4281689658),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4284251716),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4282672430),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4280516992),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4278216550),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292205530),
      surfaceBright: Color(4294245370),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4293916148),
      surfaceContainer: Color(4293521390),
      surfaceContainerHigh: Color(4293126632),
      surfaceContainerHighest: Color(4292732131),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme lightHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(4278200586),
      surfaceTint: Color(4281887036),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4279979043),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4279052288),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4281027351),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4278200103),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4278209355),
      onTertiaryContainer: Color(4294967295),
      error: Color(4282128384),
      onError: Color(4294967295),
      errorContainer: Color(4285150476),
      onErrorContainer: Color(4294967295),
      background: Color(4294441970),
      onBackground: Color(4279770392),
      surface: Color(4294245370),
      onSurface: Color(4278190080),
      surfaceVariant: Color(4293976272),
      onSurfaceVariant: Color(4281016856),
      outline: Color(4283121973),
      outlineVariant: Color(4283121973),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281020977),
      inverseOnSurface: Color(4294967295),
      inversePrimary: Color(4290968257),
      primaryFixed: Color(4279979043),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4278203663),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4281027351),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4279644931),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4278209355),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4278203186),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292205530),
      surfaceBright: Color(4294245370),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4293916148),
      surfaceContainer: Color(4293521390),
      surfaceContainerHigh: Color(4293126632),
      surfaceContainerHighest: Color(4292732131),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme().toColorScheme());
  }

  static MaterialScheme darkScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(4288599197),
      surfaceTint: Color(4288599197),
      onPrimary: Color(4278401298),
      primaryContainer: Color(4280242215),
      onPrimaryContainer: Color(4290375864),
      secondary: Color(4289450639),
      onSecondary: Color(4279842565),
      secondaryContainer: Color(4281290523),
      onSecondaryContainer: Color(4291292841),
      tertiary: Color(4286633427),
      onTertiary: Color(4278204214),
      tertiaryContainer: Color(4278210639),
      onTertiaryContainer: Color(4288475631),
      error: Color(4294948489),
      onError: Color(4283507456),
      errorContainer: Color(4285413392),
      onErrorContainer: Color(4294958024),
      background: Color(4279244048),
      onBackground: Color(4292928731),
      surface: Color(4279112980),
      onSurface: Color(4292732131),
      surfaceVariant: Color(4283385145),
      onSurfaceVariant: Color(4292068532),
      outline: Color(4288450432),
      outlineVariant: Color(4283385145),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4292732131),
      inverseOnSurface: Color(4281020977),
      inversePrimary: Color(4281887036),
      primaryFixed: Color(4290375864),
      onPrimaryFixed: Color(4278198535),
      primaryFixedDim: Color(4288599197),
      onPrimaryFixedVariant: Color(4280242215),
      secondaryFixed: Color(4291292841),
      onSecondaryFixed: Color(4278853888),
      secondaryFixedDim: Color(4289450639),
      onSecondaryFixedVariant: Color(4281290523),
      tertiaryFixed: Color(4288475631),
      onTertiaryFixed: Color(4278198303),
      tertiaryFixedDim: Color(4286633427),
      onTertiaryFixedVariant: Color(4278210639),
      surfaceDim: Color(4279112980),
      surfaceBright: Color(4281612858),
      surfaceContainerLowest: Color(4278783759),
      surfaceContainerLow: Color(4279639325),
      surfaceContainer: Color(4279902497),
      surfaceContainerHigh: Color(4280625963),
      surfaceContainerHighest: Color(4281284150),
    );
  }

  ThemeData dark() {
    return theme(darkScheme().toColorScheme());
  }

  static MaterialScheme darkMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(4288862369),
      surfaceTint: Color(4288599197),
      onPrimary: Color(4278196997),
      primaryContainer: Color(4285111659),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4289779347),
      onSecondary: Color(4278655744),
      secondaryContainer: Color(4286028638),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4286896599),
      onTertiary: Color(4278196762),
      tertiaryContainer: Color(4282883740),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294950035),
      onError: Color(4280880896),
      errorContainer: Color(4291264594),
      onErrorContainer: Color(4278190080),
      background: Color(4279244048),
      onBackground: Color(4292928731),
      surface: Color(4279112980),
      onSurface: Color(4294376699),
      surfaceVariant: Color(4283385145),
      onSurfaceVariant: Color(4292397240),
      outline: Color(4289700242),
      outlineVariant: Color(4287529331),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4292732131),
      inverseOnSurface: Color(4280625963),
      inversePrimary: Color(4280308264),
      primaryFixed: Color(4290375864),
      onPrimaryFixed: Color(4278195715),
      primaryFixedDim: Color(4288599197),
      onPrimaryFixedVariant: Color(4278927127),
      secondaryFixed: Color(4291292841),
      onSecondaryFixed: Color(4278523136),
      secondaryFixedDim: Color(4289450639),
      onSecondaryFixedVariant: Color(4280237323),
      tertiaryFixed: Color(4288475631),
      onTertiaryFixed: Color(4278195220),
      tertiaryFixedDim: Color(4286633427),
      onTertiaryFixedVariant: Color(4278205757),
      surfaceDim: Color(4279112980),
      surfaceBright: Color(4281612858),
      surfaceContainerLowest: Color(4278783759),
      surfaceContainerLow: Color(4279639325),
      surfaceContainer: Color(4279902497),
      surfaceContainerHigh: Color(4280625963),
      surfaceContainerHighest: Color(4281284150),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme darkHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(4293984235),
      surfaceTint: Color(4288599197),
      onPrimary: Color(4278190080),
      primaryContainer: Color(4288862369),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4294180836),
      onSecondary: Color(4278190080),
      secondaryContainer: Color(4289779347),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4293591038),
      onTertiary: Color(4278190080),
      tertiaryContainer: Color(4286896599),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294966008),
      onError: Color(4278190080),
      errorContainer: Color(4294950035),
      onErrorContainer: Color(4278190080),
      background: Color(4279244048),
      onBackground: Color(4292928731),
      surface: Color(4279112980),
      onSurface: Color(4294967295),
      surfaceVariant: Color(4283385145),
      onSurfaceVariant: Color(4294966007),
      outline: Color(4292397240),
      outlineVariant: Color(4292397240),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4292732131),
      inverseOnSurface: Color(4278190080),
      inversePrimary: Color(4278202894),
      primaryFixed: Color(4290639292),
      onPrimaryFixed: Color(4278190080),
      primaryFixedDim: Color(4288862369),
      onPrimaryFixedVariant: Color(4278196997),
      secondaryFixed: Color(4291556269),
      onSecondaryFixed: Color(4278190080),
      secondaryFixedDim: Color(4289779347),
      onSecondaryFixedVariant: Color(4278655744),
      tertiaryFixed: Color(4288739060),
      onTertiaryFixed: Color(4278190080),
      tertiaryFixedDim: Color(4286896599),
      onTertiaryFixedVariant: Color(4278196762),
      surfaceDim: Color(4279112980),
      surfaceBright: Color(4281612858),
      surfaceContainerLowest: Color(4278783759),
      surfaceContainerLow: Color(4279639325),
      surfaceContainer: Color(4279902497),
      surfaceContainerHigh: Color(4280625963),
      surfaceContainerHighest: Color(4281284150),
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
     scaffoldBackgroundColor: colorScheme.background,
     canvasColor: colorScheme.surface,
  );


  List<ExtendedColor> get extendedColors => [
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
      background: background,
      onBackground: onBackground,
      surface: surface,
      onSurface: onSurface,
      surfaceVariant: surfaceVariant,
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
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
