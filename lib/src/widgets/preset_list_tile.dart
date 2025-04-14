import 'package:backstreets_widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:presets/src/constants.dart';

/// A [ListView] which shows [temperature] and [duration].
class PresetListTile extends StatelessWidget {
  /// Create an instance.
  const PresetListTile({
    required this.title,
    required this.temperature,
    required this.duration,
    this.autofocus = false,
    super.key,
  });

  /// The title of the [ListTile].
  final String title;

  /// The temperature to show.
  final int temperature;

  /// The duration to show.
  final Duration duration;

  /// Whether the [ListTile] should be autofocused.
  final bool autofocus;

  /// Build the widget.
  @override
  Widget build(final BuildContext context) {
    final durationString = printDuration(duration);
    return CopyListTile(
      title: title,
      subtitle: '$temperature ° for $durationString',
      autofocus: autofocus,
    );
  }
}
