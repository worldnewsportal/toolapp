import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../core/constants/tool_model.dart';

class GenericToolScreen extends StatelessWidget {
  final String toolId;
  const GenericToolScreen({super.key, required this.toolId});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final tool = ToolData.allTools.firstWhere((t) => t.id == toolId);

    return Scaffold(
      appBar: AppBar(
        title: Text(tool.nameEn), // Simplification for the generic screen
        backgroundColor: tool.color,
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [tool.color, tool.color.withOpacity(0.3)],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(tool.icon, size: 100, color: Colors.white),
            const SizedBox(height: 20),
            Text(
              'Coming Soon!',
              style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            const SizedBox(height: 10),
            Text(
              'We are crafting this tool to be powerful and beautiful.',
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 18, color: Colors.white70),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Back to Hub'),
            ),
          ],
        ),
      ),
    );
  }
}
