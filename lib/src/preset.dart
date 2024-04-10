/// A single preset.
class Preset {
  /// Create an instance.
  const Preset({
    required this.name,
    required this.defaultTemp,
    required this.defaultDuration,
    this.minDuration = const Duration(minutes: 1),
    this.minTemp = 82,
    this.maxDuration = const Duration(hours: 1),
    this.maxTemp = 204,
  });

  /// The name of this preset.
  final String name;

  /// The default temperature.
  final int defaultTemp;

  /// The default duration.
  final Duration defaultDuration;

  /// The minimum temperature.
  final int minTemp;

  /// The minimum duration.
  final Duration minDuration;

  /// The maximum temperature.
  final int maxTemp;

  /// The maximum duration.
  final Duration maxDuration;
}
