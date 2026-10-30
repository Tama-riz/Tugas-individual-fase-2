# CatatanKu - Aplikasi Catatan Harian (Flutter Mobile UI)

Proyek aplikasi mobile menggunakan **Flutter (Dart)** dengan tema **Catatan Harian (CatatanKu)**, dirancang sesuai seluruh ketentuan dan kriteria penilaian tugas.

---

## 📱 Ringkasan 5 Halaman Aplikasi yang Telah Dibuat

| No | Halaman | File Sumber | Fitur & Komponen |
|:---:|:---|:---|:---|
| 1 | **Splash Screen** | `lib/splash_screen.dart` | Logo aplikasi modern bergradien, nama aplikasi **CatatanKu**, tagline inspiratif, subtitle pill badge, animasi skala & fade halus, serta transisi otomatis/manual ke halaman Login (terletak langsung di root folder `lib/`). |
| 2 | **Login Statis** | `lib/page/login_page.dart` | Desain antarmuka login bersih tanpa autentikasi, field input email & password (toggle tampil/sembunyi password), opsi *Ingat Saya*, tautan *Lupa Sandi*, tombol masuk utama bergradien, serta tombol alternatif (Google & Apple ID). |
| 3 | **Beranda (Daftar Catatan)** | `lib/page/home_page.dart` | Header salam pengguna & avatar interaktif, kartu banner inspiratif harian, kolom pencarian real-time, filter kategori horizontal lengkap dengan filter cepat Favorit (⭐) dan badge counter dinamis, list kartu catatan interaktif (bookmark bintang, hapus dengan konfirmasi), tombol FAB **Catat Baru**, serta **Bottom Navigation Bar** ringkas (Beranda, Kategori, dan Profil). |
| 4 | **Tambah Catatan (Form Input)** | `lib/page/add_note_page.dart` | Formulir input terstruktur: Judul catatan, pilihan kategori (Chips), pemilih suasana hati / mood (Emoji interaktif), pemilih tanggal (Date Picker), multiline area isi catatan, serta tombol simpan dengan validasi. |
| 5 | **Detail Catatan** | `lib/page/detail_note_page.dart` | Tampilan lengkap catatan terpilih: badge kategori warna & mood, tanggal dan jam pembuatan, judul elegan, teks isi catatan dengan tipografi editorial yang nyaman dibaca, ringkasan statistik (jumlah kata/karakter), dan tombol aksi. |

---

## 📊 Pemenuhan Kriteria Penilaian Tugas

### 1. Kelengkapan Halaman dan Fitur UI (Bobot: 40%)
- Tepat **5 halaman utama** dibuat sesuai dengan spesifikasi tugas.
- Seluruh elemen form input, pemilihan kategori, pemilihan mood, tanggal interaktif, card list, tombol aksi, dialog konfirmasi hapus, hingga notifikasi SnackBar berfungsi secara dinamis.

### 2. Kreativitas dan Kerapian Desain (Bobot: 30%)
- Palet warna modern berkarakter: **Indigo Violet** (`#4F46E5`) dipadukan aksen Teal, Amber, Rose, dan Cyan.
- Visual hierarchy yang kuat, sudut membulat modern (*rounded corners 14-20px*), bayangan halus (*subtle elevation*), dan kontras warna yang nyaman di mata.
- Tipografi menggunakan font keluarga **Poppins** yang bersih dan profesional.

### 3. Konsistensi Tampilan dan Navigasi (Bobot: 20%)
- Pengaturan tema terpusat di `lib/theme/app_theme.dart` (`ThemeData`, `AppColors`, `CardThemeData`, `InputDecorationTheme`, `ElevatedButtonThemeData`).
- Alur navigasi mulus dan konsisten:
  `Splash Screen` ➔ `Login Screen` ➔ `Beranda` ⇄ `Tambah Catatan` / `Detail Catatan`.

### 4. Kerapian Kode (Bobot: 10%)
- Struktur direktori modular dan bersih:
  ```
  lib/
  ├── main.dart
  ├── splash_screen.dart
  ├── models/
  │   └── note_model.dart
  ├── theme/
  │   └── app_theme.dart
  ├── data/
  │   └── dummy_notes.dart
  ├── page/
  │   ├── login_page.dart
  │   ├── home_page.dart
  │   ├── add_note_page.dart
  │   └── detail_note_page.dart
  └── widgets/
      ├── note_card.dart
      └── custom_text_field.dart
  ```
- Menerapkan *clean code*, *null safety*, widget reusable terpisah, dan bebas dari *warning/error* (`flutter analyze` lolos 100%).

---

## 📸 Tangkapan Layar Aplikasi (Screenshots)

Semua tangkapan layar telah digenerate dalam resolusi mobile standar dan tersimpan di folder `screenshots/`:
1. `screenshots/1_splash_screen.png` — Tampilan Splash Screen
2. `screenshots/2_login_screen.png` — Tampilan Login Statis
3. `screenshots/3_home_screen.png` — Tampilan Beranda & Daftar Catatan
4. `screenshots/4_add_note_screen.png` — Tampilan Form Tambah Catatan
5. `screenshots/5_detail_note_screen.png` — Tampilan Halaman Detail Catatan

---

## 🚀 Cara Menjalankan Proyek Secara Lokal

1. **Unduh dependencies:**
   ```bash
   flutter pub get
   ```

2. **Jalankan analisis kode:**
   ```bash
   flutter analyze
   ```

3. **Jalankan unit & screenshot tests:**
   ```bash
   flutter test
   ```

4. **Jalankan aplikasi di perangkat / emulator / Chrome:**
   ```bash
   flutter run
   ```
