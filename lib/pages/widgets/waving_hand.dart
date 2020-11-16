import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rive/rive.dart';

class WavingHand extends StatefulWidget {
  @override
  _WavingHandState createState() => _WavingHandState();
}

class _WavingHandState extends State<WavingHand> {
  final riveFileName = 'assets/waving_hand.riv';
  Artboard _artboard;

  @override
  void initState() {
    _loadRiveFile();
    super.initState();
  }

  // loads a Rive file
  void _loadRiveFile() async {
    final bytes = await rootBundle.load(riveFileName);
    final file = RiveFile();

    if (file.import(bytes)) {
      // Select an animation by its name
      setState(() => _artboard = file.mainArtboard
        ..addController(
          SimpleAnimation('wave'),
        ));
    }
  }

  /// Show the rive file, when loaded
  @override
  Widget build(BuildContext context) {
    return _artboard != null
        ? Rive(
            artboard: _artboard,
            fit: BoxFit.contain,
          )
        : Container();
  }
}
