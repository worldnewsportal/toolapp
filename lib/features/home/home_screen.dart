import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';
import '../../core/theme/theme_service.dart';
import '../../core/constants/tool_model.dart';
import '../../core/services/unity_ads_service.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final themeService = Provider.of<ThemeService>(context);
    final adsService = Provider.of<UnityAdsService>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.appTitle),
        actions: [
          IconButton(
            icon: Icon(themeService.isDarkMode ? Icons.light_mode : Icons.dark_mode),
            onPressed: () => themeService.toggleTheme(),
          ),
          IconButton(
            icon: const Icon(Icons.language),
            onPressed: () {
              // Language toggle logic will go here
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              l10n.toolDescription,
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: 1.1,
                ),
                itemCount: ToolData.allTools.length,
                itemBuilder: (context, index) {
                  final tool = ToolData.allTools[index];
                  return ToolCard(tool: tool, adsService: adsService);
                },
              ),
            ),
            const SizedBox(height: 10),
            // Unity Banner Ad Placeholder
            Container(
              width: double.infinity,
              height: 50,
              color: Colors.grey.withOpacity(0.2),
              child: const Center(child: Text('Unity Banner Ad')),
            ),
          ],
        ),
      ),
    );
  }
}

class ToolCard extends StatelessWidget {
  final ToolModel tool;
  final UnityAdsService adsService;
  const ToolCard({super.key, required this.tool, required this.adsService});

  @override
  Widget build(BuildContext context) {
    final isAr = Localizations.localeOf(context).languageCode == 'ar';

    return GestureDetector(
      onTap: () {
        // Show interstitial ad occasionally when opening a tool
        if (tool.id == 'calculator') {
            adsService.showInterstitialAd('Interstitial_Android');
        }
        context.go('/tool/${tool.id}');
      },
      child: Card(
        color: tool.color.withOpacity(0.2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: BorderSide(color: tool.color, width: 2),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(tool.icon, size: 40, color: tool.color),
            const SizedBox(height: 10),
            Text(
              isAr ? tool.nameAr : tool.nameEn,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: tool.color,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
