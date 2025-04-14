import 'package:backstreets_widgets/extensions.dart';
import 'package:backstreets_widgets/screens.dart';
import 'package:flutter/material.dart';
import 'package:presets/src/preset.dart';
import 'package:presets/src/screens/presets_screen.dart';
import 'package:presets/src/widgets/presets_list_tile.dart';

/// The main screen of the application.
class MainScreen extends StatelessWidget {
  /// Create an instance.
  const MainScreen({
    super.key,
  });

  /// Build the widget.
  @override
  Widget build(final BuildContext context) {
    const washingMachinePresets = [
      'Off',
      'Cotton 20',
      'Cotton 40',
      'Eco 40-60',
      'Cotton 60',
      'Cotton 60 (with pre-wash)',
      'Cotton 90',
      'Rinse',
      'Spin and drain',
      'Drum clean',
      'Down wear 40',
      'Synthetics 20',
      'synthetics 40',
      'Hand wash 40',
      'Shirts 40',
      'Quick 30',
    ];
    const dryerPresets = [
      'Mixed',
      'Eco',
      'Cotton',
      'Synthetics',
      'Wool',
      'Silk',
      'Anti allergy',
      'Cuddly toys',
      'Pre iron',
      'Refresh',
      'Duvet',
      'Bed and bath',
      'Baby',
      'Jeans',
      'Shirts',
    ];
    return SimpleScaffold(
      title: 'Presets',
      body: ListView(
        shrinkWrap: true,
        children: [
          ListTile(
            autofocus: true,
            title: const Text('Instant Pot Left Side'),
            onTap: () => context.pushWidgetBuilder(
              (final context) => const PresetsScreen(
                presets: <Preset>[
                  Preset(
                    name: '1 Pressure cook [CK]',
                    defaultTemp: 0,
                    defaultDuration: Duration(minutes: 10),
                    minDuration: Duration.zero,
                    minTemp: 0,
                    maxDuration: Duration(hours: 4),
                    maxTemp: 0,
                  ),
                  Preset(
                    name: '2 Sauté [P]',
                    defaultTemp: 0,
                    defaultDuration: Duration(minutes: 30),
                    minTemp: 0,
                    maxTemp: 0,
                  ),
                  Preset(
                    name: '3 Steam [CK]',
                    defaultTemp: 0,
                    defaultDuration: Duration(minutes: 10),
                    minTemp: 0,
                    minDuration: Duration.zero,
                    maxTemp: 0,
                  ),
                  Preset(
                    name: '4 Slow cook [CK]',
                    defaultTemp: 1,
                    defaultDuration: Duration(hours: 4),
                    minDuration: Duration(minutes: 30),
                    minTemp: -1,
                    maxDuration: Duration(hours: 24),
                    maxTemp: 1,
                  ),
                  Preset(
                    name: '5 Sous vide [CP]',
                    defaultTemp: 56,
                    defaultDuration: Duration(hours: 3),
                    minTemp: 25,
                    minDuration: Duration(minutes: 30),
                    maxTemp: 90,
                    maxDuration: Duration(hours: 99, minutes: 30),
                  ),
                  Preset(
                    name: '6 Yoghurt [C] (Pasteurising :30 minutes)',
                    defaultTemp: 0,
                    defaultDuration: Duration(hours: 8),
                    minTemp: 0,
                    minDuration: Duration(hours: 6),
                    maxTemp: 0,
                    maxDuration: Duration(hours: 24),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            title: const Text('Instant Pod Middle'),
            onTap: () => context.pushWidgetBuilder(
              (final context) => const PresetsScreen(
                presets: [
                  Preset(
                    name: 'Keep Warm [C]',
                    defaultTemp: -1,
                    defaultDuration: Duration(hours: 10),
                    minTemp: 62,
                    minDuration: Duration(minutes: 10),
                    maxTemp: 77,
                    maxDuration: Duration(hours: 10),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            title: const Text('Instant Pot Right Side'),
            onTap: () => context.pushWidgetBuilder(
              (final context) => const PresetsScreen(
                presets: <Preset>[
                  Preset(
                    name: '1 Air fry [FPT]',
                    defaultTemp: 204,
                    defaultDuration: Duration(minutes: 20),
                  ),
                  Preset(
                    name: '2 Roast [FP]',
                    defaultTemp: 193,
                    defaultDuration: Duration(minutes: 40),
                  ),
                  Preset(
                    name: '3 Grill',
                    defaultTemp: 204,
                    defaultDuration: Duration(minutes: 6),
                    minTemp: 204,
                    maxDuration: Duration(minutes: 40),
                  ),
                  Preset(
                    name: '4 Bake [P]',
                    defaultTemp: 185,
                    defaultDuration: Duration(minutes: 30),
                  ),
                  Preset(
                    name: '5 Dehydrate [F]',
                    defaultTemp: 51,
                    defaultDuration: Duration(hours: 7),
                    minTemp: 40,
                    minDuration: Duration(hours: 1),
                    maxTemp: 73,
                    maxDuration: Duration(hours: 72),
                  ),
                  Preset(
                    name: '6 Proofing [F]',
                    defaultTemp: 25,
                    defaultDuration: Duration(hours: 1),
                    minTemp: 23,
                    minDuration: Duration(minutes: 30),
                    maxTemp: 35,
                    maxDuration: Duration(hours: 3),
                  ),
                ],
              ),
            ),
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
                    name: 'Reheat',
                    defaultTemp: 138,
                    defaultDuration: Duration(minutes: 10),
                    minTemp: 49,
                    maxTemp: 182,
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
                    name: 'Dehydrate',
                    defaultTemp: 49,
                    defaultDuration: Duration(hours: 7),
                    minDuration: Duration(hours: 1),
                    minTemp: 35,
                    maxDuration: Duration(hours: 72),
                    maxTemp: 79,
                  ),
                ],
              ),
            ),
          ),
          const PresetsListTile(
            title: 'Washing Machine',
            presets: washingMachinePresets,
          ),
          const PresetsListTile(title: 'Tumble Dryer', presets: dryerPresets),
        ],
      ),
    );
  }
}
