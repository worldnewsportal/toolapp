import 'package:flutter/material.dart';
import 'package:unity_ads_plugin/unity_ads_plugin.dart';

class UnityAdsService with ChangeNotifier {
  static const String androidGameId = '6043973';
  static const String iosGameId = '6043973';
  
  bool _isInitialized = false;
  bool get isInitialized => _isInitialized;

  Future<void> initialize() async {
    try {
      // Note: unity_ads_plugin initialization may vary by version.
      // This is a generalized implementation.
      await UnityAds.init(
        gameId: androidGameId, // Defaulting to Android as requested
        testMode: true, // Set to false for production
      );
      _isInitialized = true;
      notifyListeners();
      print("Unity Ads Initialized Successfully");
    } catch (e) {
      print("Unity Ads Initialization Failed: $e");
    }
  }

  void showInterstitialAd(String placementId) {
    if (!_isInitialized) return;
    UnityAds.showInterstitial(placementId);
  }

  void showRewardedAd(String placementId) {
    if (!_isInitialized) return;
    UnityAds.showRewarded(placementId);
  }

  // Note: Banner ads usually require a specific Widget provided by the plugin
}
