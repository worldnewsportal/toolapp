import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class WallpaperScreen extends StatefulWidget {
  const WallpaperScreen({super.key});

  @override
  State<WallpaperScreen> createState() => _WallpaperScreenState();
}

class _WallpaperScreenState extends State<WallpaperScreen> {
  Color color1 = Colors.blue;
  Color color2 = Colors.purple;
  bool isLinear = true;

  void _pickColor(int colorNum, Color color) {
    setState(() {
      if (colorNum == 1) color1 = color;
      else color2 = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(title: Text(l10n.appTitle)),
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 20, offset: const Offset(0, 10))],
                gradient: isLinear 
                  ? LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight, colors: [color1, color2])
                  : RadialGradient(colors: [color1, color2]),
              ),
              child: const Center(child: Text('Preview', style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold))),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Theme.of(context).cardColor,
                borderRadius: const BorderRadius.vertical(top: Radius.circular(40)),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _colorOption(color1, 1),
                      _colorOption(color2, 2),
                    ],
                  ),
                  const SizedBox(height: 20),
                  SwitchListTile(
                    title: const Text('Linear Gradient'),
                    subtitle: const Text('Toggle between Linear and Radial'),
                    value: isLinear,
                    onChanged: (val) => setState(() => isLinear = val),
                  ),
                  ElevatedButton(
                    onPressed: () {}, 
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 50),
                      backgroundColor: Colors.pinkAccent,
                      foregroundColor: Colors.white,
                    ),
                    child: const Text('Download Wallpaper'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _colorOption(Color color, int num) {
    return Column(
      children: [
        GestureDetector(
          onTap: () => _showColorPicker(num),
          child: Container(
            width: 60, height: 60,
            decoration: BoxDecoration(color: color, shape: BoxShape.circle, border: Border.all(color: Colors.white, width: 4)),
          ),
        ),
        Text('Color $num'),
      ],
    );
  }

  void _showColorPicker(int num) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Pick Color $num'),
        content: Wrap(
          children: [Colors.red, Colors.blue, Colors.green, Colors.yellow, Colors.purple, Colors.orange].map((c) => 
            GestureDetector(
              onTap: () { _pickColor(num, c); Navigator.pop(context); },
              child: Container(width: 40, height: 40, color: c, margin: const EdgeInsets.all(5)),
            )
          ).toList(),
        ),
      ),
    );
  }
}
