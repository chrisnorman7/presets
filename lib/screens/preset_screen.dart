import 'package:backstreets_widgets/screens.dart';
import 'package:backstreets_widgets/widgets.dart';
import 'package:flutter/material.dart';

import '../src/preset.dart';
import '../widgets/preset_list_tile.dart';

/// A screen to show [preset].
class PresetScreen extends StatelessWidget {
  /// Create an instance.
  const PresetScreen({
    required this.preset,
    super.key,
  });

  /// The preset to show.
  final Preset preset;

  /// Build the widget.
  @override
  Widget build(final BuildContext context) => Cancel(
        child: SimpleScaffold(
          title: preset.name,
          body: ListView(
            shrinkWrap: true,
            children: [
              PresetListTile(
                title: 'Default',
                temperature: preset.defaultTemp,
                duration: preset.defaultDuration,
                autofocus: true,
              ),
              PresetListTile(
                title: 'Min',
                temperature: preset.minTemp,
                duration: preset.minDuration,
              ),
              PresetListTile(
                title: 'Max',
                temperature: preset.maxTemp,
                duration: preset.maxDuration,
              ),
            ],
          ),
        ),
      );
}
