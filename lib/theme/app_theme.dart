import 'package:flutter/material.dart';

/// Tema warna dan gaya visual aplikasi CatatanKu (Modern Indigo Violet)
class AppColors {
  // Warna Utama (Indigo Violet)
  static const Color primary = Color(0xFF4F46E5);
  static const Color primaryLight = Color(0xFF6366F1);
  static const Color primaryDark = Color(0xFF3730A3);
  static const Color primarySoft = Color(0xFFEEF2FF);

  // Gradien Utama
  static const LinearGradient primaryGradient = LinearGradient(
    colors: [Color(0xFF4F46E5), Color(0xFF7C3AED)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient bannerGradient = LinearGradient(
    colors: [Color(0xFF4F46E5), Color(0xFF6366F1)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  // Warna Aksen
  static const Color accentAmber = Color(0xFFF59E0B);
  static const Color accentTeal = Color(0xFF14B8A6);
  static const Color accentRose = Color(0xFFF43F5E);
  static const Color accentCyan = Color(0xFF06B6D4);
  static const Color accentEmerald = Color(0xFF10B981);

  // Background & Surface
  static const Color background = Color(0xFFF8FAFC);
  static const Color surface = Color(0xFFFFFFFF);
  static const Color cardBorder = Color(0xFFE2E8F0);

  // Warna Teks
  static const Color textPrimary = Color(0xFF1E293B);
  static const Color textSecondary = Color(0xFF64748B);
  static const Color textMuted = Color(0xFF94A3B8);

  // Status Colors
  static const Color success = Color(0xFF10B981);
  static const Color danger = Color(0xFFEF4444);
  static const Color warning = Color(0xFFF59E0B);

  /// Helper untuk warna background, border, dan teks kategori
  static Map<String, Color> getCategoryColor(String category) {
    switch (category) {
      case 'Pekerjaan':
        return {
          'bg': const Color(0xFFEFF6FF),
          'text': const Color(0xFF1D4ED8),
          'border': const Color(0xFFBFDBFE),
        };
      case 'Ide Kreatif':
        return {
          'bg': const Color(0xFFFEF3C7),
          'text': const Color(0xFFD97706),
          'border': const Color(0xFFFDE68A),
        };
      case 'Harian':
        return {
          'bg': const Color(0xFFFCE7F3),
          'text': const Color(0xFFBE185D),
          'border': const Color(0xFFFBCFE8),
        };
      case 'Refleksi':
        return {
          'bg': const Color(0xFFECFDF5),
          'text': const Color(0xFF047857),
          'border': const Color(0xFFA7F3D0),
        };
      case 'Pribadi':
      default:
        return {
          'bg': const Color(0xFFF3E8FF),
          'text': const Color(0xFF7E22CE),
          'border': const Color(0xFFE9D5FF),
        };
    }
  }
}

/// Definisi ThemeData aplikasi CatatanKu
class AppTheme {
  static const List<String> fontFallbacks = [
    'Noto Color Emoji',
    'Roboto',
    'sans-serif',
  ];

  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: AppColors.background,
      fontFamily: 'Poppins',
      fontFamilyFallback: fontFallbacks,
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.primary,
        primary: AppColors.primary,
        secondary: AppColors.primaryLight,
        surface: AppColors.surface,
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(color: AppColors.textPrimary),
        titleTextStyle: TextStyle(
          fontFamily: 'Poppins',
          fontFamilyFallback: fontFallbacks,
          color: AppColors.textPrimary,
          fontSize: 18,
          fontWeight: FontWeight.w700,
        ),
      ),
      cardTheme: CardThemeData(
        color: AppColors.surface,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
          side: const BorderSide(color: AppColors.cardBorder, width: 1.2),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Colors.white,
        contentPadding: const EdgeInsets.symmetric(horizontal: 18, vertical: 15),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(color: AppColors.cardBorder),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(color: AppColors.cardBorder, width: 1.2),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(color: AppColors.primary, width: 2),
        ),
        hintStyle: const TextStyle(
          fontFamily: 'Poppins',
          fontFamilyFallback: fontFallbacks,
          color: AppColors.textMuted,
          fontSize: 14,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          foregroundColor: Colors.white,
          elevation: 0,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
          textStyle: const TextStyle(
            fontFamily: 'Poppins',
            fontFamilyFallback: fontFallbacks,
            fontSize: 15,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
