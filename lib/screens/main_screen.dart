import 'package:backstreets_widgets/extensions.dart';
import 'package:backstreets_widgets/screens.dart';
import 'package:flutter/material.dart';

import '../src/preset.dart';
import 'presets_screen.dart';

/// The main screen of the application.
class MainScreen extends StatelessWidget {
  /// Create an instance.
  const MainScreen({
    super.key,
  });

  /// Build the widget.
  @override
  Widget build(final BuildContext context) => SimpleScaffold(
        title: 'Presets',
        body: ListView(
          shrinkWrap: true,
          children: [
            ListTile(
              autofocus: true,
              title: const Text('Instance Pot Left Side'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Instant Pot Right Side'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Air Fryer Oven'),
              onTap: () => context.pushWidgetBuilder(
                (final context) => const PresetsScreen(
                  title: 'Instant 13L Gourmet Air Fryer Oven',
                  presets: <Preset>[
                    Preset(
                      name: 'Air Fry',
                      defaultTemp: 205,
                      defaultDuration: Duration(minutes: 18),
                      maxTemp: 205,
                    ),
                    Preset(
                      name: 'Roast',
                      defaultTemp: 193,
                      defaultDuration: Duration(minutes: 40),
                    ),
                    Preset(
                      name: 'Bake',
                      defaultTemp: 185,
                      defaultDuration: Duration(minutes: 30),
                    ),
                    Preset(
                      name: 'Grill',
                      defaultTemp: 205,
                      defaultDuration: Duration(minutes: 8),
                      minTemp: 205,
                      maxDuration: Duration(minutes: 30),
                    ),
                    Preset(
                      name: 'Dehydrate',
                      defaultTemp: 49,
                      defaultDuration: Duration(hours: 7),
                      minDuration: Duration(hours: 1),
                      minTemp: 35,
                      maxDuration: Duration(hours: 72),
                      maxTemp: 79,
                    ),
                    Preset(
                      name: 'Reheat',
                      defaultTemp: 138,
                      defaultDuration: Duration(minutes: 10),
                      minTemp: 49,
                      maxTemp: 182,
                    ),
                    Preset(
                      name: 'Proof',
                      defaultTemp: 32,
                      defaultDuration: Duration(minutes: 30),
                      minDuration: Duration(minutes: 30),
                      minTemp: 32,
                      maxDuration: Duration(minutes: 40),
                      maxTemp: 42,
                    ),
                    Preset(
                      name: 'Toast',
                      defaultTemp: 0,
                      defaultDuration: Duration(minutes: 2, seconds: 50),
                      minTemp: 0,
                      minDuration: Duration(minutes: 3, seconds: 10),
                      maxTemp: 0,
                      maxDuration: Duration(minutes: 3, seconds: 30),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              title: const Text('Washing Machine'),
              onTap: () {},
            ),
          ],
        ),
      );
}
