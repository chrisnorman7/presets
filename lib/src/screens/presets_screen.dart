import 'package:backstreets_widgets/extensions.dart';
import 'package:backstreets_widgets/screens.dart';
import 'package:backstreets_widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:presets/presets.dart';

void _doNothing() {}

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
              final minDuration = printDuration(preset.minDuration);
              final maxDuration = printDuration(preset.maxDuration);
              return Semantics(
                customSemanticsActions: {
                  CustomSemanticsAction(
                    label:
                        'Default: $defaultDuration at ${preset.defaultTemp} °',
                  ): _doNothing,
                  CustomSemanticsAction(
                    label: 'Min: $minDuration at ${preset.minTemp} °',
                  ): _doNothing,
                  CustomSemanticsAction(
                    label: 'Max: $maxDuration at ${preset.maxTemp} °',
                  ): _doNothing,
                },
                child: ListTile(
                  autofocus: index == 0,
                  title: Text(preset.name),
                  subtitle: Text(
                    '$defaultDuration at ${preset.defaultTemp} °',
                  ),
                  onTap: () => context.pushWidgetBuilder(
                    (final builderContext) => PresetScreen(preset: preset),
                  ),
                ),
              );
            },
            itemCount: presets.length,
            shrinkWrap: true,
          ),
        ),
      );
}
