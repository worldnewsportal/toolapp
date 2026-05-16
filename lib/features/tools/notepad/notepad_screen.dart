import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class NotepadScreen extends StatefulWidget {
  const NotepadScreen({super.key});

  @override
  State<NotepadScreen> createState() => _NotepadScreenState();
}

class _NotepadScreenState extends State<NotepadScreen> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      backgroundColor: const Color(0xFFFFF9C4), // Soft paper color
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(l10n.appTitle),
        actions: [
          IconButton(icon: const Icon(Icons.save), onPressed: () {}),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: TextField(
          controller: _controller,
          maxLines: null,
          style: const TextStyle(fontSize: 20, color: Colors.black87, height: 1.5),
          decoration: const InputDecoration(
            hintText: 'Start typing your thoughts...',
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
