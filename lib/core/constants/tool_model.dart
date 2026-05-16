import 'package:flutter/material.dart';

class ToolModel {
  final String id;
  final String nameEn;
  final String nameAr;
  final String descriptionEn;
  final String descriptionAr;
  final IconData icon;
  final Color color;

  ToolModel({
    required this.id,
    required this.nameEn,
    required this.nameAr,
    required this.descriptionEn,
    required this.descriptionAr,
    required this.icon,
    required this.color,
  });
}

class ToolData {
  static final List<ToolModel> allTools = [
    ToolModel(
      id: 'calculator',
      nameEn: 'Quantum Calculator',
      nameAr: 'الحاسبة الكمية',
      descriptionEn: 'Advanced Scientific & Unit Converter',
      descriptionAr: 'حاسبة علمية متطورة ومحول وحدات',
      icon: Icons.calculate,
      color: Color(0xFF6C63FF),
    ),
    ToolModel(
      id: 'notepad',
      nameEn: 'Zen Notepad',
      nameAr: 'مفكرة زين',
      descriptionEn: 'Minimalist, focused note-taking',
      descriptionAr: 'تدوين ملاحظات بسيط ومركز',
      icon: Icons.edit_note,
      color: Color(0xFF00BFA5),
    ),
    ToolModel(
      id: 'wallpaper',
      nameEn: 'Gradient Creator',
      nameAr: 'صانع التدرجات',
      descriptionEn: 'Beautiful custom wallpaper gradients',
      descriptionAr: 'تدرجات خلفيات مخصصة وجميلة',
      icon: Icons.palette,
      color: Color(0xFFFF6584),
    ),
    ToolModel(
      id: 'converter',
      nameEn: 'Omni Converter',
      nameAr: 'المحول الشامل',
      descriptionEn: 'Unit, Currency, and Data conversion',
      descriptionAr: 'تحويل الوحدات والعملات والبيانات',
      icon: Icons.swap_horiz,
      color: Color(0xFFFFA500),
    ),
    ToolModel(
      id: 'timer',
      nameEn: 'Focus Timer',
      nameAr: 'مؤقت التركيز',
      descriptionEn: 'Pomodoro and Custom Countdown',
      descriptionAr: 'مؤقت بومودورو والعد التنازلي',
      icon: Icons.timer,
      color: Color(0xFF4CAF50),
    ),
    ToolModel(
      id: 'passgen',
      nameEn: 'Shield Pass',
      nameAr: 'درع كلمة السر',
      descriptionEn: 'Secure random password generator',
      descriptionAr: 'مولد كلمات مرور عشوائية وآمنة',
      icon: Icons.lock,
      color: Color(0xFF2196F3),
    ),
    ToolModel(
      id: 'qr',
      nameEn: 'Quick QR',
      nameAr: 'كيو آر السريع',
      descriptionEn: 'Scan and Generate QR codes',
      descriptionAr: 'مسح وإنشاء رموز QR',
      icon: Icons.qr_code_scanner,
      color: Color(0xFF9C27B0),
    ),
    ToolModel(
      id: 'compass',
      nameEn: 'Star Compass',
      nameAr: 'بوصلة النجوم',
      descriptionEn: 'Digital magnetic compass',
      descriptionAr: 'بوصلة مغناطيسية رقمية',
      icon: Icons.explore,
      color: Color(0xFFF44336),
    ),
    ToolModel(
      id: 'level',
      nameEn: 'Precision Level',
      nameAr: 'ميزان الدقة',
      descriptionEn: 'Digital bubble level for surfaces',
      descriptionAr: 'ميزان فقاعي رقمي للأسطح',
      icon: Icons.straighten,
      color: Color(0xFFFFEB3B),
    ),
    ToolModel(
      id: 'noise',
      nameEn: 'White Noise',
      nameAr: 'الضوضاء البيضاء',
      descriptionEn: 'Relaxing sounds for focus and sleep',
      descriptionAr: 'أصوات مريحة للتركيز والنوم',
      icon: Icons.waves,
      color: Color(0xFF00BCD4),
    ),
    ToolModel(
      id: 'bmi',
      nameEn: 'Health Index',
      nameAr: 'مؤشر الصحة',
      descriptionEn: 'BMI and Health metrics calculator',
      descriptionAr: 'حاسبة مؤشر كتلة الجسم والمقاييس الصحية',
      icon: Icons.monitor_weight,
      color: Color(0xFFE91E63),
    ),
    ToolModel(
      id: 'budget',
      nameEn: 'Coin Tracker',
      nameAr: 'متتبع العملات',
      descriptionEn: 'Simple daily expense logger',
      descriptionAr: 'مسجل مصاريف يومي بسيط',
      icon: Icons.account_balance_wallet,
      color: Color(0xFF8BC34A),
    ),
    ToolModel(
      id: 'translator',
      nameEn: 'Lingo Bridge',
      nameAr: 'جسر اللغات',
      descriptionEn: 'Instant phrase translation',
      descriptionAr: 'ترجمة فورية للجمل',
      icon: Icons.translate,
      color: Color(0xFF3F51B5),
    ),
    ToolModel(
      id: 'metronome',
      nameEn: 'Beat Master',
      nameAr: 'سيد الإيقاع',
      descriptionEn: 'Musical metronome for practice',
      descriptionAr: 'مسرع إيقاع موسيقي للتدريب',
      icon: Icons.music_note,
      color: Color(0xFF795548),
    ),
    ToolModel(
      id: 'flash',
      namePEn: 'Bright Light',
      nameAr: 'الضوء الساطع',
      descriptionEn: 'Control flashlight and SOS signals',
      descriptionAr: 'التحكم في الفلاش وإشارات SOS',
      icon: Icons.flashlight_on,
      color: Color(0xFFFFD600),
    ),
  ];
}
