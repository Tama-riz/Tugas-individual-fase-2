import 'package:flutter_test/flutter_test.dart';
import 'package:catatan_harian_app/main.dart';

void main() {
  testWidgets('Aplikasi CatatanKu merender SplashScreen dengan benar', (WidgetTester tester) async {
    // Jalankan aplikasi
    await tester.pumpWidget(const CatatanHarianApp());

    // Verifikasi Splash Screen muncul dengan teks CatatanKu
    expect(find.text('CatatanKu'), findsOneWidget);
    expect(find.text('Aplikasi Catatan Harian Pribadi'), findsOneWidget);
  });
}
