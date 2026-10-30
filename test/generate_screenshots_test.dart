import 'dart:io';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:catatan_harian_app/theme/app_theme.dart';
import 'package:catatan_harian_app/splash_screen.dart';
import 'package:catatan_harian_app/page/login_page.dart';
import 'package:catatan_harian_app/page/home_page.dart';
import 'package:catatan_harian_app/page/add_note_page.dart';
import 'package:catatan_harian_app/page/detail_note_page.dart';
import 'package:catatan_harian_app/data/dummy_notes.dart';

void main() {
  setUpAll(() async {
    GoogleFonts.config.allowRuntimeFetching = false;
    await initializeDateFormatting('id_ID', null);

    // 1. Muat font Material Icons
    final iconFile = File('/mnt/data_D/flutter/bin/cache/artifacts/material_fonts/MaterialIcons-Regular.otf');
    if (iconFile.existsSync()) {
      final iconBytes = iconFile.readAsBytesSync();
      final iconLoader = FontLoader('MaterialIcons');
      iconLoader.addFont(Future.value(ByteData.view(iconBytes.buffer)));
      await iconLoader.load();
    }

    // 2. Muat font teks Poppins
    final fontFile = File('assets/fonts/Poppins-Regular.ttf');
    final boldFile = File('assets/fonts/Poppins-Bold.ttf');
    if (fontFile.existsSync()) {
      final fontBytes = fontFile.readAsBytesSync();
      final poppinsLoader = FontLoader('Poppins');
      poppinsLoader.addFont(Future.value(ByteData.view(fontBytes.buffer)));
      if (boldFile.existsSync()) {
        final boldBytes = boldFile.readAsBytesSync();
        poppinsLoader.addFont(Future.value(ByteData.view(boldBytes.buffer)));
      }
      await poppinsLoader.load();
    }

    // 3. Muat font Noto Color Emoji untuk emoji
    final emojiFile = File('/usr/share/fonts/noto/NotoColorEmoji.ttf');
    if (emojiFile.existsSync()) {
      final emojiBytes = emojiFile.readAsBytesSync();
      final emojiLoader = FontLoader('Noto Color Emoji');
      emojiLoader.addFont(Future.value(ByteData.view(emojiBytes.buffer)));
      await emojiLoader.load();
    }
  });

  Future<void> captureWidget({
    required WidgetTester tester,
    required Widget widget,
    required String fileName,
    Duration settleDuration = const Duration(milliseconds: 500),
  }) async {
    final repaintKey = GlobalKey();

    tester.view.physicalSize = const Size(412 * 2, 892 * 2);
    tester.view.devicePixelRatio = 2.0;

    await tester.pumpWidget(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme.lightTheme,
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('id', 'ID'),
        ],
        home: RepaintBoundary(
          key: repaintKey,
          child: SizedBox(
            width: 412,
            height: 892,
            child: widget,
          ),
        ),
      ),
    );

    await tester.pump(settleDuration);
    await tester.pump(const Duration(milliseconds: 100));

    final boundary = repaintKey.currentContext?.findRenderObject() as RenderRepaintBoundary?;
    if (boundary == null) {
      throw Exception('RenderRepaintBoundary tidak ditemukan');
    }

    await tester.runAsync(() async {
      final image = await boundary.toImage(pixelRatio: 2.0);
      final byteData = await image.toByteData(format: ui.ImageByteFormat.png);
      final pngBytes = byteData!.buffer.asUint8List();

      final dir = Directory('screenshots');
      if (!dir.existsSync()) {
        dir.createSync(recursive: true);
      }

      final file = File('screenshots/$fileName');
      await file.writeAsBytes(pngBytes);
    });
  }

  testWidgets('Generate Screenshot 1 - Splash Screen', (WidgetTester tester) async {
    await captureWidget(
      tester: tester,
      widget: const SplashScreen(autoNavigate: false),
      fileName: '1_splash_screen.png',
      settleDuration: const Duration(milliseconds: 1400),
    );
  });

  testWidgets('Generate Screenshot 2 - Login Screen', (WidgetTester tester) async {
    await captureWidget(
      tester: tester,
      widget: const LoginScreen(),
      fileName: '2_login_screen.png',
    );
  });

  testWidgets('Generate Screenshot 3 - Home Screen', (WidgetTester tester) async {
    await captureWidget(
      tester: tester,
      widget: const HomeScreen(),
      fileName: '3_home_screen.png',
    );
  });

  testWidgets('Generate Screenshot 4 - Add Note Screen', (WidgetTester tester) async {
    await captureWidget(
      tester: tester,
      widget: const AddNoteScreen(),
      fileName: '4_add_note_screen.png',
    );
  });

  testWidgets('Generate Screenshot 5 - Detail Note Screen', (WidgetTester tester) async {
    final notes = getInitialNotes();
    await captureWidget(
      tester: tester,
      widget: DetailNoteScreen(note: notes[0]),
      fileName: '5_detail_note_screen.png',
    );
  });
}
