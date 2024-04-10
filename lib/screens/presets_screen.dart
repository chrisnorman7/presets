import 'package:backstreets_widgets/extensions.dart';
import 'package:backstreets_widgets/screens.dart';
import 'package:backstreets_widgets/widgets.dart';
import 'package:flutter/material.dart';

import '../src/constants.dart';
import '../src/preset.dart';
import 'preset_screen.dart';

/// A screen which shows [presets].
class PresetsScreen extends StatelessWidget {
  /// Create an instance.
  const PresetsScreen({
    required this.presets,
    this.title = 'Presets',
    super.key,
  });

  /// The title of this widget.
  final String title;

  /// The presets to show.
  final List<Preset> presets;

  /// Build the widget.
  @override
  Widget build(final BuildContext context) => Cancel(
        child: SimpleScaffold(
          title: title,
          body: ListView.builder(
            itemBuilder: (final context, final index) {
              final preset = presets[index];
              final defaultDuration = printDuration(preset.defaultDuration);
              return ListTile(
                autofocus: index == 0,
                title: Text(preset.name),
                subtitle: Text(
                  '$defaultDuration at ${preset.defaultTemp} °',
                ),
                onTap: () => context.pushWidgetBuilder(
                  (final builderContext) => PresetScreen(preset: preset),
                ),
              );
            },
            itemCount: presets.length,
            shrinkWrap: true,
          ),
        ),
      );
}
