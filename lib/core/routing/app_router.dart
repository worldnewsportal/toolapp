import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../features/home/home_screen.dart';
import '../../features/tools/calculator/calculator_screen.dart';
import '../../features/tools/notepad/notepad_screen.dart';
import '../../features/tools/wallpaper/wallpaper_screen.dart';
import '../../features/tools/generic_tool_screen.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: '/tool/:toolId',
        builder: (context, state) {
          final toolId = state.pathParameters['toolId']!;
          switch (toolId) {
            case 'calculator': return const CalculatorScreen();
            case 'notepad': return const NotepadScreen();
            case 'wallpaper': return const WallpaperScreen();
            default: return GenericToolScreen(toolId: toolId);
          }
        },
      ),
    ],
  );
}
