import 'dart:ui';

extension ColorModifier on Color {
  Color get darkening {
    return withValues(alpha: 1, red: (r * 0.5), blue: (b * 0.5), green: (g * 0.5));
  }

  Color get darker {
    const double reductionFactor = 0.3;
    return Color.fromARGB(
      255,
      (r * (1 - reductionFactor)).round(),
      (g * (1 - reductionFactor)).round(),
      (b * (1 - reductionFactor)).round(),
    );
  }

  Color get lighter {
    const double increaseFactor = 0.3;
    return Color.fromARGB(
      255,
      (r + (255 - r) * increaseFactor).round(),
      (g + (255 - g) * increaseFactor).round(),
      (b + (255 - b) * increaseFactor).round(),
    );
  }
}
